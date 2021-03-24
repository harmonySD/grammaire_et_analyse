type expression =
  | Var of string
  | Pv 
  | Debut of expression list
  | Avance of expression
  | Tourne of expression
  | Egal of string * expression
  | BasPinceau
  | HautPinceau
  | Nombre of int 
  | Plus of expression 
  | Moins of expression 


let rec as_string = function
  | Var i -> as_string1 "Var" (i)
  | Pv -> ";"
  | BasPinceau -> "BasPinceau"
  | HautPinceau -> "HautPinceau"
  | Nombre n -> string_of_int n
  | Debut bloc -> as_string1 "Debut" (as_string2 bloc)
  | Avance x -> as_string1 "Avance" (as_string x)
  | Tourne x ->  as_string1 "Tourne" (as_string x)
  | Egal (x,y) -> as_string3 x y
  | Plus x -> as_string1 "+" (as_string x)
  | Moins x -> as_string1 "-" (as_string x) 


and as_string1 (op:string) (id:string) =
  op ^ id

and as_string2 = function 
  | [] -> ""
  | x::y -> as_string x ^ (as_string2 y)

and as_string3 x y =
  x ^ "=" ^ as_string y