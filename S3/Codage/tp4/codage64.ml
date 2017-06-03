(* Module du codage 64 du TP4 de Codage. 
Ferlicot Cyril *)

open Printf;;

let table = 
	[|
		'A'; 'B'; 'C'; 'D'; 'E'; 'F'; 'G'; 'H'; 'I'; 'J'; 'K'; 'L'; 'M'; 'N'; 'O'; 'P'; 'Q'; 'R'; 'S'; 'T'; 'U'; 'V'; 'W'; 'X'; 'Y'; 'Z'; 'a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'g'; 'h'; 'i'; 'j'; 'k'; 'l'; 'm'; 'n'; 'o'; 'p'; 'q'; 'r'; 's'; 't'; 'u'; 'v'; 'w'; 'x'; 'y'; 'z'; '0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9'; '+'; '/'
	|];;

let traiter_octets t=
	let n=(t.(0) lsr 2) 
	and m=(((t.(0) land 3)) lsl 4)
	and o=(t.(1) lsr 4) 
	and p=((t.(1) land 15) lsl 2) 
	and q=(t.(2) lsr 6) 
	and r=(t.(2) land 63) in 
	
	if (t.(2) = (-1)) then
	 (
		if (t.(1) = (-1))then
		  (
			if (t.(0) = (-1)) then
				printf ""
			else 
				(
					printf"%c%c=="  
						(table.(n)) 
						(table.(m));
				);
		  )
		else 
			(
				printf"%c%c%c=" 
					(table.(n)) 
					(table.(m+o))
					(table.(p));
			);
	  )
	else
		(
			printf"%c%c%c%c" 
				(table.(n)) 
				(table.(m + o))
				(table.(p + q))
				(table.(r));
		);;

let traiter_octets3 t=
	let n=(t.(0) lsr 2) 
	and m=(((t.(0) land 3)) lsl 4)
	and o=(t.(1) lsr 4) 
	and p=((t.(1) land 15) lsl 2) 
	and q=(t.(2) lsr 6) 
	and r=(t.(2) land 63) in 
	
	if (t.(2) = (-1)) then
	 (
		if (t.(1) = (-1))then
		  (
			if (t.(0) = (-1)) then
				""
			else 
				(
						(String.make 1 (table.(n)))^(String.make 1 (table.(m)));
				);
		  )
		else 
			(
					(String.make 1 (table.(n)))^(String.make 1 (table.(m+o)))^(String.make 1 (table.(p)));
			);
	  )
	else
		(
				(String.make 1 (table.(n)))^(String.make 1 (table.(m + o)))^(String.make 1 (table.(p + q)))^(String.make 1 (table.(r)));
		);;
		
let traiter_octets2 t=
	let n=(t.(0) lsr 2) 
	and m=(((t.(0) land 3)) lsl 4)
	and o=(t.(1) lsr 4) 
	and p=((t.(1) land 15) lsl 2) 
	and q=(t.(2) lsr 6) 
	and r=(t.(2) land 63) in 
	
	if (t.(2) = (-1)) then
	 (
		if (t.(1) = (-1))then
		  (
			if (t.(0) = (-1)) then
				""
			else 
				(
					(String.make 1 (table.(n)))^(String.make 1 (table.(m)));
				);
		  )
		else 
			(
					(String.make 1 (table.(n)) )^(String.make 1 (table.(m+o))) ^(String.make 1 (table.(p)));
			);
	  )
	else
		(
				(String.make 1 (table.(n)) )^(String.make 1 (table.(m + o)))^(String.make 1 (table.(p + q)))^(String.make 1 (table.(r)));
		);;
	
		
let encoder_base64 source sortie =
	let entree = open_in_bin source 
	and target = open_out sortie
	and triplet_octets = Array.make 3 (-1) 
	and cpt = ref 0 in 
		try 
		while true do 
			triplet_octets.(0) <- input_byte entree ; 
			triplet_octets.(1) <- input_byte entree ; 
			triplet_octets.(2) <- input_byte entree ; 
			cpt := !cpt +1;
			if (!cpt mod 19 = 0) then output_string target (traiter_octets2 triplet_octets) else 
			output_string target (traiter_octets3 triplet_octets) ;
		done with 
			| End_of_file -> output_string target (traiter_octets3 triplet_octets) ; 
			close_in entree;
			close_out target;;
			

let decode_char c =
	let fin = ref true and i = ref 0 in
		 while !fin  do
			if c = table.(!i) then
				fin := false 
			else i := !i +1;
		done;
	!i;;
			
let decode_bloc s =
	let t = Array.make 3 (-1) in
		if s.[3] = '=' then
			(
				if s.[2] = '=' then
					t.(0) <- (((decode_char s.[0]) lsl 2) + (decode_char s.[1])) 
				else
					(
						t.(0) <- (((decode_char s.[0]) lsl 2) + ((decode_char s.[1]) lsr 4)) ;
						t.(1) <- ((((decode_char s.[1]) land 15) lsl 4) + (decode_char s.[2]));
					)
			)
		else 
			(
				t.(0) <- (((decode_char s.[0]) lsl 2) + ((decode_char s.[1]) lsr 4)) ;
				t.(1) <- ((((decode_char s.[1]) land 15) lsl 4) + ((decode_char s.[2]) lsr 2));
				t.(2) <- ((((decode_char s.[2]) land 3) lsl 6) + (decode_char s.[3]) )
			);
	t;;
	
	
let traiter_bloc s=
	let t = (decode_bloc s) in
	 printf"%c%c%c"
		(char_of_int t.(0))
		(char_of_int t.(1))
		(char_of_int t.(2));;
		
let traiter_ligne s =
	let l = ((String.length s)/4) in
	let  p = ref "" in
		for i = 0 to l-1 do
			p := (String.sub s (i*4) 4);
			traiter_bloc !p
		done;;
			
			
let decoder_base64 source =
	let entree = open_in_bin source in 
		try 
		while true do
			(traiter_ligne (input_line entree));
		done with 
			| End_of_file -> close_in entree;;
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
				
	