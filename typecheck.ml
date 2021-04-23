open Ast 

exception Error of string

let rec get_declarations = function 
  | [] -> []
  | v::r -> let rl = get_declarations r in 
                if List.mem v rl
                then raise (Error("Declared twice: "^v))
                else v::rl

let rec type_expression decs = function
  | Nombre _ | Mun _-> 1
  | Ident s -> 
    begin
      try let _  = List.mem s decs in 1
      with Not_found -> 0
    end
  | Plus (e1,e2) | Moins(e1,e2) | Mult(e1,e2) | Div(e1,e2)-> 
    if (type_expression decs e1) = 1 && (type_expression decs e2) = 1
    then 1
    else 0 


let rec check_instruction decs = function
  | Egal (s,e) ->
    (
    try 
      if List.mem s decs && (type_expression decs e) = 1
      then ()
      else raise (Error ("not declared "^s))
    with Not_found ->
      raise (Error ("not declared "^s))
    )
  | Avance e -> 
    if (type_expression decs e) = 1 
    then ()
    else raise (Error ("Avance arg is not a reconized expression")) 
  | Tourne e ->
    if (type_expression decs e) = 1 
    then ()
    else raise (Error ("Tourne arg is not a reconized expression"))
  | BasPinceau -> ()
  | HautPinceau -> ()
  | Ite(_,_,_) -> ()
  | While(_,_) -> ()
  | Bloc _ -> ()
  | Color (_,_,_) -> ()
              
and check_instructions decs il =
  List.iter
    (function i -> check_instruction decs i)
    il
                    
(* check the typing of a complete program *)
let check_program (dl,il) =
  check_instructions (get_declarations dl) il
                    
