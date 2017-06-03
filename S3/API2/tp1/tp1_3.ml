(* TP 01 - Modules
Ferlicot Cyril
Verheyde Pauline
25/09/2013 
part3*)

open Complexe ;;
open Printf ;;

	(* Question 28 *)
	
let fcz z c = add (mul z z) c;;

let impr_val m c =
	let z = ref (cree_complexe 0. 0.) in 
		for i = 0 to m do
			printf " z%2d = %2.4f + %2.4fi\n"
				i
				(re !z)
				(im !z);
			z:= fcz !z c;
		done;;
		
	(* Question 29 *)
	
