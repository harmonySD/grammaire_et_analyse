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
  | Ident s -> begin 
          try List.assoc s decs
          with Not_found -> raise
                              (Error ("Variable not declared : "^s))
  end
  | Plus (l,r)-> ()
  | Moins (l,r)-> ()

let rec check_instruction decs = function
  | Egal (s,e) -> (try 
                    if List.assoc s decs = type_expression decs e 
                    then ()
                    else 
                        raise
                          (Error ("Inconsistent types in assignement"))
                  with Not_found ->
                      raise (Error ("variable not declared "^s)))  
  
  | Avance (e) -> ()
  | Tourne e -> ()
  | BasPinceau -> ()
  | HautPinceau -> ()
              
and check_instructions decs il =
  List.iter
    (function i -> check_instruction decs i)
    il
                    
(* check the typing of a complete program *)
let check_program (dl,il) =
  check_instructions (get_declarations dl) il
                    
