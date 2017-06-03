(* 
Auteur : Ferlicot Cyril 
Date : 4/10/2012
Objet : resoudre A9
*) 

open Cartes ;;

	
let resoudre () = 
	if sommet_pique(1) || sommet_trefle(1)
	then (
		deplacer_sommet(1,2)
	)
	else ( 
		deplacer_sommet(1,3)
	);
	
	if sommet_pique(1) || sommet_trefle (1)
	then (
		deplacer_sommet (1,2)
	)
	else ( if tas_non_vide (3) 
			then (
				deplacer_sommet (3,1)
				);
	);