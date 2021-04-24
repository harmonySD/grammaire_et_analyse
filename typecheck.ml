open Ast 

exception Error of string

let rec get_declarations = function 
  | [] -> []
  | v::r -> let rl = get_declarations r in 
                if List.mem v rl
                then raise (Error("Declarer deux fois : "^v))
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
      else raise (Error ("Pas declarer "^s))
    with Not_found ->
      raise (Error ("Pas declarer "^s))
    )
  | Avance e -> 
    if (type_expression decs e) = 1 
    then ()
    else raise (Error ("Avance argument n'est pas une expression reconnue")) 
  | Tourne e ->
    if (type_expression decs e) = 1 
    then ()
    else raise (Error ("Tourne argument n'est pas une expression reconnue"))
  | BasPinceau -> ()
  | HautPinceau -> ()
  | Sias(e,i1,i2) ->
    if (type_expression decs e) = 1
    then
      let _ = check_instruction decs i1 
      and _ = check_instruction decs i2 in
      ()
    else
      raise (Error("e n'est pas une condition booléenne(sialorssinon)")) 
  | Tantq(e,i) -> if (type_expression decs e) = 1  
    then check_instruction decs i
    else raise (Error("e n'est pas une condition booléenne (tantque)"))
  | Sialors (e,i) -> 
    if (type_expression decs e) = 1
    then 
      let _ = check_instruction decs i in ()
    else 
      raise (Error("e n'est pas une condition booléenne(sialors)"))
  | Bloc b -> check_instructions decs b
  | Couleur (r,g,b) -> 
    if r >= 256 || r < 0 || g >= 256 && g < 0 || b >= 256 || b < 0 
    then raise (Error("Erreur de type pour les couleurs"))
    else ()
  | Epaisseur t -> if t < 0 then raise(Error("Erreur de type pour l'epaisseur"))
              
and check_instructions decs il =
  List.iter
    (function i -> check_instruction decs i)
    il

(* Verificationn des types d'un programme complet *)
let check_program (dl,il) =
  check_instructions (get_declarations dl) il
                    
