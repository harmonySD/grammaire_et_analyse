open Ast 

exception Error of string

let rec get_declarations = function 
  | [] -> []
  | (v,t)::r -> let rl = get_declarations r in 
                if List.mem_assoc v rl
                then raise (Error("Declared twice: "^v))
                else (v,t)::rl

let rec type_expression decs = function
  | Nombre _ -> Int
  | Var s -> begin 
          try List.assoc s decs
          with Not_found -> raise
                              (Error ("Variable not declared : "^s))
  end
  | Plus (l,r)-> let t1 = type_expression decs l
                 and t2 = type_expression decs r 
                 and (to1,to2) = (Int,Int)
                 in if t1= to1 && t2 =to2
                 then  Int 
                 else raise (Error("Type error in op")) 
  | Moins (l,r)-> let t1 =type_expression decs l
                  and t2 = type_expression decs r
                  and (to1,to2) = (Int,Int)
                  in if t1=to1 && t2=to2
                  then Int 
                  else raise (Error("Type error in op"))

let rec check_instruction decs = function
  | Debut li  -> List.iter (check_instruction decs) li 
  | Egal (s,e) -> (try 
                    if List.assoc s decs = type_expression decs e 
                    then ()
                    else 
                        raise
                          (Error ("Inconsistent types in assignement"))
                  with Not_found ->
                      raise (Error ("variable not declared "^s)))  
  
  | Avance (e) -> if type_expression decs e = Int 
                then ()
                else raise (Error("cassse pied"))
  | Tourne e -> if type_expression decs e = Int 
                then ()
                else raise (Error("casse peid"))
  | BasPinceau -> ()
  | HautPinceau -> ()
              
and check_instructions decs il =
  List.iter
    (function i -> check_instruction decs i)
    il
                    
(* check the typing of a complete program *)
let check_program (dl,il) =
  check_instructions (get_declarations dl) il
                    