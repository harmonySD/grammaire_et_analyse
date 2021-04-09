open Ast 

exception Error of string

let rec get_declarations = function 
  | [] -> []
  | v::r -> let rl = get_declarations r in 
                if List.mem v rl
                then raise (Error("Declared twice: "^v))
                else v::rl

let rec type_expression decs = function
  | Nombre _ -> ()
  | Ident s -> if List.mem s decs 
              then raise (Error ("Variable not declared : "^s))
              else ()

  | Plus _-> ()
  | Moins _-> ()

let rec check_instruction decs = function
  | Egal (s,e) ->  try 
                    if List.mem s decs = type_expression decs e
                    then ()
                    else raise (Error ("jjdjrdjjso<"))
                with Not_found ->
                  raise (Error ("not declared "^s))
  
  | Avance _ -> ()
  | Tourne  -> ()
  | BasPinceau -> ()
  | HautPinceau -> ()
              
and check_instructions decs il =
  List.iter
    (function i -> check_instruction decs i)
    il
                    
(* check the typing of a complete program *)
let check_program (dl,il) =
  check_instructions (get_declarations dl) il
                    
