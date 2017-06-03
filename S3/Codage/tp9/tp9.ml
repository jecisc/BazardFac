(* Ferlicot-Delbecque Cyril
	TP9 *)
	
	(* Question 3 *)
	
(* Le fichier cigale.txt est une fable de la Fontaine contenant des lettres minuscules, des lettres majuscules, des caractères accentués, des expaces, de la ponctuation et des retours à la ligne. Ce sont donc tous les caractère utilisé dans la langue française. *)

	(* Question 4 *)
	
(*
     le nombre de lettres (lettres latines, pas le nombre de caractères) du fichier cigale.txt,
     
1) Il y a 483 caractères latins.

    la longueur moyenne du codage de Huffman obtenu,
    
2) La longueur moyenne est de 5,769 octets

    la taille (en octets) du texte de cette fable codé en ASCII (sans les signes de ponctuation et espaces),
    
3) 3864 octets  (nombre d'occurances des caractères * 8 puisque en ASCII on code sur 8bits 

    la taille (en octets) de ce texte avec un codage de longueur fixe minimale,
    
4) 2^4 < 26 < 2^5. La longueur d'un codage à longueur fixe est donc de 5 octets. On a donc un fichier de 2415 octets
    
    la taille (en octets) de ce texte codé avec le codage de Huffman obtenu,
    
5) 1962 octets
    
    l'entropie de la source de lettres latines qu'est la fable de la cigale. 
    

6) H(S) = 4, 0295...
*)

	(* Question 5 *)
	
let lecture fichier =
	let source = open_in fichier and carac = Array.make 26 'A' and occur = Array.make 26 0 and cod = Array.make 26 "" and cpt = ref 0 in
		for j = 0 to 25 do
				let a = ref (input_line source) and b = ref 'A' and c = ref "" and d = ref "" in
					b := (String.sub !a 0 1).[0];
					a := String.sub !a 2 ((String.length !a) -1);
					while !a.[0] <> ':' do
						c := !c ^ (String.sub !a 0 1);
						a := String.sub !a 1 ((String.length !a)  -1);
					done;
					a := String.sub !a 1 ((String.length !a)  -1);
					for i = 0 to ((String.length !a) -1) do
						d := !d ^ (String.make 1 !a.[i]);
					done;
			carac.(!cpt) <- !b;
			occur.(!cpt) <- int_of_string(!c);
			cod.(!cpt) <- !d;
			cpt:=!cpt +1;
		done;
		close_in source;
			
	(carac, occur, cod);;
	
let source=
	let (a,b,c) = lecture "cigale.txt" in
		a;;
		
let code=
	let (a,b,c) = lecture "cigale.txt" in
		c;;		
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	