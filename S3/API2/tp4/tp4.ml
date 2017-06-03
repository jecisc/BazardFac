(* Ferlicot-Delbecque Cyril
TP4 : Piles
17/10/2013 *)

open Stack;;

	(* Question 1 *)
	

let p1 = create () in
push 1 p1 ;
push 7 p1 ;
push 5 p1 ;
Printf.printf "%d\n" (pop p1) ;
Printf.printf "%d\n" (pop p1) ;
Printf.printf "%d\n" (pop p1) ;
is_empty p1;;

(*
let p2 = create () in
push 1 p2 ;
push 7 p2 ;
push 5 p2 ;
while not (is_empty p2) do
Printf.printf "%d\n" (top p2)
done;;
*)

let mystere p =
let s = ref 0 in
while not (is_empty p) do
s := !s + (pop p)
done ;
push !s p;;

	(* Question 2 *)
	
	(* Procédure pour imprimer une pile du haut vers le bas *)
	
let imprimer_pile p = 
	let copie = create () in
		while not (is_empty p ) do
			Printf.printf "%d \n" (top p);
			push (pop p) copie;
		done;
		while not (is_empty copie) do
			push ( pop copie) p
		done;;
			
	(* Question 5 *)
	
(* 
# open Lexemes;;
# lexemes "";;
- : Lexemes.lexeme array = [||]
# lexemes "123";;
- : Lexemes.lexeme array = [|Int 123|]
# lexemes "+";;  
- : Lexemes.lexeme array = [|Op Add|]
# lexemes "12 % 3";;
- : Lexemes.lexeme array = [|Int 12; Op Mod; Int 3|]
# lexemes "12 3 +";;
- : Lexemes.lexeme array = [|Int 12; Int 3; Op Add|]
# lexemes "+ 3 - *";;
- : Lexemes.lexeme array = [|Op Add; Int 3; Op Sub; Op Mul|]
# lexemes "a + b";;  
Exception: Lexemes.Caractere_non_autorise.
*)

	(* Question 6*)

(* voir eval.ml, evaluation_postfixee.mli et evaluation_postfixee.ml*)

	(* Question 7*)
	
(*
ferlicotdelbe@120p17:~/tp/API2/tp4$ ./eval "2 3 * 1 +"
7
ferlicotdelbe@120p17:~/tp/API2/tp4$ ./eval "2 5 / 8 * 8 4 7 * / 5 1 - + -"
-17
*)

	(* Question 8*)
	
































