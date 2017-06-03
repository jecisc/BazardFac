(* Ferlicot-Delbecque Cyril 
	TP8 *)
	
	(* Question 1 *)
	
(* 
La valeur de l'entropie est maximale quand la distribution de probabilité est uniforme donc pour des fichiers contenant les 256 caractères de manière égale. 
*)

	(* Question 2 *)
	
(* H(s) = SOMME ( Pr(S=s)I(s)) avec I(s) = -log2 (Pr (S=s)).
Or Pr(S=s) = ns/N d'où
H(s) = SOMME ( ns/N * (-log2 (ns/N)))
H(s) = log2N - SOMME(ns/N * (log2ns))
H(s) = log2N - (SOMME (ns*log2ns))/N
*)

	(* Question 4 *)
	
(*
C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "cigale.txt"
624 octets lu(s).
Entropie = 4.507422 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "codage.bmp"
378054 octets lu(s).
Entropie = 4.447328 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "codage.png"
64951 octets lu(s).
Entropie = 7.986496 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "sonnet18.txt"
626 octets lu(s).
Entropie = 4.397370 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "entropie.ml"
1882 octets lu(s).
Entropie = 4.801653 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "test_archive.tar.gz"

136480 octets lu(s).
Entropie = 7.995488 bits par octet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie "entropie"
48490 octets lu(s).
Entropie = 3.281179 bits par octet.
*)

	(* Question 6 *)
	
(* 
C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "cigale.txt"
312 paire d'octets lu(s).
Entropie = 6.917471 bits par seizet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "codage.bmp"
189027 paire d'octets lu(s).
Entropie = 6.728875 bits par seizet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "codage.png"
32475 paire d'octets lu(s).
Entropie = 14.399684 bits par seizet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "entropie.ml"
941 paire d'octets lu(s).
Entropie = 7.677813 bits par seizet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "sonnet18.txt"
313 paire d'octets lu(s).
Entropie = 6.872252 bits par seizet.

C:\Users\JeCisC\tp\tp8\fichiers_a_tester>ocamlrun entropie2 "test_archive.tar.gz
"
68240 paire d'octets lu(s).
Entropie = 15.164215 bits par seizet.
*)

	(* Question 7 *)
	
(* L'entropie en seizet est supérieurs à l'entropie en octet. Elle est également légérement inférieur au double de l'entropie en octet.  *)

	(* Question 8 *)
	
(*
Nous pouvons encadrer la longueur moyenne d'un codage, ns, par:
	H(S) =< ns < H(S) + 1 dans le cas d'un codage optimal. 
	
	Si on appel N la taille d'un fichier on peut aller donner l'encadrement suivant :
	
	H(S) * n =< N = ns * n < (H(S) +1) * n avec n le nombre de caractère du fichier.
*)

	(* Queston 9 *)
	
(* 
C:\Users\JeCisC\tp\tp8>ocamlrun entropie "entropie-squelette.ml"
1378 octets lu(s).
Entropie = 4.728597 bits par octet.
Un codage optimal des octets reduirait la taille de ce fichier de 41.828780 %
*)

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	