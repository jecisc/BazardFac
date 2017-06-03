(* resolution_hanoi.ml
Ferlicot-Delbecque Cyril *)

open Hanoi_utils ;;
open Printf;;

let rec hanoi n a b =
	let c =
		match (a, b) with
		| (A, B) | (B, A) -> C
		| (B, C) | (C, B) -> A
		| (_,_) -> B in
		
	if n > 0 then 
		(
					hanoi (n-1) a c ;
					deplacer_disque a b;
					printf " %c -> %c \n" (tour_en_caractere a) (tour_en_caractere b);
					hanoi (n-1) c b
		);;








