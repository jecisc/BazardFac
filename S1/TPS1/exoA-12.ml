(* 
Auteur : Ferlicot Cyril 
Date : 4/10/2012
Objet : Exercice A-12
Situation initiale :
Tas 1 : "[K]" Tas 2 : "[T]"
Tas 3 : "" Tas 4 : ""
Situation Finale:
Tas 1 : "[K]" Tas 2 : ""
Tas 3 : "[KT]" Tas 4 : ""
Ou:
Tas 1 : "" Tas 2 : "[T]"
Tas 3 : "[KT]" Tas 4 : ""

*) 

open Cartes ;;

begin
(* initialisation des tas *)
	
	init_tas (1, "[K]") ; 
	init_tas (2, "[T]") ; 
	init_tas (3, "") ; 
	init_tas (4, "") ;
	
(* Deplacement des cartes K et T sur le tas 3 avec une boucle de un K, un P, un K, un P... jusqu'à ce qu'il n'y ai plus d'une des deux cartes*)

	while tas_non_vide (1)  && tas_non_vide(2) 
	do ( 
		deplacer_sommet(1,3);
		deplacer_sommet(2,3);
	) 
	done;

end;;
