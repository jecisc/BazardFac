(* Ferlicot Delbecque	Cyril
	TP9 Codage de Huffman *)
	


#load "codage.cmo";;
#load "codage_huffman.cmo";;
open Codage;;
open Codage_huffman;;

	(* Question 3 *)
	
(* Cigale.txt est une fable de la Fontaine comprenant des caractères minuscules, majuscules, de la ponctuation et des caractères accentués. Ce sont donc les caractères usuellement utilisés en Français. *)

	(* Question 5 *)
	
(*
Il y a 483 caractères latins dans le fichier.
La longueur moyenne du codage de Huffman est de 5.7692 bits/caractère.
La longueur moyenne en ASCII pour les caractères latin est de 3864 bits.
En longueur fixe minimale il faudrait 2415 bits car la longueur fixe minimale est de 5bits puisque 2^4 < 26 < 2^5
Avec ce codage de Huffman la taille est de 1962 bits.
L'entropie est de 4.0295.
*)

	(* Question 6 *)
	
let alphabet_source = [|'F'; 'Q'; 'G'; 'K'; 'W'; 'X'; 'Y'; 'B'; 'M'; 'V'; 'R'; 'O'; 'A'; 'C'; 'D'; 'P'; 'H'; 'Z'; 'J'; 'L'; 'N'; 'S'; 'I'; 'E'; 'T'; 'U'|];;

let code1 = [|"00000"; "000010"; "0000110"; "00001110000"; "00001110001"; "0000111001"; "000011101"; "00001111"; "00010"; "00011"; ":0010"; "0011"; "010"; "01100"; "01101"; "01110"; "011110"; "0111110"; "0111111"; "1000"; "1001"; "1010"; "1011"; "110"; "1110"; "1111"|];;

let francais = creer alphabet_source code1;;
	
let rec code_mot u codage =
	if String.length(u) == 0 then 
		""
	else (code u.[0] codage) ^ (code_mot (String.sub u 1 (String.length u -1)) codage);;	
(*
let code s c t =
	let source= open_in s and target = open_out t in
		begin
			try
				while true do
					let a= input_line source in
						output_string target (code_mot a c);
				done;
			with
			| End_of_file -> close_in source;
		end
	close_out target;;
	*)
	
	(* Je n'ai pas réussi les question 6 et 7 mais le texte aurait eu une taille plus petite avec son propre codage puisque le nombre d'occurence aurait été différent. *)
	
	(* Question 10 *)
let occur = [|10;5;3;0;0;0;1;3;12;12;24;25;50;13;13;14;7;4;5;30;31;32;38;71;39;41|]

let tab_cig =
	let t = Array.make 26 ( 'F' , 10) in
		for i = 1 to 25 do
			t.(i) <- (alphabet_source.(i) , occur.(i));
		done;
	t;;
	
let cod = 
	codage_huffman tab_cig;;
	
let impri_cod () = 
	for i = 0 to 25 do
		Printf.printf "%s \n" (Codage.code (fst tab_cig.(i)) cod)
	done;;
(* Ils ont la même longueur que dans la partie précédente *)
	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
