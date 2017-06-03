(* Ferlicot-Delbecque Cyril 
TP2 Poker 
26/09/2013 *)

open Printf;;

(** {2 Les types de donnees} *)

type hauteur = Petite of int | Valet | Dame | Roi | As;;
type couleur  = Trefle | Pique | Coeur | Carreau;;
type carte = hauteur * couleur;;

(** {2 Constructeur et selecteurs} *)

let table_hauteur= [|As; Petite 2; Petite 3; Petite 4; Petite 5; Petite 6; Petite 7; Petite 8; Petite 9; Petite 10; Valet; Dame; Roi|];;

let cree s n=
	let coul =
		match s with
			| 'K' -> Carreau
			| 'C' -> Coeur
			| 'P' -> Pique
			| 'T' -> Trefle
			| _ -> failwith "Carte.cree: couleur non valide";
	and haut = 
		try 
			table_hauteur.(n-1);
		with
		Invalid_argument "index out of bounds" -> failwith "Carte.cree: hauteur non valide"; in
	(haut, coul);;

let couleur (_,c)=c;;

let hauteur (h,_)=h;;


(** {2 Fonctions de comparaison} *)

let hauteurs_consecutives h1 h2=
	match (h1,h2) with
		|(Roi,As) | (Valet ,Dame ) | ( Dame, Roi) | (Petite 10 ,Valet ) -> true
		|(Petite n1, Petite n2) -> n2=n1+1
		|_ -> false;;
		
let numero_hauteur h = 
	match h with
 		| Roi-> 13
		| Dame -> 12
		| Valet -> 11
		| Petite n -> n
		| As -> 1 ;;

let compare_hauteurs h1 h2=
	if (numero_hauteur h1) < (numero_hauteur h2) 
	then -1
	else 
		(
			if (numero_hauteur h1) = (numero_hauteur h2) 
			then 0 
			else 1;
		);;


let compare_cartes c1 c2= 
	compare_hauteurs (hauteur c1) (hauteur c2);;

let imprimer_couleur c=
	match c with
		|Trefle -> printf "T"
		| Carreau -> printf "K"
		| Coeur -> printf "C"
		| Pique -> printf "P";;
		
let imprimer_hauteur c=
	match c with 
		| As -> printf "As"
		| Roi-> printf "R"
		| Dame -> printf "D"
		| Valet -> printf "V"
		| Petite n -> printf "%d" n;;

let imprimer_carte c= 
	imprimer_couleur (couleur c);
	printf " ";
	imprimer_hauteur (hauteur c);;

(** {2 Constructions de paquet de cartes}*)

let paquet_ordonne()= 
	let p = Array.make 52 (cree 'T' 1) in 
		for i= 1 to 13 do 
			p.(i-1) <- (cree 'T' i)
		done;
		for i= 1 to 13 do 
			p.(i+12) <- (cree 'C' i)
		done;
		for i= 1 to 13 do 
			p.(i+25) <- (cree 'P' i)
		done;
		for i= 1 to 13 do 
			p.(i+38) <- (cree 'K' i)
		done;
	p;;
	
let _ = Random.self_init();;
		
let battre_paquet()= 
	let p = paquet_ordonne() in 
		for i = 0 to 51 do 
			let place = Random.int 52 and aux= p.(i) in 
				p.(i) <- p.(place) ;
				p.(place)<- aux;
		done;
		p;;
		
		
		
		
		
		
		