
type expression = 
  | Ident of string
  | Plus of expression * expression
  | Moins of expression *expression
  | Nombre of int

type instruction =
  | Avance of expression
  | Tourne of expression
  | Egal of string * expression
  | BasPinceau
  | HautPinceau


type declaration = string

type programme = declaration list * instruction list

let rec as_string_decla l = 
  match l with 
    |[]->""
    |x::y -> "Var "^x^" "^as_string_decla y

let rec as_string = function
  | Ident i -> i
  | Nombre n -> string_of_int n
  | Plus (l,r) -> as_string1 "+" l r
  | Moins (l,r) -> as_string1 "-" l r

and as_string1 op l r =
  "("^ as_string l ^ op ^ as_string r ^ ")"

let rec as_string_instruction l = 
  match l with 
  |[] -> "Fin"
  |x::y-> as_string_instruction2 x ^as_string_instruction y

and as_string_instruction2 = function  (*CHANGER SI INSTRUC LIST*)
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Avance x -> "(" ^ "Avance " ^ as_string x ^")"
  | Tourne x ->  "(" ^ "Tourne " ^ as_string x ^")"
  | Egal (l,r) -> "(" ^ l ^ "=" ^ as_string r ^")"


 let as_string_programme prog = (*CHANGER SI INSTRUC LIST*)
  let (decla,instruc) =prog in
  "["^as_string_decla decla^ "; Debut" ^as_string_instruction instruc^"]"
