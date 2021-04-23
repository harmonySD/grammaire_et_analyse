
type expression = 
  | Ident of string
  | Plus of expression * expression
  | Moins of expression * expression
  | Mult of expression * expression
  | Div of expression * expression
  | Mun of int
  | Nombre of int

type instruction =
  | Bloc of instruction list
  | Avance of expression
  | Tourne of expression
  | Egal of string * expression
  | BasPinceau
  | HautPinceau
  | Ite of expression * instruction * instruction
  | Sialors of expression * instruction
  | While of expression * instruction
  | Epaisseur of int
  | Color of int * int * int


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
  | Mult (l,r) -> as_string1 "*" l r
  | Div (l,r) -> as_string1 "/" l r
  | Mun n -> "(" ^ "-" ^ string_of_int n ^")"

and as_string1 op l r =
  "("^ as_string l ^ op ^ as_string r ^ ")"

let rec as_string_instruction l = 
  match l with 
  |[] -> ""
  |x::y-> as_string_instruction2 x ^as_string_instruction y

and as_string_instruction2 = function
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Epaisseur t -> "(Epaisseur : "^string_of_int t ^")"
  | Color (r,g,b) ->  "( " ^ "Color : " ^ "R : " ^ (string_of_int r) ^ "G : " 
                        ^ (string_of_int g) ^ "B : " ^ (string_of_int b) ^ ")"
  | Avance x -> "(" ^ "Avance " ^ as_string x ^")"
  | Tourne x ->  "(" ^ "Tourne " ^ as_string x ^")"
  | Egal (l,r) -> "(" ^ l ^ "=" ^ as_string r ^")"
  | Sialors (e,i) -> "( If"^(as_string e)^" then ["^(as_string_instruction2 i)^"] )"
  | Ite (e,i,i2) -> "("^"If "^(as_string e )^" then ["^(as_string_instruction2 i) ^"] else ["^(as_string_instruction2 (i2))^"] )"
  | While (e,i) -> "("^"While "^(as_string e)^" then ["^(as_string_instruction2 i)^"] )"
  | Bloc ins -> (match ins with
                      |[]-> ""
                      |x::y-> as_string_instruction2 x ^as_string_instruction y
  

 let as_string_programme prog = (*CHANGER SI INSTRUC LIST*)
  let (decla,instruc) =prog in
  "["^as_string_decla decla^ "; Debut" ^as_string_instruction instruc^" Fin]"
