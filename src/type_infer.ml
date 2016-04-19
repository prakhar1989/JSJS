type id = string

type op = Add | Mul | Gte | Lte

type primitiveType =
  | TNum
  | TBool
  | T of string
;;

let string_of_type (t: primitiveType): string =
  match t with
  | TNum -> "Num"
  | TBool -> "Bool"
  | T(x) -> x
;;

module NameMap = Map.Make(String)

type environment = primitiveType NameMap.t

type expr =
  | NumLit of int
  | BoolLit of bool
  | Val of string
  | Binop of expr * op * expr
;;

type aexpr =
  | ANumLit of int * primitiveType
  | ABoolLit of bool * primitiveType
  | AVal of string * primitiveType
  | ABinop of aexpr * op * aexpr * primitiveType
;;

type substitutions = (id * primitiveType) list

let type_variable = ref (Char.code 'A')

let gen_new_type () =
  let c1 = !type_variable in
  incr type_variable; T(Char.escaped (Char.chr c1))
;;

let rec annotate_expr (e: expr) (env: environment) : aexpr =
  match e with
  | NumLit(n) -> ANumLit(n, TNum)
  | BoolLit(b) -> ABoolLit(b, TBool)
  | Val(x) -> if NameMap.mem x env
    then AVal(x, NameMap.find x env)
    else raise (failwith "variable not defined")
  | Binop(e1, op, e2) ->
    let et1 = annotate_expr e1 env
    and et2 = annotate_expr e2 env
    and new_type = gen_new_type () in
    ABinop(et1, op, et2, new_type)
;;

let type_of (ae: aexpr): primitiveType =
  match ae with
  | ANumLit(_, t) | ABoolLit(_, t) -> t
  | AVal(_, t) -> t
  | ABinop(_, _, _, t) -> t
;;

let rec collect_expr (ae: aexpr) : (primitiveType * primitiveType) list =
  match ae with
  | ANumLit(_) | ABoolLit(_) | AVal(_) -> []
  | ABinop(ae1, op, ae2, t) ->
    let et1 = type_of ae1 and et2 = type_of ae2 in
    let opc = match op with
      | Add | Mul -> [(et1, TNum); (et2, TNum); (t, TNum)]
      | Gte | Lte -> [(et1, et2); (t, TBool)]
    in
    (collect_expr ae1) @ (collect_expr ae2) @ opc
;;

let string_of_op (op: op) =
  match op with
  | Add -> "+"
  | Mul -> "*"
  | Lte -> "<="
  | Gte -> ">="
;;

let rec string_of_aexpr (ae: aexpr): string = 
  match ae with
  | ANumLit(x, t)  -> Printf.sprintf "(%s: %s)" (string_of_int x) (string_of_type t)
  | ABoolLit(b, t) -> Printf.sprintf "(%s: %s)" (string_of_bool b) (string_of_type t)
  | AVal(x, t) -> Printf.sprintf "(%s: %s)" x (string_of_type t)
  | ABinop(e1, op, e2, t) -> 
    let s1 = string_of_aexpr e1 in 
    let s2 = string_of_aexpr e2 in
    let sop = string_of_op op in
    let st = string_of_type t in
    Printf.sprintf "(%s %s %s: %s)" s1 sop s2 st
;;

let substitute (u: primitiveType) (x: id) (t: primitiveType) : primitiveType =
  match t with
  | TNum | TBool -> t
  | T(c) -> if c = x then u else t
;;

let apply (subs: substitutions) (t: primitiveType) : primitiveType =
  List.fold_right (fun (x, u) t -> substitute u x t) subs t
;;

let rec unify (s: (primitiveType * primitiveType) list) : substitutions =
  match s with
  | [] -> []
  | (x, y) :: xs ->
    let t2 = unify xs in
    let t1 = unify_one (apply t2 x) (apply t2 y) in
    t1 @ t2

and unify_one (t1: primitiveType) (t2: primitiveType) : substitutions =
  match t1, t2 with
  | TNum, TNum | TBool, TBool -> []
  | T(x), z | z, T(x) -> [(x, z)]
  | _ -> raise (failwith "mismatched types")
;;

let rec apply_expr (subs: substitutions) (ae: aexpr): aexpr =
  match ae with
  | ABoolLit(b, t) -> ABoolLit(b, apply subs t)
  | ANumLit(n, t) -> ANumLit(n, apply subs t)
  | AVal(s, t) -> AVal(s, apply subs t)
  | ABinop(e1, op, e2, t) -> ABinop(apply_expr subs e1, op, apply_expr subs e2, apply subs t)
;;

let infer (env: environment) (e: expr) : aexpr =
  let annotated_expr = annotate_expr e env in
  let constraints = collect_expr annotated_expr in
  let subs = unify constraints in
  apply_expr subs annotated_expr
;;

(* testing *)
let debug (e: expr) (vals: string list) =
  let env = List.fold_left (fun m x -> NameMap.add x (gen_new_type ()) m) NameMap.empty vals in
  let aexpr = infer env e in
  print_endline (string_of_aexpr aexpr)
;;

let _ = Binop(Binop(Val("x"), Add, Val("y")), Mul, Val("z")) in
let _ = Binop(Binop(Val("x"), Add, Val("y")), Gte, Val("z")) in
let _ = Binop(Binop(Val("x"), Gte, Val("y")), Lte, Val("z")) in
let e1 = Binop(Binop(Val("x"), Gte, Val("y")), Mul, Val("z")) in
debug e1 ["x"; "y"; "z"] ;;
