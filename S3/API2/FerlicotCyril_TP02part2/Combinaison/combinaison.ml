(* Ferlicot Cyril 
TP 02 - 03/10/2013
Module Combinaison *)

open Prinft;;

open Main;;

open Carte;;


type combinaison = Quinte of Carte.hauteur | Carre of Carte.hauteur |Full of Carte.hauteur * Carte.hauteur | Couleur of Carte.hauteur | Suite of Carte.hauteur | Brelan of Carte.hauteur | Double_paire of Carte.hauteur * Carte.hauteur | Paire of Carte.hauteur | Main_vide of Carte.hauteur;;

let  imprimer c=
	match c with
	|Quinte of n -> printf "Quinte de hauteur %d" n
	|Carre of n -> printf "Carre de hauteur %d" n
	|Full of n * n -> printf "Full de hauteur %d" n 
	|Couleur of n -> printf "Couleur de hauteur %d" n
	|Suite of n -> printf "Suite de hauteur %d" n
	|Brelan of n -> printf "Brelan de hauteur %d" n
	|Double_paire of n * n -> printf "Double paire de %d" n
	|Paire of n -> printf "Paire de %d" n
	|Main_vide of n-> printf "Main vide.";;
	
	
let hauteurs_egales a b=
	(compare_hauteurs a b ) = 0;;

let hauteurs_egales2 a b c=
	((compare_hauteurs a b ) = 0 )&& ( compare_hauteurs b c) = 0;;

let paire m =
	if hauteurs_egales (carte m 1) (carte m 2) then 
		(true, hauteur (carte m 2))
	else
		( 
			if hauteurs_egales (carte m 2) (carte m 3) then 
				(true, hauteur (carte m 3))
			else
				(
					if hauteurs_egales (carte m 3) (carte m 4) then 
						(true, hauteur (carte m 4))
					else
						(
							if hauteurs_egales (carte m 4) (carte m 5) then 
								(true, hauteur (carte m 5))
							else
								(false, hauteur (carte m 5));
						);
				);
		);;

let double_paire m=
	if hauteurs_egales (carte m 1) (carte m 2) && hauteurs_egales (carte m 3) (carte m 4) then
		(true, hauteur (carte m 4), hauteur (carte m 2)) 
	else 
		(
			if hauteurs_egales (carte m 1) (carte m 2) && hauteurs_egales (carte m 4) (carte m 5) then
				(true, hauteur (carte m 5), hauteur (carte m 2))
			else
				(
					if hauteurs_egales (carte m 2) (carte m 3) && hauteurs_egales (carte m 4) (carte m 5) then
						(true, hauteur (carte m 5), hauteur (carte m 3))
					else 
						(false, hauteur (carte m 5));
				);
		);;


let brelan m=
	if hauteurs_egales2 (carte m 1) ( carte m 2) (carte m 3)) then
		(true, hauteur (carte m 3)) 
	else 
		(
			if hauteurs_egales2 (carte m 2) ( carte m 3) (carte m 4) then
				(true, hauteur (carte m 4)) 
			else
				( 
					if hauteurs_egales2 (carte m 3) ( carte m 4) (carte m 5) then
						(true, hauteur (carte m 5))
					else
						(false, hauteur (carte m 5);
				);
		);;


let suite m =
	(hauteurs_consecutives (carte m 1) (carte m 2) && hauteurs_consecutives (carte m 2) (carte m 3) && hauteurs_consecutives (carte m 3) (carte m 4) && hauteurs_consecutives (carte m 4) (carte m 5), hauteur (carte m 5));; 


let couleur m=
	((couleur m 1) = (couleur m 2 ) && (couleur m 2) = (couleur m 3) && (couleur m 3) = (couleur m 4) && (couleur m 4) = (couleur m 5), hauteur (carte m 5);; 


let full m=
	if fst (brelan m) then 
		(
			if hauteurs_egales (carte m 1) (carte m 2) && hauteurs_egales2 (carte m 3) ( carte m 4) (carte m 5) then
				(true, hauteur (carte m 5), hauteur (carte m 2))
			else
				(
					if hauteurs_egales2 (carte m 1) (carte m 2) (carte m 3) && hauteurs_egales ( carte m 4) (carte m 5) then
				(true, hauteur (carte m 3), hauteur (carte m 5));
		)
	else
		(false, hauteur (carte m 5);;


let carre m=
	if hauteurs_egales (carte m 1) (carte m 2) && hauteurs_egales (carte m 2) (carte m 3) && hauteurs_egales (carte m 3) (carte m 4) then
		(true, hauteur (carte m 4)) 
	else 
		(
			if hauteurs_egales (carte m 2) (carte m 3) && hauteurs_egales (carte m 3) (carte m 4) && hauteurs_egales (carte m 4) (carte m 5) then 
				(true, hauteur (carte m 5))
			else 
				( (false, hauteur (carte m 5))
				);
		);;


let quinte m=
	match (suite m, couleur m) with
	|((true, h), true) -> (true, h)
	|_ -> false;;
	
	
	
let evalue m=
	if fst (quinte m) then
		Quinte of snd (quinte m)
	else
		(
			if fst (carre m) then
				Carre of snd (quinte m) 
			else
				(
					if fst (full m) then
						(
							let (a, b, c) = full m in
								Full of (b , c);
						)
					else 
						( 
							if 
					
					
					
					
	



val compare : combinaison -> combinaison -> int




















