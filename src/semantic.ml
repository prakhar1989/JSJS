open Ast
open Lexing
open Parsing
open Exceptions
open Stringify

module NameMap = Map.Make(String);;
module GenericMap = Map.Make(Char);;
module ModuleMap = Map.Make(String);;

type typesTable = Ast.primitiveType NameMap.t;;
type typeEnv = typesTable * typesTable;;

let build_map (formals: (string * primitiveType) list) =
  List.fold_left
    (fun acc_map (id, t) -> NameMap.add id t acc_map)
    (NameMap.empty) formals
;;

(* Resolves generic types at function call
   1. Checks whether all generic types have been defined
   2. Associates concrete types with generic types
   3. Raises exception for inconsistent generic type resolution
   4. Raises exception for generic function arguments
   5. Cannot declare nested generic functions

Fancy way of saying: Rank-1 Polymorphism \o/ *)
let rec resolve map ft at =
  match ft with
  | T(c) -> if GenericMap.mem c map
    then (match GenericMap.find c map with
        | TAny -> GenericMap.add c at map
        | t -> if t = at then map else raise (MismatchedTypes(t, at)))
    else raise (UndefinedType(c))
  | TFun(formals_types, ret_type) -> (match at with
      | TFun(actual_types, actual_return_type) ->
        let l1 = List.length formals_types and l2 = List.length actual_types in
        if l1 <> l2 then raise (MismatchedArgCount(l1, l2)) else
          List.fold_left2 resolve map (ret_type :: formals_types) (actual_return_type :: actual_types)
      | TFunGeneric(x, y) -> raise (InvalidArgumentType(TFunGeneric(x, y)))
      | _ -> raise (MismatchedTypes(ft, at)))
  | TFunGeneric(x, y) -> raise (InvalidArgumentType(TFunGeneric(x, y)))
  | TList(t) -> (match at with
      | TList(a) -> resolve map t a
      | _ -> raise (MismatchedTypes(ft, at)))
  | TMap(kt, vt) -> (match at with
      | TMap(akt, avt) -> let map = resolve map kt akt in
        resolve map vt avt
      | _ -> raise (MismatchedTypes(ft, at)))
  | TNum | TString | TBool | TUnit -> if ft = at then map else raise (MismatchedTypes(ft, at))
  | TAny -> raise (InvalidArgumentType(TAny)) 
;;

let rec is_generic_type = function
  | TString | TNum | TBool | TUnit | TAny | TFun(_) -> false
  | T(_) -> true
  | TList(t) -> is_generic_type t
  | TMap(kt, vt) -> is_generic_type kt || is_generic_type vt
  | TFunGeneric(_) -> true
;;

(* TODO: add documentation for this *)
let rec generate_ret_types map = function
  | T(c) -> if GenericMap.mem c map
    then (GenericMap.find c map)
    else raise (UndefinedType(c))
  | TFun(formals_types, ret_type) ->
    let ftypes = List.map (generate_ret_types map) (ret_type :: formals_types) in
    TFun(List.tl ftypes, List.hd ftypes)
  | TList(t) -> TList(generate_ret_types map t)
  | TMap(kt, vt) ->
    let keytypes = generate_ret_types map kt
    and valuetypes = generate_ret_types map vt in
    TMap(keytypes, valuetypes)
  | TFunGeneric(x, y) -> raise (InvalidArgumentType(TFunGeneric(x,y)))
  | t -> t
;;

(* checks if two types are equal and returns an option type *)
let rec validate_types type1 type2 : (Ast.primitiveType option) =
  match (type1, type2) with
  | TList(t1), TList(t2) ->
    (match (validate_types t1 t2) with
    | Some(t) -> Some(TList(t))
    | None -> None)
  | TMap(k1, v1), TMap(k2, v2) ->
    (match validate_types k1 k2 with
     | Some(k) -> (match validate_types v1 v2 with
        | Some(v) -> Some(TMap(k, v))
        | None -> None)
     | None -> None)
  | t1, t2 when t1 = t2 -> Some(t2)
  | TAny, t | t, TAny -> Some(t)
  | t1, t2 -> None
;;

let modules = Lib.modules;;

let rec type_of_expr (env: typeEnv) = function
  | UnitLit -> TUnit, env
  | NumLit(_) -> TNum, env
  | BoolLit(_) -> TBool, env
  | StrLit(_) -> TString, env

  | Binop(e1, op, e2) ->
    let t1, _ = type_of_expr env e1 and t2, _ = type_of_expr env e2 in
    (* for the cons operator, check if the element being added
       has the same type as the rest of the list. In case the list
       is of type TAny, just emit the type of element *)
    if op = Cons
    then (match t1, t2 with
        | x, TList(y) ->
          (match validate_types x y with
           | Some(t) -> TList(t), env
           | None -> raise (MismatchedOperandTypes(op, t1, t2)))
        | _, _ -> raise (MismatchedOperandTypes(op, t1, t2)))
    else if t1 <> t2 then raise (MismatchedOperandTypes (op, t1, t2))
    else begin
      match op with
      | Caret -> if t1 = TString then TString, env
        else raise (InvalidOperation(t1, Caret))
      | And | Or -> if t1 = TBool then TBool, env
        else raise (InvalidOperation(t1, op))
      | Add | Sub | Mul
      | Div | Mod -> if t1 = TNum then TNum, env
        else raise (InvalidOperation(t1, op))
      | Lte | Gte | Neq
      | Equals | Lt | Gt -> TBool, env
      | _ -> raise (InvalidOperation(t1, op))
    end

  | Unop(op, e) -> begin
      let t, _ = type_of_expr env e in
      match (op, t) with
      | Not, TBool -> TBool, env
      | Neg, TNum -> TNum, env
      | _, _ -> raise (InvalidOperation(t, op))
    end

  | ListLit(es) -> begin
      let ts = List.map
          (fun x -> let t, _ = type_of_expr env x in t)
          es
      in
      if List.length ts = 0 then TList(TAny), env
      else let list_type = List.fold_left
          (fun acc t -> if acc = t then acc
            else raise (NonUniformTypeContainer(acc, t)))
          (List.hd ts) (List.tl ts)
        in
        TList(list_type), env
    end

  | Block(es) -> begin
      let locals, globals = env in
      let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
          | Some k1, Some k2 -> Some k1
          | None, k2 -> k2
          | k1, None -> k1)
          locals globals in
      let env = NameMap.empty, merged_globals in
      match es with
      | [] -> TAny, env (* unreachable state since {} is a maplit and not a block *)
      | Assign(id, _, _) :: [] -> raise (InvalidReturnExpression(id))
      | x :: [] -> type_of_expr env x
      | x :: xs -> (* two or more expressions *)
        (match List.rev(xs) with
         | [] -> raise (failwith("unreachable state reached"))
         | Assign(id, _, _) :: _ -> raise (InvalidReturnExpression(id))
         | _ -> List.fold_left
                  (fun (t, acc_env) e ->
                     let newt, newenv = type_of_expr acc_env e in
                     (newt, newenv))
                  (type_of_expr env x) xs)
    end

  | If(p, e1, e2) -> begin
      let pt, _ = type_of_expr env p in
      if pt <> TBool then raise (MismatchedTypes(TBool, pt))
      else
        let t1, _ = type_of_expr env e1 and t2, _ = type_of_expr env e2 in
        (match validate_types t1 t2 with
         | Some(t) -> t, env
         | None -> raise (MismatchedTypes(t1, t2)))
    end

  | MapLit(kvpairs) -> begin
      match kvpairs with
      | [] -> TMap(TAny, TAny), env
      | (key, value) :: xs ->
        (* we find the type of key by folding over
           all k-v pairs by taking the type of first
           k-v pair as reference *)

        (* figuring out the type of key *)
        let start_key_type, _ = type_of_expr env key in
        let key_type = List.fold_left (fun acc (k, _) ->
            let t, _ = type_of_expr env k in
            match validate_types t acc with
            | Some(resolved_type) -> resolved_type
            | None -> raise (MismatchedTypes(acc, t)))
            start_key_type xs
        in
        let _ = match key_type with
          | TNum | TBool | TString -> ()
          | _ -> raise (InvalidKeyType(key_type))
        in
        (* figuring out the type of value *)
        let start_value_type, _ = type_of_expr env value in
        let value_type = List.fold_left (fun acc (_, v) ->
            let t, _ = type_of_expr env v in
            match validate_types t acc with
            | Some(resolved_type) -> resolved_type
            | None -> raise (MismatchedTypes(acc, t)))
            start_value_type xs
        in
        TMap(key_type, value_type), env
    end

  | Assign(id, annotated_type, e) -> begin
      (* 1. Get the type of expression
         2. Check if it matches with t
         3. Update locals if all is well.  *)
      let locals, globals = env in
      if NameMap.mem id locals then raise (AlreadyDefined(id))
      else
        match e with
        | Assign(s, _, _) -> raise (InvalidReturnExpression(s))

        (* In case of function literals, to get the type of expression
           we need to populate the local scope with the types of the
           formals arguments so that the body can be correctly typechecked *)
        | FunLit(fdecl) ->
          let formaltypes = List.map (fun (_, x) -> x) fdecl.formals in
          let functype = if fdecl.is_generic
            then TFunGeneric((formaltypes, fdecl.return_type), fdecl.generic_types)
            else TFun(formaltypes, fdecl.return_type)
          in
          (* check if the annotated type is same as what computed *)
          let val_type = (match validate_types annotated_type functype with
            | Some(t) -> t
            | None -> raise (MismatchedTypes(annotated_type, functype))) in
          (* update the locals environment with the new value *)
          let locals = (NameMap.add id val_type locals) in
          let etype, _ = type_of_expr (locals, globals) e  in
          if etype = functype
          then TUnit, (locals, globals)
          else raise (MismatchedTypes(functype, etype))

        (* For every other kind of expression, simply determine its type
           and check if it same as the annotated type (if any). *)
        | _ ->
          let etype, _ = type_of_expr env e in
          (* check if the annotated type is same as what computed *)
          let val_type = (match validate_types annotated_type etype with
            | Some(t) -> t
            | None -> raise (MismatchedTypes(annotated_type, etype))) in
          (* update the locals environment with the new value *)
          let locals = (NameMap.add id val_type locals) in
          TUnit, (locals, globals)
    end

  | Val(s) -> begin
      let locals, globals = env in
      if NameMap.mem s locals
      then NameMap.find s locals, env
      else if NameMap.mem s globals
      then NameMap.find s globals, env
      else raise (Undefined(s))
    end

  | FunLit(fdecl) -> begin
      if fdecl.is_generic
      then begin
        (* in case of a generic function, check if
           parameteric types exist in generic types field of function *)
        let formaltype = List.map (fun (_, x) -> x) fdecl.formals in
        TFunGeneric((formaltype, fdecl.return_type), fdecl.generic_types), env
      end
      (* when the function is not generic *)
      else begin
        let locals, globals = env in
        (* build a map for formals. string -> type of formals *)
        let type_formals = List.fold_left
            (fun acc (id, t) -> 
               (* check if none of the formals are generic in which 
                  case raise an exception *)
               match is_generic_type t with
               | true -> raise InvalidGenericFunctionDefinition
               | false -> NameMap.add id t acc)
            (NameMap.empty) (fdecl.formals) in
        (* merge the global and local maps into one such that
           local definitions take priority *)
        let merged_globals = NameMap.merge (fun k k1 k2 -> match k1, k2 with
            | Some k1, Some k2 -> Some k1
            | None, k2 -> k2
            | k1, None -> k1)
            locals globals in
        (* augment the environment with merged locals and globals *)
        let env = type_formals, merged_globals in
        (* get the type of the body *)
        let block_type, _ = match fdecl.body with
          (* check if the body is a list of expressions or just one expr *)
          | Block (es) -> begin
              match es with
              | [] -> TAny, env
              | x :: [] -> type_of_expr env x
              | x :: xs ->
                List.fold_left
                  (fun (t, acc_env) e ->
                     let newt, newenv = type_of_expr acc_env e in
                     (newt, newenv))
                  (type_of_expr env x) xs
            end
          | e -> type_of_expr env e
        in
        (* check if the type of last block expr is
           same as function's return type *)
        let return_type =
          (match validate_types block_type fdecl.return_type with
           | Some(t) -> t
           | None -> raise (MismatchedTypes(fdecl.return_type, block_type))) in
        let formaltype = List.map (fun (_, x) -> x) fdecl.formals in
        TFun(formaltype, return_type), env
      end
    end

  | Call(id, es) -> begin
      let t, _ = type_of_expr env (Val(id)) in
      (* a list of argument types *)
      let args_type = List.map (fun e -> let t, _ = type_of_expr env e in t) es in
      (match t with
      | TFun(formals_type, return_type) ->
        (* check if the lengths of the formal and actual args match *)
        let l1 = List.length args_type and l2 = List.length formals_type in
        if l1 <> l2 then raise (MismatchedArgCount(l2, l1))
        (* type of each pair of formal and actual args should match *)
        else List.iter2
            (fun ft at ->
               match validate_types ft at with
               | Some(t) -> ()
               | None -> raise (MismatchedTypes(ft, at)))
          formals_type args_type;
        return_type, env

      (* Type-checking generic function calls.
         1. First, resolve types (thanks to the resolve function above)
         2. Next type check the body of the function
         3. Return the "resolved" return type of the call expression *)
      | TFunGeneric((formals_type, return_type), generic_types) -> begin
            (* create an map of all generic types to TAny. Goal is to resolve
               each of these types uniquely and correctly *)
            let genMap = List.fold_left (fun map t -> GenericMap.add t TAny map)
                GenericMap.empty generic_types in
            (* check if the lengths of the formal and actual args match *)
            let l1 = List.length args_type and l2 = List.length formals_type in
            if l1 <> l2 then raise (MismatchedArgCount(l2, l1))
            else
              let genMap = List.fold_left2 resolve genMap formals_type args_type in
              (generate_ret_types genMap return_type), env
        end

      | _ -> raise (failwith "unreacheable state reached"))
    end

  (* 1. check if id exists in modules
     2. then check if e exists in that map
     3. return type of e *)
  | ModuleLit(id, e) -> begin
      let defs = if ModuleMap.mem id modules
        then ModuleMap.find id modules
        else raise (ModuleNotFound(id)) in
      match e with
      | Call(prop, args) ->
        let prop_type = if NameMap.mem prop defs
          then NameMap.find prop defs
          else raise (UndefinedProperty(id, prop)) in
        (match prop_type with
         | TFun(formals_type, return_type) ->
           let args_type = List.map
               (fun e -> let t, _ = type_of_expr env e in t) args
           in
           let l1 = List.length args_type and l2 = List.length formals_type in
           if l1 <> l2 then raise (MismatchedArgCount(l2, l1))
           else List.iter2 (fun ft at -> let _ = validate_types ft at in ())
               formals_type args_type;
           return_type, env
         | TFunGeneric((formals_type, return_type), generic_types) -> begin
             let genMap = List.fold_left (fun map t -> GenericMap.add t TAny map)
                 GenericMap.empty generic_types in
             let args_type = List.map
                 (fun e -> let t, _ = type_of_expr env e in t) args in
             let l1 = List.length args_type and l2 = List.length formals_type in
             if l1 <> l2 then raise (MismatchedArgCount(l2, l1))
             else
               let genMap = List.fold_left2 resolve genMap formals_type args_type in
               (generate_ret_types genMap return_type), env
           end
         | _ -> raise (failwith "unreacheable state reached"))
      | Val(prop) -> begin
          if NameMap.mem prop defs
          then NameMap.find prop defs, env
          else raise (UndefinedProperty(id, prop))
        end
      | _ -> raise (UndefinedProperty(id, string_of_expr e))
    end
;;

let type_check (program: Ast.program) =
  let predefined = Lib.predefined in
  List.fold_left
    (fun env expr ->
       try
         let _, env = type_of_expr env expr in env
       with
       | InvalidGenericFunctionDefinition ->
         raise (TypeError (Printf.sprintf "Error: Generic type found. Use [Type] to declare generic functions."))
       | ModuleNotFound(s) ->
         raise (TypeError (Printf.sprintf "Type error: Module '%s' not defined" s))
       | InvalidReturnExpression(s) ->
         raise (TypeError (Printf.sprintf "Type error: Assignment expressions cannot be returned"))
       | InvalidOperation(t, op) ->
         let st = string_of_type t and sop = string_of_op op in
         raise (TypeError (Printf.sprintf "Type error: Invalid operation '%s' on type '%s'" sop st))
       | MismatchedTypes(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: expected value of type '%s', got a value of type '%s' instead" st1 st2))
       | MismatchedOperandTypes(op, t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 and sop = string_of_op op in
         raise (TypeError (Printf.sprintf "Type error: Cannot have types '%s' and '%s' for operator '%s'" st1 st2 sop))
       | NonUniformTypeContainer(t1, t2) ->
         let st1 = string_of_type t1 and st2 = string_of_type t2 in
         raise (TypeError (Printf.sprintf "Type error: Lists can only contain one type. Expected '%s', got a '%s' instead" st1 st2))
       | Undefined(s) ->
         raise (TypeError (Printf.sprintf "Error: value '%s' was used before it was defined" s))
       | AlreadyDefined(s) ->
         raise (TypeError (Printf.sprintf "Error: '%s' cannot be redefined in the current scope" s))
       | UndefinedProperty(module_name, prop) ->
         raise (TypeError (Printf.sprintf "Error: property '%s' is not defined in module '%s'" prop module_name))
       | MismatchedArgCount(l1, l2) ->
         raise (TypeError (Printf.sprintf "Error: Expected number of argument(s): %d, got %d instead." l1 l2))
       | UndefinedType(c) ->
         raise (TypeError (Printf.sprintf "Error: Type '%c' not found." c))
       | InvalidArgumentType(_) ->
         raise (TypeError (Printf.sprintf "Error: Invalid argument type. Cannot pass generic functions as arguments."))
       | InvalidKeyType(t) ->
         raise (TypeError (Printf.sprintf "Type Error: Cannot have '%s' as key type in a Map." (string_of_type t)))
       | e -> raise (TypeError (Printexc.to_string e)))
    (predefined, NameMap.empty)
    program
;;
