(* Archive partie 1*)

open Codage;;
(*
let alphabet_source = [|'a'; 'b'; 'c'|];;

let code1 = [|"010"; "100"; "110"|];;

let codage = creer alphabet_source code1;;

code 'a' codage  ;;

code 'b' codage;;

code 'c' codage;;

decode "010" codage;;

decode "110" codage;;
*)

(* Archive partie 2 *)

let alphabet_source =
	[| 'A'; 'B'; 'C'; 'D'; 'E'; 'F'; 'G'; 'H'; 'I'; 'J'; 'K'; 'L'; 'M'; 'N';
	'O'; 'P'; 'Q'; 'R'; 'S'; 'T'; 'U'; 'V'; 'W'; 'X'; 'Y'; 'Z'; ' ' |];;
					
let code1 = 
	[| "00000"; "00001"; "00010"; "00011"; "00100"; "00101"; "00110"; "00111";
	"01000"; "01001"; "01010"; "01011"; "01100"; "01101"; "01110"; "01111";
	"10000"; "10001"; "10010"; "10011"; "10100"; "10101"; "10110"; "10111";
	"11000"; "11001"; "11111" |] ;;
	
let code2 = 
	[| ".-/"; "-.../"; "-.-./"; "-../"; "./"; "..-./"; "--./"; "..../"; "../";
	".---/"; "-.-/"; ".-../"; "--/"; "-./"; "---/"; ".--./"; "--.-/"; ".-./";
	".../"; "-/"; "..-/"; "...-/"; ".--/"; "-..-/"; "-.--/"; "--../"; "---./"|];; 
	
let code3 = 
	[| "1010"; "0010011"; "01001"; "01110"; "110"; "0111100"; "0111110";
	"0010010"; "1000"; "011111110"; "011111111001"; "0001"; "00101";
	"1001"; "0000"; "01000"; "0111101"; "0101"; "1011"; "0110"; "0011";
	"001000"; "011111111000"; "01111110"; "0111111111"; "01111111101";
	"111" |];;

let codage1 = creer alphabet_source code1;;

let codage2 = creer alphabet_source code2;;

let codage3 = creer alphabet_source code3;;

	(* Question 8*)
	
let rec code_mot s c=
	let l = (String.length s) in
	if  l = 1 then
		(code s.[0] c)
	else
		 (code s.[0] c) ^ (code_mot (String.sub s 1 (l-1)) c);;

	(* Question 10 & 11 *)

let long c ch=
	(String.length (code ch c));;
		
let rec decode_mot_longueur_fixe s c=
	let t= long c 'A' and l = (String.length s) in
		try
			if l = t then 
				(String.make 1 (decode s c))
			else
				(String.make 1 (decode (String.sub s 0 t) c))^(decode_mot_longueur_fixe (String.sub s t (l-t)) c);
		with
			|Invalid_argument "String.sub" -> failwith "decode_mot_longueur_fixe : mot non decodable";;

	(* Question 13 *)

decode_mot_longueur_fixe "011111000101110001010010010010100100010010100100011111100101000001010010011111110100001011111110001010100010001000100100111110101100100111110111110001011100001110100010001001111111000110010011111101010111010010111110010101110101000100001011010110010010010" codage1;;

(* val decode_mot_longueur_fixe : string -> char Codage.codage -> string = <fun>
- : string = "PROFESSEUR FAUT IL CUIRE LE PRODUIT DE VOS FOUILLES"
*)

	(* Question 15 *)
	
let rec decode_mot_virgule s c ch=
	let o = ((String.index_from s 0 ch)+1) and l = (String.length s) in
		try
			if o = l then
				(String.make 1 (decode s c))
			else 
				(String.make 1 (decode (String.sub s 0 o) c)) ^ (decode_mot_virgule (String.sub s o (l-o)) c ch);
		with
			|Invalid_argument "String.sub" -> failwith "decode_mot_virgule : mot non decodable";;
			
	(* Question 16 *)
	
decode_mot_virgule ".--./---/..-/.-./---./.-../.-/---./..-./.-./.-/-./-.-././---./-../---././-./---./-.../.-/.../---./-.././.../---./-./---/..-/../.-../.-.././.../---././-./-.-./---/.-././" codage2 '/';;

(*
val decode_mot_virgule : string -> char Codage.codage -> char -> string =
  <fun>
- : string = "POUR LA FRANCE D EN BAS DES NOUILLES ENCORE"
*)

	(* Question 18 & 19 *)
	
let decode_lettre_prefixe v codage = 
	let n = String.length v and i = ref 0 and prefixe = ref '\000' and trouve = ref false in 
		while (!i <= n) && not (!trouve) do 
			try 
				prefixe := decode (String.sub v 0 !i) codage ; 
				trouve := true 
			with 
				| Mot_non_decodable -> i := !i + 1 
		done ; 
		
		if !i <= n  then 
			(!prefixe,!i) 
		else 
			failwith "decode_lettre_prefixe : mot non decodable";;
			
let rec decode_mot_prefixe s c=
	let a = fst (decode_lettre_prefixe s c) and b = snd  (decode_lettre_prefixe s c) and l = (String.length s) in
		try 
			if b = l then
				(String.make 1 a)
			else
				(String.make 1 a) ^ (decode_mot_prefixe (String.sub s b (l-b)) c);
		with 
			|Invalid_argument "String.sub" -> failwith "decode_mot_prefixe : mot non decodable";;
	
	(* Question 20 *)
	
decode_mot_prefixe "0110001001010100001110101111111010110110111011000000011011111110000000110101101111110101110111100101010000101110" codage3;;

(* 
val decode_mot_prefixe : string -> char Codage.codage -> string = <fun>
- : string = "THALES EST TOUJOURS A FAIRE"
*)































