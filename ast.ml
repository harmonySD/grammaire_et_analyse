type expression =
  | Identificateur of string
  | Var of expression
  | Pv 
  | Debut of (expression) List
  | Avance of expression
  | Tourne of expression
  | Egal of expression * expresssion List
  | BasPinceau
  | HautPinceau
  | Nombre of int 
  | Plus of expression 
  | Moins of expression 


let rec as_string = function
  | Identificateur i -> i
  | Var i -> apply1 "Var" i
  | Pv -> ";"
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Nombre n -> string_of_int n
  | Debut bloc -> as_string3 bloc
  | Plus


and apply1 op id =
  "("^op^" "^as_string i^")"

and as_string2 =function
  | y -> as_string y ^ " Fin"
  | x::y -> as_string x ^ as_string2 y

and as_string3 = function 
  | y -> as_string y
  | x::y -> "Debut"^ as_string x ^ as_string2 y