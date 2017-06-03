(* 
Auteur : Ferlicot Cyril 
Date : 4/10/2012
Objet : declaration d'une procedure pour initialiser les quatre tas de cartes 
*) 

open Cartes ;;

(* 
Procedure : initialiser 
Type : string * string * string * string -> unit 
initialiser (d1, d2, d3, d4) : initialise 
	- le tas 1 avec la description donnee par le parametre d1 ; 
	- le tas 2 avec la description donnee par le parametre d2 ; 
	- le tas 3 avec la description donnee par le parametre d3 ; 
	- le tas 4 avec la description donnee par le parametre d4. 
	
Exemple : 
initialiser ("", "CT", "KKK", "P") 
initialise 
	- le tas 1 avec aucune carte ; 
	- le tas 2 avec un coeur surmonte d'un trefle ; 
	- le tas 3 avec trois carreaux ; 
	- le tas 4 avec un pique. 
*) 
	
let initialiser (d1, d2, d3, d4) = 
	init_tas (1, d1) ; 
	init_tas (2, d2) ; 
	init_tas (3, d3) ; 
	init_tas (4, d4)
	
