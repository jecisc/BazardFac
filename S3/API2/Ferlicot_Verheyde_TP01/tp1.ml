(* TP 01 - Modules
Ferlicot Cyril
Verheyde Pauline
19/09/2013 *)

	(* Question 2 *)

(* 17 déclarations ont été rendues publiques *)

	(* Question 3 *)
	
(* Il y a également 17 déclarations dans le fichier .ml donc il n'y a aucune déclarations qui n'ont pas été rendues publiques *)
	
	(* Question 4 *)
	
(* La réalisation du type complexe est : "type t = {re : float ; im : float}" *)

	(* Question 5 *)
	
(* 
ferlicotdelbe@116p11:~/tp/API2/tp1$ cd Complexe1
ferlicotdelbe@116p11:~/tp/API2/tp1/Complexe1$ ocamlc -c complexe.mli
ferlicotdelbe@116p11:~/tp/API2/tp1/Complexe1$ ocamlc -c complexe.ml
ferlicotdelbe@116p11:~/tp/API2/tp1/Complexe1$ ls
complexe.cmi  complexe.cmo  complexe.ml  complexe.mli
*)

	(* Question 6 *)
	
(* 
ferlicotdelbe@116p11:~/tp/API2/tp1/Complexe1$ cd ..
ferlicotdelbe@116p11:~/tp/API2/tp1$ ocaml -I complexe1/complexe.cmo
        Objective Caml version 3.12.1

# 
*)


open Complexe ;;

	(* Question 7 *)
	
let j = cree_complexe 1. (sqrt(3.)/.2.) ;;
let j2= { re = 1. ; im = (sqrt(3.)/.2.) };;


	(* Question 8 *)
	
let expres z = (re z , im z) ;;
let expres2 z = (z.re , z.im);;

	(* Question 9 *)

let z = 
div (sub un i) (add un i);;

norme z;;

inv z;;

(*
inv (add z i);;
*)

(* Nous avons une exception ici car z + i = 0 *) 

	(* Question 10 *)
	
(* Le code va effactuer 4 fois l'opération z * i.  *)
(* On constate que cela ne fonctionne pas car le i est interprété comme l'indice de la boucle for et non comme le complexe. *)

	(* Question 11 *)
	
 let z2 = ref un in 
	for i = 1 to 4 do 
	z2 := mul !z2 Complexe.i; 
	done ; 
!z2;; 


	(* Question 13 *)
	
(* ferlicotdelbe@116p11:~/tp/API2/tp1$ ocamlc -I Complexe1 complexe.cmo essai_complexe.ml -o essai_complexe
ferlicotdelbe@116p11:~/tp/API2/tp1$ ls
Complexe1  Complexe4           essai_complexe.cmo  mandelbrot.ml
Complexe2  essai_complexe      essai_complexe.ml   tp1.ml
Complexe3  essai_complexe.cmi  iteration.mli
*)

	(* Question 14 *)
	
(* Si on donne des paramétres non numérique ou en nombre incorrect on va avoir une erreur qui va faire appel à la fonction usage *)

(* 
ferlicotdelbe@116p11:~/tp/API2/tp1$ ./essai_complexe 1 2
Nombre complexe z = 1.000000 + 2.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 2.000000
Norme de z = 2.236068
Conjugue de z = 1.000000 + -2.000000i
Inverse de z = 0.200000 + -0.400000i
(z + 1) / (z - 1) = 1.000000 + -1.000000i

ferlicotdelbe@116p11:~/tp/API2/tp1$ ./essai_complexe 1 0
Nombre complexe z = 1.000000 + 0.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 0.000000
Norme de z = 1.000000
Conjugue de z = 1.000000 + -0.000000i
Inverse de z = 1.000000 + -0.000000i
*)

(* La différence se trouve dans le code " if z <> un then begin" *)




