open Graphics
open Float

exception Quit;;

(*A FAIRE*)
(*GERER LES DEUX ERREURS DIV 0*)
(*AJOUTER IF ET WHILE DE HARMONY*)
exception Error of string

(*FONCTIONS AUX *)
let modulo x y =
  let a = x mod y in
  if a < 0 then a + y    
  else a

(* utile pour le debugging*)
let rec myprint (l:(string * int) list) =
    match l with
    | [] -> ""
    | x::ll -> 
      let (a,b) = x in
      "('"^a^"',"^(string_of_int b)^")" ^ myprint ll
        
let nextPos (v : int) (env : (string * int) list) =
  let (currX,currY) = current_point ()
  and pi = 3.1415926535 
  and rot = modulo ((List.assoc "rot" env) +90) 360 in

  let a = (of_int currX) +. (of_int v) *. cos (of_int rot *. (pi /. 180.)) 
  and b = (of_int currY) +. (of_int v) *. sin (of_int rot *. (pi /. 180.)) in
  
  let fa = if a > (floor a) +. 0.5 then ceil a else floor a
  and fb = if b > (floor b) +. 0.5 then ceil b else floor b in

  if fa < 0. || fb < 0. then raise (Error("Sortie du canvas"));

  (to_int fa,to_int fb)

let rec get_values (expr : Ast.expression) (env : (string * int) list): int =
  match expr with
  | Ident s -> List.assoc s env 
  | Plus (e1,e2) -> (get_values e1 env) + (get_values e2 env)
  | Moins (e1,e2) -> (get_values e1 env) - (get_values e2 env)
  | Nombre i -> i
  | Mult (e1,e2) -> (get_values e1 env) * (get_values e2 env)
  | Div (e1,e2) ->
    let ve2 = (get_values e2 env) in 
    if ve2 = 0 then 
      raise(Error("Division par 0 interdite"))
    else
      (get_values e1 env) / ve2
  | Mun i -> - i 


(*FIN FONCTIONS AUX*)

let rec draw (env : (string * int) list) (instruct : Ast.instruction) : (string * int) list =
  match instruct with
  | Avance e ->
    if (List.assoc "pinceau" env) = 1 then 
      begin 
        let tmp = get_values e env in
        let (x,y) = nextPos tmp env in
        lineto x y;
        env
      end
    else 
      begin
        let tmp = get_values e env in
        let (x,y) = nextPos tmp env in
        moveto x y;
        env
      end
  | Tourne e ->
    let rot = List.assoc "rot" env 
    and angle = (get_values e env) in
    ("rot",(modulo (rot + angle) 360))::(List.remove_assoc "rot" (List.rev env))
  | Egal (s,e) ->

    let a = List.remove_assoc s (List.rev env) in
    (s,(get_values e env))::a

  | BasPinceau -> ("pinceau",1)::(List.remove_assoc "pinceau" (List.rev env))
  | HautPinceau ->
    ("pinceau",0)::(List.remove_assoc "pinceau" (List.rev env))
  | Ite(e,i1,i2) -> 
    if (get_values e env) != 0 then
      draw env i1
    else
      draw env i2
  | While(e,i) ->
    let a = ref env in

    while (get_values e !a) != 0 
    do 
      a := (draw !a i);
    done;

    !a
  | Bloc b -> List.fold_left draw env b


let init (ast : Ast.programme) : unit =
  let (_,instruct) = ast in
  open_graph " 2000x2000";

  ignore (List.fold_left draw [("rot",0);("pinceau",0)] instruct);

  let ev = wait_next_event [Key_pressed] in
  if ev.keypressed then close_graph()