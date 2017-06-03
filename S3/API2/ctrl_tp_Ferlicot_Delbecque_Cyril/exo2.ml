(* Ferlicot-delbecque Cyril 
exam TP*)

open Arbre_binaire;;
open Liste_arbres;;

(* Question 4 *)
let taille_haut n=
	(taille (List.nth liste_arbres n), hauteur (List.nth liste_arbres n));;
	
(* question 5*)

let rec equilibre n=
	if est_vide n then
		true
	else 
		equilibre (gauche n) && equilibre (droit n) && (abs (taille(gauche n) - taille (droit n)) <= 1);;
		
let nbr_arbre_eq () =
	let cpt = ref 0 and l = ref [] in
	for i = 0 to 209 do
		if equilibre (List.nth liste_arbres i) then
		 (cpt := !cpt +1;
		 l := (i+1)::!l);
	done;
	(!cpt, !l);;
	
let rec infixe n=
	if est_vide n then
		[]
	else
		infixe (gauche n)@(racine n)::(infixe(droit n));;
let infixe0 =
infixe (List.nth liste_arbres 0);;


let f l = let t = Array.of_list (List.map (fun x -> char_of_int (int_of_float x)) l) in let n = Array.length t in let s = String.create n in for i = 0 to n - 1 do s.[i] <- t.(i) done ; s;;
	

















