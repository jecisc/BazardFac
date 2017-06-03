(* 
Auteur : Ferlicot Cyril 
Date : 4/10/2012
Objet : Exercice A-9
Situation initiale :
Tas 1 : "(T+K+C+P)(T+K+C+P)" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Finale:
Tas 1 : "[K+C]" Tas 2 : "[T+P]"
Tas 3 : "" Tas 4 : ""

*) 

open Cartes ;;

begin
(* initialisation des tas *)
	
	init_tas (1, "(T+K+C+P)(T+K+C+P)") ; 
	init_tas (2, "") ; 
	init_tas (3, "") ; 
	init_tas (4, "") ;
	
(* déplacement*)

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
	);
	
	if tas_non_vide (3) 
	then (
		deplacer_sommet (3,1)
	);
	
end;;
