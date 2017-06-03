(**
   Application des types sommes.

   Resolution d'une equation du second degre a coefficients reels.

   @author FIL. Univ. Lille1 
*)

type solution =
  | Aucune
  | Double of float
  | Paire of float * float


(**
   [racines a b c] = solutions reelles de l'equation ax^2 + bx + c = 0.

   {b CU :} a non nul
*)
let racines a b c =
  let delta = b *. b -. 4. *. a *. c 
  and inv = 1. /. (2. *. a) in
  match compare delta 0. with
    | -1 -> Aucune
    | 1  -> 
      let racdelta = sqrt delta in
      Paire (
	(-. b -. racdelta) *. inv,
	(-. b +. racdelta) *. inv
      )
    | _  -> Double (-. b *. inv)

(**
   [imprimer_sol s] : imprime une donnee [s] de type [solution].

   {b CU :} aucune
*)    
let imprimer s =
  match s with
    | Double x -> Printf.printf "solution double : %f\n" x
    | Paire (x,y) -> Printf.printf "solutions : %f et %f\n" x y
    | _ -> Printf.printf "pas de solution.\n"


    
  
