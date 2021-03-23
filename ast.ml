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
  | Plus of expression * expression
  | Moins of expression * expression


let rec as_string = function
  | Identificateur i -> i
  | Var i -> apply1 "Var" i
  | Pv -> ";"
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Nombre n -> string_of_int n
  | Debut bloc -> as_string3 
  | 


and apply1 op id =
  "("^op^" "^as_string i^")"

and 

and as_string3 = function 
  | x::y -> "Debut"^ as_string x ^ as_string2 y