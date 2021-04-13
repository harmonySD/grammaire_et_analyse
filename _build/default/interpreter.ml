open Graphics
open Float

exception Quit;;

let angle  = ref 0;;
let pinceau = ref false;;

(* calculate next pos *)
let nextPos (v : int) =
  let (currX,currY) = current_point () in
  let pi = 3.1415926535 in

  let a = (of_int currX) +. (of_int v) *. cos (of_int !angle *. (pi /. 180.)) 
  and b = (of_int currY) +. (of_int v) *. sin (of_int !angle *. (pi /. 180.)) in
  
  let fa = if a > (floor a) +. 0.5 then ceil a else floor a
  and fb = if b > (floor b) +. 0.5 then ceil b else floor b in

  (to_int fa, to_int fb)

let rec get_values (expr : Ast.expression) (env : (string * int) list): int =
  match expr with
  | Ident s -> List.assoc s env 
  | Plus (e1,e2) -> (get_values e1 env) + (get_values e2 env)
  | Moins (e1,e2) -> (get_values e1 env) - (get_values e2 env)
  | Nombre i -> i 

let draw (env : (string * int) list) (instruct : Ast.instruction) : (string * int) list =
  match instruct with
  | Avance e ->
    let tmp = get_values e env in
    let (x,y) = nextPos tmp in
    lineto x y;
    env 
  | Tourne e -> angle := !angle + (get_values e env); env
  | Egal (s,e) -> (s,(get_values e env))::env
  | BasPinceau -> pinceau := true; env
  | HautPinceau -> pinceau := false; env

let rec loop()= loop()

let init (ast : Ast.programme) : unit =
  let _ = Printf.printf "Parse:\n%s\n" (Ast.as_string_programme ast) in
  let (_,instruct) = ast in
  open_graph " 500x500";

  print_int (List.length instruct);
  print_string "on est là\n";
  print_newline();

  let nextLine (instruct : Ast.instruction list) =  

    print_string "cas 1";
    print_newline();
    ignore(List.fold_left (draw) ([]) (instruct))
  in 

  print_string "cas 0";
  print_newline();
  try nextLine instruct
  with _ -> close_graph()
 (*
  let rec boucle (ax : symbol word) =
    let ev = wait_next_event [Key_pressed] in
    if ev.key == 'q' then raise Quit;
    begin
      clear_graph();
      let cmd = getCommands obj.interp ax in
      display_all cmd pile;
      let nextStr = nextAxiom obj.rules ax in
      boucle nextStr
    end
  in
  let chaine = obj.axiom in
  try boucle chaine with Quit -> close_graph();
*)