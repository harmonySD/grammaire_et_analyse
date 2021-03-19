{
    open Parser
    open Lexing

    exception Error of string
}
(*regex*)
let nombre = [1-9][0-9]*|0
let identificateur = [a-z][a-zA-Z0-9]*
let space =[' ''\n''\t']

(*aka lexeur/ next_token*)
rule read_token = parse 
    | "Var" {VAR}
    | "Debut" {DEB}
    | "Fin" {FIN}
    | "=" {EGAL}
    | "+" {PLUS}
    | "-" {MOINS}
    | ";" {PV}
    | "HautPinceau" {HPINCEAU}
    | "BasPinceau" {BPINCEAU}
    | "Tourne" {TOURNE}
    | "Avance" {AVANCE}
    | nombre {NB (int_of_string(Lexing.lexeme lexbuf))}
    | identificateur {IDENT(Lexing.lexeme lexbuf)}
    | space* {lexeur lexbuf}
    | _ {raise(Lexing_error(Lexing.lexeme lexbuf))}


