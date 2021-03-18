type token=
    HPINCEAU 
    | BPINCEAU 
    | VAR 
    | AVANCE 
    | TOURNE 
    | DEB 
    | FIN 
    | PV (* ; *)
    | EGAL
    | MOINS
    | PLUS
    | IDENT of string
    | NB of int

let to_string = function
    HPINCEAU -> "HautPinceau"
    | BPINCEAU -> "BasPinceau"
    | VAR -> "Var"
    | AVANCE -> "Avance"
    | TOURNE -> "Tourne"
    | DEB -> "Debut"
    | FIN -> "Fin"
    | PV -> ";"
    | EGAL -> "="
    | MOINS -> "-"
    | PLUS -> "+"
    | IDENT s -> "identificateur "^s
    | NB n -> "nombre "^(string_of_int n)
