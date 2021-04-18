
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TOURNE
  | THEN
  | RPAR
  | PLUS
  | NB of (int)
  | MOINS
  | LPAR
  | IF
  | IDENT of (string)
  | HPINCEAU
  | FIN
  | EOF
  | ELSE
  | EGAL
  | DO
  | DEB
  | BPINCEAU
  | AVANCE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val s: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programme)
