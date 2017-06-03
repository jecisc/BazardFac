(* Ferlicot-Delbecque Cyril
TP3 Tour de Hanoï
10/10/2013*)

	(* Question 4*)
	
(* 
# deplacer_disque A C;;
- : unit = ()
# deplacer_disque A C;;
Exception: Hanoi_utils.Deplacement_impossible.

Cela déclanche une exception *)

	(* Question 5 *)
	
(* # deplacer_disque A C;;
- : unit = ()
# deplacer_disque A C;;
Exception: Hanoi_utils.Deplacement_impossible.
*)

	(* Question 18 *)
	
(* 
Hn = (2 ^n) -1
*)

	(* Question 19 *)
	
(* 
Notre algorithme fontionne en 3 temps.
Dans un premier il va déplacer n-1 disque du départ vers la tour de stockage, puis il va déplacer le disque de la tour de départ vers la tour d'arrivée et enfin déplacer n-1 disque de la tour de stockage vers la tour d'arrivée.
Donc Hn est égale à la somme des déplacements de ces trios parties.  *)