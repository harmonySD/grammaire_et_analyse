(*Pour afficher l'arbre syntaxique decommenter la suite *)

let lexbuf = Lexing.from_channel stdin 

let ast = Parser.s Lexer.main lexbuf 

let _ = Printf.printf "Parse:\n%s\n" (Ast.as_string_programme ast);Typecheck.check_program ast

(*
(* programme principal *)

  let print_position outx lexbuf =
  Lexing.(
    let pos = lexbuf.lex_curr_p in
    Printf.fprintf outx "Ligne %d Colonne %d"
      pos.pos_lnum
      (pos.pos_cnum - pos.pos_bol + 1)
  )
    
let _ =
  let lb = Lexing.from_channel stdin
  in
  try
    let ast =
      Parser.s Lexer.main lb
    in Typecheck.check_program ast; print_string "Typecheck OK.\n";
    Interpreter.init ast; print_string "Interpreter OK.\n"
  with
  | Interpreter.Error msg ->
     Printf.fprintf stderr "%a: Interpreter erreur dessin %s\n" print_position lb msg;
     exit (-1)
  | Lexer.Error msg ->
     Printf.fprintf stderr "%a: Lexer erreur lecture %s\n" print_position lb msg;
     exit (-1)
  | Parser.Error ->
     Printf.fprintf stderr "%a: Erreur de syntaxe \n" print_position lb;
     exit (-1)
  | Typecheck.Error s ->
     Printf.fprintf stderr "Erreur de type : %s\n" s;
     exit (-1) 
*)