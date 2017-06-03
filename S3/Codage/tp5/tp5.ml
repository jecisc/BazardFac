(* Ferlicot-Delbecque Cyril 
TP5 - Codage
*)


	(* Question 1 *)
	
(* 
# open Codage;;
# let alphabet_source = [|'a'; 'b'; 'c'|];;
val alphabet_source : char array = [|'a'; 'b'; 'c'|]
# let code = [|"010"; "100"; "110"|];;
val code : string array = [|"010"; "100"; "110"|]
# let codage = creer alphabet_source code;;
val codage : char Codage.codage = <abstr>
# codage;;
- : char Codage.codage = <abstr>
*)

	(* Question 2 & 3 *)
	
(*
# Codage.code 'a' codage;;
- : string = "010"
# Codage.code 'b' codage;;
- : string = "100"
# Codage.code 'c' codage;;
- : string = "110"
# decode "010" codage;;
- : char = 'a'
# decode "100" codage;;
- : char = 'b'
#decode "110" codage;;
- : char = 'c'
*)

	(* Question 4 *)
	
(* 
Cela déclanche une exception comme ceci :
# Codage.code 'd' codage;;
Exception: Codage.Symbole_non_codable.
*)

	(*  Question 5 *)
	
(* comme pour la question précédente cela déclanche une exception:
# decode "001" codage;;
Exception: Codage.Mot_non_decodable. *)

	(* Question 9 *)
	
(* # code_mot "CODAGE" codage1;;
- : string = "000100111000011000000011000100"
# code_mot "CODAGE" codage2;;
- : string = "-.-./---/-../.-/--././"
# code_mot "CODAGE" codage3;;
- : string = "0100100000111010100111110110"
*)

	(* Question 10 *)

let long c ch=
	(String.length (code ch c);;
	
		(* Question 12*)
	
(* # decode_mot_longueur_fixe "000100111000011000000011000100" codage1;;
- : string = "CODAGE"
*)































	
	
	
	
	
	
	
	
	
	
	
	