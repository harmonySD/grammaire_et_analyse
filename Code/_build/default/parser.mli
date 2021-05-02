
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
  | TANTQ
  | SINON
  | SI
  | RPAR
  | PLUS
  | NB of (int)
  | MULT
  | MOINS
  | LPAR
  | IDENT of (string)
  | HPINCEAU
  | FIN
  | FAIRE
  | EP
  | EOF
  | EGAL
  | DIV
  | DEB
  | COUL
  | BPINCEAU
  | AVANCE
  | ALORS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val s: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programme)
