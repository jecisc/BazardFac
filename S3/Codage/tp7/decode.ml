(* Ferlicot-Delbecque Cyril
TP7: Arbre binaires *)

open Decodage_prefixe;;
(** 
	[usage ()] imprime l'usage normal de l'utilitaire. 
*) 

let usage () = 
	Printf.printf "Usage : %s est une fonction prenant un fichier codé en binaire et un fichier cible où sera décodé le fichier." Sys.argv.(0) ; 
	exit 1 

let principal () = 
	if Array.length Sys.argv <> 3 then  
		usage ()  
	else   
		decoder_fichier Sys.argv.(1) Tp7.arbre_un_codage Sys.argv.(2);;
	 
	(** appel a la procedure principal *)  
	 
let _ = principal ()











