open Graphics
open Float

exception Quit;;

(* let angle = ref 0;; *)
let pinceau = ref false;;

(*GERER BUG COORDONNE*)
(*ENLEVER PINCEAU*)
(*GERER LES DEUX ERREURS DIV 0 ET SORTIE CANVAS*)


(*FONCTIONS AUX *)
let modulo x y =
  let a = x mod y in
  if a < 0 then a + y    
  else a

let rec myprint (l:(string * int) list) =
    match l with
    | [] -> ""
    | x::ll -> 
      let (a,b) = x in
      "('"^a^"',"^(string_of_int b)^")" ^ myprint ll
        
let nextPos (v : int) (env : (string * int) list) =
  let (currX,currY) = current_point ()
  and pi = 3.1415926535 
  and rot = modulo ((List.assoc "rot" env) + 90) 360 in

  let a = (of_int currX) +. (of_int v) *. cos (of_int rot *. (pi /. 180.)) 
  and b = (of_int currY) +. (of_int v) *. sin (of_int rot *. (pi /. 180.)) in
  
  let fa = abs (if a > (floor a) +. 0.5 then ceil a else floor a)
  and fb = abs (if b > (floor b) +. 0.5 then ceil b else floor b) in

  (to_int fa,to_int fb)

let rec get_values (expr : Ast.expression) (env : (string * int) list): int =
  match expr with
  | Ident s -> List.assoc s env 
  | Plus (e1,e2) -> (get_values e1 env) + (get_values e2 env)
  | Moins (e1,e2) -> (get_values e1 env) - (get_values e2 env)
  | Nombre i -> i 

(*FIN FONCTIONS AUX*)

let draw (env : (string * int) list) (instruct : Ast.instruction) : (string * int) list =
  match instruct with
  | Avance e ->
    if !pinceau = true then 
      begin 
        print_string "Avance\n";
        let tmp = get_values e env in
        let (x,y) = nextPos tmp env in
        let (currx, curry) = current_point() in
        print_string "env : ";
        print_string (myprint env);
        print_newline();
        print_string "rot : ";
        print_int (List.assoc "rot" env);
        print_newline();

        print_string "x : ";
        print_int currx;
        print_newline();
        print_string "y : ";
        print_int curry;
        print_newline();

        print_string "nouveau x : ";
        print_int x;
        print_newline();

        print_string "nouveau y : ";
        print_int y;
        print_newline();
        print_newline();
        print_newline();
        lineto x y;
        env
      end
    else 
      env
  | Tourne e ->
    print_string "tourne";
    print_newline();
    let rot = List.assoc "rot" env 
    and angle = List.assoc "angle" env in
    print_string "e : ";
    print_int (get_values e env);
    print_newline();
    print_newline();
    ("rot",(modulo (rot + angle) 360))::(List.remove_assoc "rot" (List.rev env))
  | Egal (s,e) ->
    print_string "Egal";
    print_newline();
    print_string (myprint env);
    print_newline();
    print_newline();
    (s,(get_values e env))::env
  | BasPinceau -> pinceau := true; print_string "BasPinceau"; print_newline();env
  | HautPinceau -> pinceau := false; print_string "HautPinceau"; print_newline();env

let init (ast : Ast.programme) : unit =
  let (_,instruct) = ast in
  open_graph " 500x500";

  moveto 100 100;
  ignore (List.fold_left draw [("rot",0)] instruct);

  let ev = wait_next_event [Key_pressed] in
  if ev.keypressed then close_graph()