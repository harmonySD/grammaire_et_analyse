(*let lexbuf = Lexing.from_channel stdin 

let ast = Parser.s Lexer.main lexbuf 

let _ = Printf.printf "Parse:\n%s\n" (Ast.as_string_programme ast)
*)
(* programme principal *)

  let print_position outx lexbuf =
  Lexing.(
    let pos = lexbuf.lex_curr_p in
    Printf.fprintf outx "Ligne %d Column %d"
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
     Printf.fprintf stderr "%a: Interpreter error drawing %s\n" print_position lb msg;
     exit (-1)
  | Lexer.Error msg ->
     Printf.fprintf stderr "%a: Lexer error reading %s\n" print_position lb msg;
     exit (-1)
  | Parser.Error ->
     Printf.fprintf stderr "%a: Syntax error\n" print_position lb;
     exit (-1)
  | Typecheck.Error s ->
     Printf.fprintf stderr "Type error: %s\n" s;
     exit (-1)
