(* Ferlicot Delbecque cyril
	TP6 : Codage préfixe
		6/11/2013 *)
		
	(* Question 2 *)
	
open Codage;;
open Un_codage;;
	
(* 
# code 1 un_codage;;               
- : string = "01000011011010010101"


Le 'e' en ascii est le 101ème symbole. 

# code 101 un_codage;;
- : string = "101"
*)

	(* Question 3 *)
	
let un_code=
	let t = Array.make 256 "" in
		for i = 0 to 255 do
			t.(i) <- (code i un_codage);
		done;
	t;;
	
	(* Question 4 *)
	
let mot_min_max =
	let ind_min = ref 0 and  ind_max = ref 0 in
		for i = 1 to 255 do 
			 if (String.length un_code.(i)) < (String.length un_code.(!ind_min)) then
				ind_min := i;
			if (String.length un_code.(i)) > (String.length un_code.(!ind_max)) then
				ind_max := i;
		done; 
	(un_code.(!ind_min), un_code.(!ind_max));;

(*
	val mot_min_max : string * string = ("000", "010000100001001000001")

Longeur min : "000" : 3 caractères.
Longeur max :"010000100001001000001": 21 caractères.
*)

	(* Question 5*)
	
let code_pref t=
	let res = ref true in
		for i = 0 to 255 do 
			for j = 1 to 255 do 
				if String.length t.(i) < String.length t.(j) then
					(
						if t.(i) = (String.sub t.(j) 0 (String.length t.(i)) ) then
							res := false;
					);
			done;
		done;
	!res;;

(* 
# code_pref un_code;;
- : bool = true
 *)
 
	(* Question 6 *)

let complete s =
	let r= ref (8 -(String.length (s)  mod 8)) and s2 = ref s in
		if !r = 0 then
			r:= 8;
			
			s2:= !s2 ^ "1";
		
		for i = 1 to !r-1 do
			s2 := !s2 ^ "0"
		done;
	s2;;

	(* Question 7 *)
	
let chiffre_en_entier c =
	if c >= '0' && c <= '9' then
		(int_of_char c) - (int_of_char '0')
	else if c >= 'A' && c <= 'F' then
		(int_of_char c) + 10 - (int_of_char 'A')
	else
		failwith "chiffre_en_entier chiffre incorrect";;
	
let chaine_en_entier s b =
	if b < 2 || b > 16 then
		failwith "chaine_en_entier base incorrecte"
	else
		let n= ref 0 in
			for i = 0 to (String.length s -1) do 
				if chiffre_en_entier s.[i] >= b then 
					failwith "chaine_en_entier base incorrecte"
				else
					n := !n * b + (chiffre_en_entier s.[i])
			done;
			!n;;
	
let chaine_binaire_en_entier s =
	let res = ref 0 in
		for i = 0 to String.length (s) -1 do 
			if chiffre_en_entier s.[i] > 1 then
				failwith "chaine_binaire_en_entier symbole non binaire";
			res := ((!res lsl 1) lor (chiffre_en_entier s.[i]));
		done;
	!res;;
	
	
	
let ecrire s t =
	let s2 = ref "" in
		for i = 0 to 7 do
			s2:= !s2 ^ (String.make 1 s.[i]);
		done;
		output t (string_of_int(chaine_binaire_en_entier s));;
		
		
		
	
	
let coder_fichier s c t=
	let source = open_in s 
	and target= open_out t 
	and cod = ref "" in
		try
		while true do
			let ch = input_byte source in
				cod := !cod ^ string_of_int(ch);
			if String.length (!cod) > 8 then
				ecrire !cod target;
				cod := String.sub !cod 8 (String.length !cod - 8);
		done;
		with
			| End_of_file -> ecrire (complete !cod) target ;	
	close_in source ;
	close_out target;;






































