(**
   Implémentation du module Liste.

   @author FIL - IEEA - Univ. Lille 1 (oct 2010)
*)
open Printf;;

type 'a liste = Vide | Cons of 'a * 'a liste;;

exception Liste_vide;;

exception Liste_trop_courte;;

let liste_vide = Vide;;

let ajoute_en_tete a l =
  Cons (a,l);;
  
let p = (ajoute_en_tete 'a' ( ajoute_en_tete 'g' (ajoute_en_tete 'p' (ajoute_en_tete 'g' (ajoute_en_tete 'c' liste_vide)))));;
 
let q = (ajoute_en_tete 1 ( ajoute_en_tete 5 (ajoute_en_tete 4 (ajoute_en_tete 6 (ajoute_en_tete 7 liste_vide)))));;
 
let tete l =
  match l with
    | Vide -> raise Liste_vide
    | Cons (a,_) -> a;;

let reste l = 
  match l with
    | Vide -> raise Liste_vide
    | Cons (_,l) -> l;;

let est_vide l =
  l = Vide;;

	(* Question 2 *)
	
let imprime_int l =
	printf "[" ;
	let l2 = ref l in
		if not(est_vide !l2)  then
			(printf "%d" (tete !l2);
			l2 := reste !l2;
			while not(est_vide !l2) do
				printf ";%d" (tete !l2);
				l2 := reste !l2;
			done;)
		else
			raise Liste_vide;
	printf "]";;
	
let imprime i l=
	printf "[";
	let l2 = ref l in
		if not(est_vide !l2)  then
			(i (tete !l2);
			l2 := reste !l2;
			while not(est_vide !l2) do
				printf ";";
				i (tete !l2);
				l2 := reste !l2;
			done;)
		else
			raise Liste_vide;
	printf "]";;

(* Question 2-3 : On peut utiliser imprime_int ou alors utiliser "imprime (Printf.printf "%d") l" avec l la liste d'entiers *)

	(* Question 3 *)
	
let rec longueur l =
	if est_vide l then
		0 
	else 
		1+ longueur (reste l);;
		
	(* Question 4 *)
	
let rec n_ieme l n =
	if est_vide l then
		raise Liste_trop_courte
	else 
		(
			if n = 1 then 
				(tete l) 
			else (n_ieme (reste l) (n-1));
		);;

	(* Question 5 *)
	
let rec dernier l =
	if est_vide l then
		raise Liste_vide
	else 
		(
			if est_vide (reste l) then
				(tete l)
			else
				dernier (reste l)
		);;
	
	(* Question 6 *)
	
let rec liste_decroissante n=
	if n = 0 then
		liste_vide
	else 
		ajoute_en_tete n (liste_decroissante (n-1));;
	
	(* Question 7*)
	
let liste_croissante n=
	let rec aux n l=
		if n= 0 then
			l
		else
			aux (n-1) (ajoute_en_tete n l) in
	aux n liste_vide;;
	
	(* Question 8 *)
	
Random.self_init();;

let rec liste_alea n a b=
	if n = 1 then
		liste_vide
	else 
		ajoute_en_tete ((Random.int (b-a)) + a +1)  (liste_alea (n-1) a b);;
		
	
	(* Question 9 *)
	
let liste_renverse l=
	let l2 = ref liste_vide in 
	let rec aux l l2=
		if not(est_vide l) then
			(
				l2 := ajoute_en_tete (tete l) !l2;
				aux (reste l) l2
			)
		else !l2; in
	aux l l2;;
	
	(* Question 10 *)
	
let concatene l1 l2=
	let invl1 = liste_renverse l1 and l3 = ref l2 in
		let rec aux l1 l2 =
			if not(est_vide l1) then
				(
					l3 := ajoute_en_tete (tete l1) !l3;
					(aux (reste l1) l2)
				)
			else !l3; in
	aux invl1 l2;;
					
	(* Question 11 *)
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	










