(* TP 2 Codage
Ferlicot Cyril 
25/09/2013 *)

	(* Question 1*)
	
Printf.printf "%d\n%o\n%x\n%X\n"
	254
	264
	346
	346;;
	
(* La différence se situe dans le mode d'impression des caractères de A à F. avec 'x' on aura des lettre minuscules et avec 'X' des majuscules. *)

	(* Question 2*)
	
let impr_puis ()=
	let p = ref 2 in
	for i = 0 to 40 do
		Printf.printf "%d : \t %d\n"
			i
			!p;
		p:= !p * 2;
	done;;
	
	(* Question 3*)

(* On observe que la puissance est remplacée par 0, comme les puissances qui suivent. Ceci s'explique par le fait que Caml tourne sur 31bits. Le processeur n'est pas capable de gérer des entiers plus grands et Ocaml n'est pas adapté pour les calculer de lui même *)

	(* Question 4*) 
	
(* 
# char_of_int;;
- : int -> char = <fun>
# int_of_char;;
- : char -> int = <fun>

char_of_int x avec 0=< x =< 9 donne le caractère à l'indice x du tableau associé à l'encodage utilisé par Ocaml 
int_of_char 'x' donne l'indice de caractère 'x' dans la table d'encodage
*)

	(* Question 5*) 
	
(* Cette expression renvoit le chiffre n. Si n>10 elle affiche des caractères car dans la table d'encodage il n'y a que des chiffres et non des nombres. *)

	(* Question 6*)

let qest6 n=
	char_of_int (int_of_char '7' + n);;
	
	(* Question7*)
	
let entier_en_chiffre n=
	if (n<10 && n> -1 )
	then 
		char_of_int ( int_of_char '0' + n )
	else
	(
		if n<16 
		then
			char_of_int (int_of_char '7' + n)
		else
			failwith "Failure entier_en_chiffre  entier negatif ou trop grand"; 
	)
	;;
	
	(* Question 8 *)
	
	let ajoute_caractere_en_tete s c = 
		let s' = String.make 1 c in 
			s'^s;;
	
	
	let entier_en_chaine a b =
		if b>17
		then
			failwith "Failure :entier_en_chaine  base incorrecte"
		else 
			(
				let n = ref a  and s1 = ref "" in
					while !n <> 0 do
						s1:= ajoute_caractere_en_tete !s1 (entier_en_chiffre( !n mod b));
						n:= !n/b;
					done; 
				if a = 0 then s1 := "0";
				!s1;
				
			);;
	
	(* Question 9 *)
	
let impr_tab () =
	for i = 0 to 20 do
		Printf.printf "%2s  : %7s %4s %4s\n"
			(entier_en_chaine i 10)
			(entier_en_chaine i 2)
			(entier_en_chaine i 8)
			(entier_en_chaine i 16);
		done;;
			
	(* Question 10 *)

(* 
# 0x314;;
- : int = 788

# 0o314;; 
- : int = 204

*)

	(* Question 11 *)
	

	
		let chiffre_en_entier c =
	let n = int_of_char (c) in
		match n with 
			| 48 -> 0
			| 49 -> 1
			| 50 -> 2
			| 51 -> 3
			| 52 -> 4
			| 53 -> 5
			| 54 -> 6
			| 55 -> 7
			| 56 -> 8
			| 57 -> 9
			| 65 -> 10
			| 66 -> 11
			| 67 -> 12
			| 68 -> 13
			| 69 -> 14
			| 70 -> 15
			| _ -> failwith "chiffre_en_entier  chiffre incorrect";; 
	
let chaine_en_entier a b c =
	if b>10
	then
		failwith "Failure :chaine_en_entier  base incorrecte"
	else 
		(
			let n=ref 0  and l=String.length(a) and e=ref 1 in 
				for i = (l-1) downto 0 do
					n:= !n + !e * chiffre_en_entier(a.[i]);
					e:= !e*c;
				done;
				
				let r = ref 0 and e2= ref 1 in 
				
				while !n <> 0 do
						r:= !r + !e2*(!n mod b);
						n:= !n/b;
						e2:= !e2 * 10;
				done; 
				!r;
		);;
	
(**
   [compte f] renvoie le tableau des effectifs des octets contenus dans le fichier [f].
*)
let compte f = 
  let entree = open_in f and compteurs = Array.make 256 0 and n = ref 0 in
    begin
		try
			while true do 
				let a = chaine_en_entier (string_of_int (input_byte entree)) 2 10 in
					if compteurs.(a) = 0 then
						begin
							n := !n +1
						end;
					compteurs.(a) <- compteurs.(a) + 1;		
			done;
		with
			| End_of_file -> close_in entree;
    end ;
    let freq = Array.make (!n) (0,0) and j = ref 0 in
      for i = 0 to 256 do
		if compteurs.(i) <> 0 then
			begin
				freq.(!j) <- (i, compteurs.(i));
				j := !j +1 ;
			end;
		done;
      freq ;;
	
	(*Question 13*) 
	
chaine_en_entier "11300642" 10 16;;


	(* Question 15 *)
	
(* n lsl 1 multiplie n par 2 tandis que n lsr 1 divise n par 2. Ce sont des opérteurs qui doivent décaler des bits respectivement vers la gauche et vers la droite*)

	(* Question 16 *)
	
let impr_puis2 ()=
	let p = ref 1 in
	for i = 0 to 40 do
		Printf.printf "%d : \t %d\n"
			i
			(!p lsl i);
	done;;

	(* Question 17 *)
	
(* test_pair renvoit true si n est pair et false si n est impair *)

let test_pair n =
  let r = (n land 1) in
    if r = 1 then false else true ;;
	

	(* Question 18 *)
	
let entier_en_chaine_binaire a =
	let n = ref a  and s1 = ref "" in
		while !n <> 0 do
			if test_pair !n then 
			s1:= ajoute_caractere_en_tete !s1 '0'
			else s1:= ajoute_caractere_en_tete !s1 '1';
			n:= !n lsr 1;
		done; 
	if a = 0 then s1 := "0";
	!s1;;
	
	(* Question 19 *)
	
(* Pour des chiffres négatif on obtient une chaine de 1 qui se finissent par ce que l'on obtient avec cette même fonction pour la chiffre positif. Ceci peut s'expliquer par la manière dont le processeur reconnait les chiffres et les chiffres négatifs. *)


	(* Question 20 *)
	
	(* Question 21 *)
	
	
(* 
Représentation sur 32 bits : 01000000010010010000111111011000 Hexa : 40490FD8 s:0 e:10000000 m: 1.10010010000111111011000
Représentation sur 64 bits : 0100000000001001001000011111101011111100100010110000000001111010 Hexa:400921FAFC8B007A s: 0 e:10000000000 m: 1.1001001000011111101011111100100010110000000001111010
*)

	(* Question 22 *)
	
(* 7.7987132627903060e-30 *)


	(* Question 23 *) 
	
(* 
32bits: (-1)^0 * 10^(-126) * (1+2^(-23)*0) = 10^(-126) 
64bits: (-1)^0 * 10^(-1022) * (1+2^(-52)*0) = 10^(-1022) 
*)


	(* Question 24 *) 
	
(* 
32bits: (-1)^0 * 10^(127) * (1+2^(-23)*127) 
64bits: (-1)^0 * 10^(1023) * (1+2^(-52)*1023)
*)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	