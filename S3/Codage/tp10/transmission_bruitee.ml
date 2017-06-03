(**
   Programme de simulation d'une transmission d'information via un canal bruité.
   
   

   Programme destiné à être compilé :
   - [ocamlc -o transmission_bruitee canal_binaire.cmo transmission_bruitee.ml]

   @author FIL - IEEA - Univ. Lille 1 (déc. 2010)
*)

open Canal_binaire;;

(**
   [transmettre p entree sortie] = recopie le fichier [entree] dans le fichier [sortie] en changeant les bits successifs avec une probabilité [p].
*)
let transmettre p entree sortie =
	let source  = open_in entree and target = open_out sortie in
		try 
			while true do
				let a = input_byte source in
					output_byte target (cbssm p a);
			done;
		with
			|End_of_file -> close_in source;
		close_out target;;


(**
   [usage ()] indique l'usage normal du programme.
*)
let usage () = 
  Printf.printf "Usage : %s <p> <entree> <sortie>\n" Sys.argv.(0) ;
  Printf.printf "\t<p> = proba d'erreur sur 1 bit\n" ;
  Printf.printf "\t<entree> = nom du fichier a l'entree du canal\n" ;
  Printf.printf "\t<sortie> = nom du fichier a la sortie du canal\n" ;
  exit 1


let principal () = 
  if Array.length Sys.argv <> 4 then 
    usage ()
  else 
    let p = float_of_string Sys.argv.(1)
    and entree = Sys.argv.(2)
    and sortie = Sys.argv.(3) in
      transmettre p entree sortie ;
      exit 0

let _ = principal ()
