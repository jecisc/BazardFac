(* 
Auteur : Ferlicot Cyril 
Date : 4/10/2012
Objet : Exercice A-11
Situation initiale :
Tas 1 : "[K+C][T+P]" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Situation Finale :
Tas 1 : "[T+P][K+C]" Tas 2 : ""
Tas 3 : "" Tas 4 : ""



*) 

open Cartes ;;

begin
(* initialisation des tas *)
	
	init_tas (1, "[K+C][T+P]") ; 
	init_tas (2, "") ; 
	init_tas (3, "") ; 
	init_tas (4, "") ;
	
(* Deplacement de toutes les cartes noirs sur le tas 2*)

	while tas_non_vide (1) && sommet_pique(1) || tas_non_vide(1) &&  sommet_trefle(1)
	do ( 
		deplacer_sommet(1,2);
	) 
	done;
	
(* Deplacement de toutes les cartes rouges sur le tas 3 *)

	while tas_non_vide(1)
	do (
		deplacer_sommet (1,3);
	)
	done;

(* Deplacement des cartes dans l'ordre *)

	while tas_non_vide (2)
	do ( 
		deplacer_sommet (2,1);
	)
	done;
	
	while tas_non_vide (3)
	do (
		deplacer_sommet (3,1);
	)
	done;
	
end;;
