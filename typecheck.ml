open Ast 

exception Error of string

let rec get_declarations = function 
  | [] -> []
  | v::r -> let rl = get_declarations r in 
                if List.mem v rl
                then raise (Error("Declared twice: "^v))
                else v::rl

let type_expression decs = function
  | Nombre _ -> true
  | Ident s -> if List.mem s decs 
              then false
              else true

  | Plus _-> true
  | Moins _-> true
  | Mult _-> true
  | Div _ ->true
  | Mun _-> true


let rec check_instruction decs = function
  | Egal (s,e) ->  (try 
                    if List.mem s decs = type_expression decs e
                    then ()
                    else raise (Error ("not declared "^s))
                with Not_found ->
                  raise (Error ("not declared "^s)))
  
  | Avance _ -> ()
  | Tourne _ -> ()
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
                    
