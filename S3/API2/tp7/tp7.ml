(* TP7: Arbres binaires
Ferlicot-Delbecque Cyril *)

open Arbre_binaire ;;
open Exemples_arbres;;
open Big_int;;

	(* Question 3 *)
	
let a1 = cree 3 vide vide
and a2 = cree 3 (cree 1 vide vide) vide
and a3 = cree 3 (cree 1 vide vide) (cree 4 (cree 1 (cree 9 vide vide) vide) (cree 5 vide (cree 2 vide vide)));;
	
		(* Question 6 - 8 - 10 *)
		
(* 
# taille a1;;
- : int = 1
# taille a2;;
- : int = 2
# taille a3;;
- : int = 7
# hauteur a1;;
- : int = 0
# hauteur a2;;
- : int = 1
# hauteur a3;;
- : int = 3
# imprimer print_int a1;;
(3,(),())- : unit = ()
# imprimer print_int a2;;
(3,(1,(),()),())- : unit = ()
# imprimer print_int a3;;
(3,(1,(),()),(4,(1,(9,(),()),()),(5,(),(2,(),()))))- : unit = ()
*)

	(* Question 13 *)
	
let taille_max t =
	let l = Array.length t and res = ref 0 in
		for i = 1 to (l-1) do
			if (taille t.(!res)) < (taille t.(i)) then
				res := i ;
		done;
	(taille t.(!res))
and taille_min t = 
let l = Array.length t and res = ref 0 in
		for i = 1 to (l-1) do
			if (taille t.(!res)) > (taille t.(i)) then
				res := i ;
		done;
	(taille t.(!res));;
	
	(* Question 14 *) 
	
let haut_max t =
	let l = Array.length t and res = ref 0 in
		for i = 1 to (l-1) do
			if (hauteur t.(!res)) < (hauteur t.(i)) then
				res := i ;
		done;
	(hauteur t.(!res))
and haut_min t = 
let l = Array.length t and res = ref 0 in
		for i = 1 to (l-1) do
			if (hauteur t.(!res)) > (hauteur t.(i)) then
				res := i ;
		done;
	(hauteur t.(!res));;
	
(*
# taille_max tab_arbres;;
- : int = 99
# taille_min tab_arbres;;
- : int = 0
# haut_min tab_arbres;;   
- : int = -1
# haut_max tab_arbres;;
- : int = 15

*)
	
	(* Question 15 *)

let comp a =
	let tab_res = Array.make 15 (0, 0) in 
		for i = 0 to 14 do
			for j = 0 to ((Array.length a) -1) do
				if (hauteur a.(j) = i) then
					if (taille a.(j) > fst(tab_res.(i))) then
						tab_res.(i) <- (taille a.(j), j);
			done;
		done;
	tab_res;;
	
let rec puiss b n =
        if n =0 then 1
                else b * puiss b (n-1);;	

comp tab_arbres;;

let  max =
	let res = Array.make 15 0 in
	for i = 0 to 14 do
		res.(i) <-  ((puiss 2 (i + 1)) -1) 
	done;
res;;
		
(* On remarque que pour la hauteur = 2 il y a bien une hauteur qui a la taille maximale. 
Pour les autres les arbres la taille qui s'approche le plus est stockée dans "comp tab_arbres". cette fonction renvoit la hauteur la plus proche et l'indice de l'abre correspondant à cette hauteur.
*)					

	(* Question 16 *)

let rec nbre_arbres n=
	if n=0 then
		1
	else
			let res = ref 0 in
				for i = 0 to n-1 do
					res := !res + (nbre_arbres i) * (nbre_arbres (n - 1 - i));
				done;
	!res;;

	(* Question 17 *)
	
let question17 () =
	for i = 0 to 15 do
		Printf.printf "%d \n" (nbre_arbres i) 
	done;;
	
(* on constate que le calcul des dernière valeur augmente de manière exponentielle. *)
	
	(* Question 18 *)

let nbre_arbres2 n =
	let t = Array.make (n+1) 1 in
		for i = 1 to n do
		      let cpt = ref 0 and a= ref (t.(i-1)) in 
			while !cpt <> (i-1) do
			  a:= !a + (t.(!cpt) * t.(i - !cpt -1));
			  cpt := !cpt +1;
			  t.(i) <- !a;
			 done;
		done;
	t.(n);;
	
	  (* Question 19 *)
	  
	
let question19 () =
	for i = 0 to 15 do
		Printf.printf "%d \n" (nbre_arbres2 i) 
	done;;
	
(* On remarque une grande amélioration du temps de calcul. La première fonction avait un léger temps d'attente alors que la seconde est instantanée. *)

	(* Question 20 *)
	
	
(* 
# nbre_arbres2 19;;
- : int = 1767263190

La réponse est ici satisfaisante mais réalisé sur une machine 64bits.

# nbre_arbres2 41;;
- : int = -4120532791790927356
# nbre_arbres2 42;;
- : int = 1896079898177963976


On remarque ici qu'à partir de c41 le résultat renvoyé est négatif, cela s'explique par le fait que ocaml est limité par les entiers machines.

*)

	(* Question 21 *)
	
let nbre_arbres2 n =
	let n2= Big_int.big_int_of_int n and  t = Array.make (n+1) Big_int.unit_big_int in
		for i = 1 to n do
		      let cpt = ref 0 and a= (t.(i-1)) in 
			while !cpt <> (i-1) do
			  a = Big_int.add_big_int a (t.(!cpt) * t.(i - !cpt -1));
			  cpt := !cpt +1;
			  t.(i) <- a;
			 done;
		done;
	t.(n);;	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	