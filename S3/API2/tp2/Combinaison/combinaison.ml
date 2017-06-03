(* Ferlicot Cyril 
TP 02 - 03/10/2013
Module Combinaison *)

open Printf;;
open Carte;;
open Main;;



type combinaison = Quinte of Carte.hauteur | Carre of Carte.hauteur |Full of Carte.hauteur*Carte.hauteur | Couleur of Carte.hauteur | Suite of Carte.hauteur | Brelan of Carte.hauteur | Double_paire of Carte.hauteur * Carte.hauteur | Paire of Carte.hauteur | Main_vide;;

let  imprimer c=
	match c with
	|Quinte n -> printf "Quinte de hauteur "; imprimer_hauteur(n);
	|Carre n -> printf "Carre de hauteur " ; imprimer_hauteur(n);
	|Full (n, u) -> printf "Full de hauteur " ; imprimer_hauteur(n); 
	|Couleur n -> printf "Couleur de hauteur" ; imprimer_hauteur(n);
	|Suite n -> printf "Suite de hauteur" ; imprimer_hauteur(n);
	|Brelan n -> printf "Brelan de hauteur" ; imprimer_hauteur(n);
	|Double_paire (n, u) -> printf "Double paire de" ; imprimer_hauteur(n); 
	|Paire n -> printf "Paire de " ; imprimer_hauteur(n);
	|Main_vide -> printf "Main vide.";;
	
let hauteurs_egales a b=
	(compare_hauteurs (hauteur(a)) (hauteur(b)) ) = 0;;

let hauteurs_egales2 a b c=
	((compare_hauteurs (hauteur(a)) (hauteur(b)) ) = 0 )&& ( compare_hauteurs (hauteur(b)) (hauteur(c))) = 0;;

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
		(true, (hauteur (carte m 4), hauteur (carte m 2))) 
	else 
		(
			if hauteurs_egales (carte m 1) (carte m 2) && hauteurs_egales (carte m 4) (carte m 5) then
				(true, (hauteur (carte m 5), hauteur (carte m 2)))
			else
				(
					if hauteurs_egales (carte m 2) (carte m 3) && hauteurs_egales (carte m 4) (carte m 5) then
						(true, (hauteur (carte m 5), hauteur (carte m 3)))
					else 
						(false, (hauteur (carte m 4), hauteur (carte m 5)));
				);
		);;


let brelan m=
	if (hauteurs_egales2 (carte m 1) ( carte m 2) (carte m 3) )then
		(true, hauteur (carte m 3)) 
	else 
		(
			if (hauteurs_egales2 (carte m 2) ( carte m 3) (carte m 4)) then
				(true, hauteur (carte m 4)) 
			else
				( 
					if (hauteurs_egales2 (carte m 3) ( carte m 4) (carte m 5)) then
						(true, hauteur (carte m 5))
					else
						(false, hauteur (carte m 5));
				);
		);;


let suite m =
	(
		(
			(hauteurs_consecutives (hauteur(carte m 1)) (hauteur(carte m 2)))&& 
			(hauteurs_consecutives (hauteur(carte m 2)) (hauteur(carte m 3))) && 
			(hauteurs_consecutives (hauteur(carte m 3)) (hauteur(carte m 4))) && 
			(hauteurs_consecutives (hauteur(carte m 4)) (hauteur(carte m 5)))
		), (hauteur (carte m 5))
	);;

let couleur m=
	(
		(
			((couleur (carte m 1)) = (couleur (carte m 2))) && 
			((couleur (carte m 2)) = (couleur (carte m 3))) && 
			((couleur (carte m 3)) = (couleur (carte m 4))) && 
			((couleur (carte m 4)) = (couleur (carte m 5)))
		), (hauteur (carte m 5))
	);; 


let full m=
	if ((hauteurs_egales (carte m 1) (carte m 2)) && (hauteurs_egales2 (carte m 3) ( carte m 4) (carte m 5))) then
		(true, ((hauteur (carte m 5)), (hauteur (carte m 2))))
	else
		(
			if ((hauteurs_egales2 (carte m 1) (carte m 2) (carte m 3)) && (hauteurs_egales ( carte m 4) (carte m 5))) then
				(true, (hauteur (carte m 3), hauteur (carte m 5)))
		
			else
				(false, ((hauteur (carte m 4), (hauteur (carte m 5)))));
		);;


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
	|((true, h),( true, _)) -> (true, h)
	|(_,h),(_,_)-> (false, h);;
	
	
	
let evalue m=
	if (fst (quinte m)) then
		Quinte (snd (quinte m))
	else
		(
			if (fst (carre m)) then
				Carre (snd (quinte m) )
			else
				(
					if (fst (full m)) then
						Full (fst (snd (full m)), snd  (snd (full m)) )
					else 
						( 
							if (fst (couleur m)) then
								Couleur (snd (couleur m))
							else
								(
									if (fst (suite m)) then
										Suite (snd (suite m))
									else 
										(
											if (fst (brelan m)) then 
												Brelan (snd (brelan m))
											else 
												(
													if (fst (double_paire m)) then
														Double_paire (fst (snd (double_paire m)), snd (snd (double_paire m)))
													else
														(
															if (fst (paire m)) then
																Paire (snd (paire m))
															else
																Main_vide ;
														);
												);
										);
								);
						);
				);
		);;
							
					
					
					
					
	

let comp a b=
	if a > b then 1 else ( if a = b then 0 else 1;);;

let compare c1 c2=
	match (c1, c2) with
		| (Quinte h1, Quinte h2) -> comp h1 h2
		| (Quinte h1, _) -> 1
		| (_, Quinte h1) -> -1
		| (Carre h1, Carre h2) -> comp h1 h2
		| (Carre h1, _) -> 1
		| (_, Carre h1) -> -1
		| (Full (h11, h12), Full (h21, h22)) -> comp h11 h21
		| (Full (h11, h12), _) -> 1
		| (_, Full (h11, h12)) -> -1
		| (Couleur h1, Couleur h2) -> comp h1 h2
		| (Couleur h1, _) -> 1
		| (_, Couleur h1) -> -1
		| (Suite h1, Suite h2) -> comp h1 h2
		| (Suite h1, _) -> 1
		| (_, Suite h1) -> -1
		| (Brelan h1, Brelan h2) -> comp h1 h2
		| (Brelan h1, _) -> 1
		| (_, Brelan h1) -> -1
		| (Double_paire (h11, h12), Double_paire (h21, h22)) -> comp h11 h21
		| (Double_paire (h11, h12), _) -> 1
		| (_, Double_paire (h11, h12)) -> -1
		| (Paire h1, _) -> 1
		| (_, Paire h1) -> -1
		| (_,_) -> 0;;
		




















