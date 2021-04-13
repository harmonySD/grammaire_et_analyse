
(* The type of tokens. *)

type token = 
  | VAR
  | TOURNE
  | RPAR
  | PLUS
  | NB of (int)
  | MOINS
  | LPAR
  | IDENT of (string)
  | HPINCEAU
  | FIN
  | EOF
  | EGAL
  | DEB
  | BPINCEAU
  | AVANCE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val s: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programme)
