(**
   Calcul de l'entropie d'un fichier considéré comme source d'octets.

   Compilation :
   [ocamlc -o entropie entropie.ml]

   @author FIL - IEEA - Univ. Lille 1 (oct 2010)
*)

(**
   [entropie fichier] renvoie un couple (n,e) de type (int * float) :
   - n est le nombre de paire d' octets du fichier
   - e est l'entropie en seizet du fichier
*)

let log2 ns =
	if ns = 0. then 
		0.
	else
		(log ns) /. (log 2.);;

		(* CONDITION D'UTILISATION : Nombre paire d'octer dans le fichier "fichier" *)
let entropie fichier = 
	let compteurs = Array.make 65536 0 and somme = ref 0 and opt = ref 0. in
	let  entree = open_in_bin fichier in 
		begin
			try	
				while true do
					let a = (((input_byte entree)lsl 8) + (input_byte entree)) in
					compteurs.(a) <- (compteurs.(a) +1);
					somme := !somme + 1;
				done;
			with
				|End_of_file -> close_in entree; 
		end;
	let e = ref ( ( float_of_int compteurs.(0) ) *. ( log2 ( float_of_int compteurs.(0) )) ) in
		for i = 1 to 65535 do
			if compteurs.(i) <> 0 then
				e := !e +. (float_of_int(compteurs.(i)) *. (log2 (float_of_int compteurs.(i) ) ) );
		done;
	e := ( (log2 (float_of_int !somme) ) -. ( !e /. (float_of_int !somme) ));
    opt := 16. *. ((!e +. 1. +. !e)/.2.);
      (!somme, !e, !opt);;

(**
   [usage ()] imprime sur la sortie standard l'utilisation normale du programme.
*)

let usage () = 
  Printf.printf "Usage : %s <fichier>\n" Sys.argv.(0) ;
  Printf.printf "\t <fichier> = nom du fichier dont on veut l'entropie.\n" ;
  exit 1


(**
   Procédure principale.
*)
let principal () =
  if Array.length Sys.argv <> 2 then
    usage () 
  else
    let nb,ent, opt = entropie Sys.argv.(1) 
    in 
      Printf.printf "%d paire d'octets lu(s).\n" nb ;
      Printf.printf "Entropie = %f bits par seizet.\n" ent ;
	  Printf.printf "Un codage optimal des octets reduirait la taille de ce fichier de %f %%" opt

	

let _ = principal ()


  