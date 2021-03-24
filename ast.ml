type expression = 
  | Var of string
  | Plus of expression * expression
  | Moins of expression *expression
  | Nombre of int

type instruction =
  | Debut of instruction list
  | Avance of expression
  | Tourne of expression
  | Egal of string * expression
  | BasPinceau
  | HautPinceau



type programme=
  | Prog of string list * instruction


let rec as_string_decla l = 
  match l with 
    |[]->""
    |x::y -> "Var "^x^" "^as_string_decla y



let rec as_string = function
  | Var i -> i
  | Nombre n -> string_of_int n
  | Plus (l,r) -> as_string1 "+" l r
  | Moins (l,r) -> as_string1 "-" l r


and as_string1 op l r =
  "("^ as_string l ^ op ^ as_string r ^ ")"



let rec as_string_instruction = function  
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Debut bloc ->  "Debut "^(as_string2 bloc)
  | Avance x -> "(" ^ "Avance " ^ as_string x ^")"
  | Tourne x ->  "(" ^ "Tourne " ^ as_string x ^")"
  | Egal (l,r) -> "(" ^ l ^ "=" ^ as_string r ^")"

and as_string2 = function 
  | [] -> "Fin"
  | x::y -> as_string_instruction x ^ (as_string2 y)

let as_string_programme prog = 
  let (Prog (decla,instruc)) =prog in
  "["^as_string_decla decla^ ";" ^as_string_instruction instruc^"]"