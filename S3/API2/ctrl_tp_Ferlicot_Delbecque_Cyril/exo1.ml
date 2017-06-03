(* Exam TP
Ferlicot-delbecque Cyril 
exo1*)

open Big_int;;

	(* Fonctions � utiliser *)

let big_2 = add_big_int unit_big_int unit_big_int;;

let rec fact_big_int n=
	mult_big_int n (fact_big_int ((sub_big_int n unit_big_int)));;
(* 
	Fonction [catalan n] prend un entier n et renvoit le nombre de catalan correspondant sachant que C(n) = ( (2n)! ) / ( ( (n+1)! ) * (n!) ) 
*)

let catalan n =
	let n2 = big_int_of_int n 
	and res = ref zero_big_int in
		res := mult_big_int big_2 n2;
		res:= fact_big_int (!res);
		res := div_big_int !res ( mult_big_int ( fact_big_int ( add_big_int n2 unit_big_int) ) ( fact_big_int n2 ) );
	!res;;
let impr n=
	 Printf.printf " %s \n" (string_of_big_int (catalan n));;
	(* Fonction usage *)
	
let usage () =
  Printf.printf "Usage : %s \n" Sys.argv.(0) ;
  Printf.printf "avec\t %s un entier dont la fonction renverra le nombre de Catalan correspondant \n" Sys.argv.(1) ;
  exit 1
  
	(* Fonction principale *)

let principal () =
  if Array.length Sys.argv <> 2 then
    usage ()
  else 
      Printf.printf " %s \n" (string_of_big_int (catalan (int_of_string Sys.argv.(1))))


(**
   Déclenchement du programme en mode compilé.
*)
let _ = 
  if not (!Sys.interactive) then principal ()






















