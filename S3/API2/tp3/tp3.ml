(* Ferlicot-Delbecque Cyril
TP3 Tour de Hano�
10/10/2013*)

	(* Question 4*)
	
(* 
# deplacer_disque A C;;
- : unit = ()
# deplacer_disque A C;;
Exception: Hanoi_utils.Deplacement_impossible.

Cela d�clanche une exception *)

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
Dans un premier il va d�placer n-1 disque du d�part vers la tour de stockage, puis il va d�placer le disque de la tour de d�part vers la tour d'arriv�e et enfin d�placer n-1 disque de la tour de stockage vers la tour d'arriv�e.
Donc Hn est �gale � la somme des d�placements de ces trios parties.  *)