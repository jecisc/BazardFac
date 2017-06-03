(* Ferlicot-Delbecque Cyril
	TP6 : Les grands entiers
*)

	(* Question 4*)
	
type nat = int list;;

let zero = [];;

let un = [1];;

let t = [7890; 3456; 12];;

let t2 = [1; 0; 10];;

	(* Question 5 *)
	
let long_int n =
	if n >= 1000 then 4
		else
			(
				if n >= 100 then 3
					else
						(
							if n>= 10 then 2
								else
									1;
						);
			);;
	

let rec taille n = 
		match n with 
			| [] -> 0
			| [a] -> long_int a
			| a :: r -> 4 + (taille r);; 

	(* Question 6*)
	
let rec entier_en_nat n =
	if n <= 10000 then
		[n]
	else
		( n mod 10000) :: (entier_en_nat (n /10000));;
	
	(* Question 7 *)
	
let chaine_en_nat s =
	try 
		entier_en_nat (int_of_string s);
	with
	| Failure "int_of_string" ->  failwith "chaine_en_nat : caractère non autorisé";;
	
let aux_nat_en_chaine n =
	if (long_int n) = 4 then (string_of_int n)
		else
			(
				if (long_int n) = 3 then "0" ^ (string_of_int n)
					else
						(
							if (long_int n) = 2 then "00" ^ (string_of_int n)
								else
									 "000" ^ (string_of_int n)
						);
			);;
	
let rec nat_en_chaine n =
	match n with
		| [] -> ""
		| [a] -> (string_of_int a)
		| a :: r -> (nat_en_chaine r) ^ (aux_nat_en_chaine a);;
	
	
		(* Question 8 *)
		
let compare n1 n2 =
	match n1, n2 with
	| [], [] -> 0
	| [], n2 -> -1
	| n1, [] -> 1
	| n1 , n2 -> if n1 > n2 then 1 else ( if n2 > n1 then -1 else 0);;
	
	
	(* Question 9 *)
	
let max n1 n2 =
	let a = (compare n1 n2) in
	if a = 1 then n1
	else
		(
			if a = -1 then n2
			else
				n1;
		);;	
		
let min n1 n2 =
	let a = (compare n1 n2) in
	if a = -1 then n1
	else
		(
			if a = 1 then n2
			else
				n1;
		);;
	
	(* Question 10 *)
	
	
let add n1 n2 = 
	let rec aux n1 n2 ret =
		match n1, n2 with
		| [] , [] -> if ret = 0 then [] else [ret]
		| [] , a::r | a::r, [] -> ((a + ret) mod 10000)::(aux [] r ((a + ret)/10000)) 
		| a::r, b::r2 -> ((a + b + ret) mod 10000) :: (aux r r2 ((a + b + ret) / 10000)) in
	aux n1 n2 0;;





































