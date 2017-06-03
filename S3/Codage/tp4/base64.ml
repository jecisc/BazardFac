(** 
	Utilitaire d'encodage/decodage de fichiers en base64. 
	Necessite le module Codage64. 

	@author FIL - UFR IEEA - Univ. Lille1 (oct 2010)
*) 

open Codage64 

(** 
	[usage ()] imprime l'usage normal de l'utilitaire. 
*) 

let usage () = 
	Printf.fprintf stderr "Usage : %s [-e|-d] <fichier>\n" Sys.argv.(0) ;  
	Printf.fprintf stderr "\t -e pour encoder\n" ; 
	Printf.fprintf stderr "\t -d pour decoder\n" ;  
	exit 1 

let principal () =  
	if Array.length Sys.argv <> 3 then  
		usage ()  
	else  
		let option = Sys.argv.(1)  
		and fichier = Sys.argv.(2) in  
			match option with 
			| "-e" -> encoder_base64 fichier ; exit 0  
			| "-d" -> decoder_base64 fichier ; exit 0  
			| _ -> usage ()  
	 
	(** appel a la procedure principal *)  
	 
let _ = principal ()