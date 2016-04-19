type id = string

type op = Add | Mul | Gte | Lte

type primitiveType =
  | TNum
  | TBool
  | T of char
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

type substitution = (id * primitiveType) list

let type_variable = ref (Char.code 'A')

let gen_new_type () =
  let c1 = !type_variable in
  incr type_variable; T(Char.chr c1)
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

let e = Binop(Val("x"), Add, Val("y"))
