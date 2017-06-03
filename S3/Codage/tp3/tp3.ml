(* TP3 de Codage
Ferlicot-delbecque Cyril	
02/10/2013 *)

	(* Question 2 *)
	
(* 
-rw-r--r-- 1 ferlicotdelbe l2 693 oct.   2 10:26 cigale-ISO-8859-1-conv.txt
-rw-r--r-- 1 ferlicotdelbe l2 648 oct.   2 10:21 cigale-ISO-8859-1.txt
-rw-r--r-- 1 ferlicotdelbe l2 663 oct.   2 10:26 cigale-UTF-8-conv.txt
-rw-r--r-- 1 ferlicotdelbe l2 663 oct.   2 10:21 cigale-UTF-8.txt
*)

	(* Question 3*)
	
let oct_iso_to_utf8 a=
	let r1 = ref a and r2 = ref a  in 
		r1:= (3 lsl 6) lor (a lsr 6);
		r2:= (1 lsl 7) lor (a land  63);
		r1:= (!r1 lsl 8)  + !r2;
	!r1;;
	
	(* Question 4 *)

let isolation_en_utf8 s c=
	let entree = open_in s and sortie = open_out c in 
		try 
			while true do 
				let n = input_byte entree in 
					if n > 159 && n< 256 then
					(
					output_byte sortie ((3 lsl 6) lor (n lsr 6));
					output_byte sortie ((1 lsl 7) lor (n land 63));
					)
					else 
					(
					output_byte sortie n;
					)
					
			done; 
		with 
			End_of_file -> close_in entree ; close_out sortie;;
			
	(* Question 6 *)
	
let utf8_en_isolatin s c=
let entree = open_in s and sortie = open_out c in 
		try 
			while true do 
				let n = input_byte entree in 
					if n > 127 then
					(
						let n2= input_byte entree in
							output_byte sortie  (((n land 3) lsl 6) lor (n2 land 63));
					)
					else 
					(
					output_byte sortie n;
					);
					
			done; 
		with 
			End_of_file -> close_in entree ; close_out sortie;;









































