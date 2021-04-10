type typ = Int
type expression = 
  | Var of string
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


let rec as_string_decla = function  
  |[]-> []
  |x::l -> 
    let xr = "Var "^x^" "
    and xl = as_string_decla l 
    in
    xr::xl

let rec as_string = function
  | Var i -> i
  | Nombre n -> string_of_int n
  | Plus (l,r) -> as_string1 "+" l r
  | Moins (l,r) -> as_string1 "-" l r

and as_string1 op l r =
  "("^ as_string l ^ op ^ as_string r ^ ")"


let rec as_string_instruction = function  (*CHANGER SI INSTRUC LIST*)
  | [] -> []
  | x :: l -> 
    let rl = as_string_instruction l
    and rx = (match x with
      | BasPinceau -> "BasPinceau"
      | HautPinceau -> "HautPinceau"
      | Avance x -> "(" ^ "Avance " ^ as_string x ^")"
      | Tourne x ->  "(" ^ "Tourne " ^ as_string x ^")"
      | Egal (l,r) -> "(" ^ l ^ "=" ^ as_string r ^")"
    )in
    rx::rl

(* 
and as_string2 = function 
  | [] -> "Fin"
  | x::y -> as_string_instruction x ^ (as_string2 y)
*)

 let as_string_programme prog = (*CHANGER SI INSTRUC LIST*)
   let (decla, instruc)= prog in  
   "[" ^ (String.concat "\n" (as_string_decla decla)) ^ ";" ^ (String.concat "\n" (as_string_instruction instruc)) ^ "]"
   
   (* 
   "["^as_string_decla decla ^ ";" ^ as_string_instruction instruc^"]"
    *)