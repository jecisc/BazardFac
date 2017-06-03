(**
   Programme de compression de fichiers par codage de Huffman.

   Nécessite les modules [Codage] et [Codage_huffman].
   Compilation
   - [ocamlc -o compresse codage.cmo codage_huffman.cmo  compresse.ml]

   @author Ferlicot-Delbecque Cyril 03/12/2013
*)
	
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
	
	(* Question 12 *)
	
(* Ici a est une chaine de caractère, b est la base dans laquelle est renvoyée l'entier et c est la base dans laquelle est écrit la chaine de caractère *)
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
				let a = chaine_en_entier (input_byte entree) 2 10 in
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

(**
   [complete s] = chaîne [s] complétée avec une chaîne de la forme "10...0", 
   le nombre de 0  de sorte que la longueur de [s^"10...0"] soit égale à 
   8.

   {b CU :} 0 < 8-|[s]| <= 8
*)
let complete s =
  let n = String.length s in
  let long_completion = if n = 0 then 8 else 8 - n in
  let completion = String.make long_completion '0' in
  completion.[0] <- '1' ;
  s^completion



(**
   [chaine_en_octet s] = octet représenté par la chaîne [s].

   {b CU :} [s] ne doit contenir que les caractères {t 0} ou {t 1} et être de longueur 8.
*)
let chaine_en_octet s =
  try
    let res = ref 0 in
    for i = 0 to 7 do
      match s.[i] with
      | '0' -> res := !res*2
      | '1' -> res := !res*2 + 1
      | _   -> failwith "chaine_en_octet : caractere non autorise"
    done ;
    !res
  with
  | Invalid_argument _ -> failwith "chaine_en_octet : longueur insuffisante"


(**
   [coder_fichier source codage cible] code le fichier [source] 
   avec le codage binaire [codage] dans le fichier [cible].
*)
let coder_fichier source codage cible = 
  let entree = open_in source
  and sortie = open_out cible 
  and a_ecrire = ref "" in
    try
      while true do
	let lu = input_byte entree in
	a_ecrire := !a_ecrire ^ (Codage.code lu codage) ;
	while String.length !a_ecrire >= 8 do
	  output_byte sortie (chaine_en_octet (String.sub !a_ecrire 0 8)) ;
	  a_ecrire := String.sub !a_ecrire 8 (String.length !a_ecrire - 8)
	done 
      done 
    with
    | Failure "" -> 
      close_in entree ;
      close_out sortie ;
      failwith "Codage non binaire" 
    | End_of_file ->
      close_in entree ;
      output_byte sortie (chaine_en_octet (complete !a_ecrire)) ;
      close_out sortie
	

(**
   [sauver_codage c f] sauvegarde au format texte les 256 mots binaires du codage [c] dans le fichier [f].
*)
let sauver_codage c f =
  let sortie = open_out f in
    (* A COMPLETER POUR AVOIR LES CODES DES OCTETS *)
    close_out sortie

let usage () =
  Printf.printf "Usage : %s <fichier a compresser>\n" Sys.argv.(0) ;
  exit 1

let principal () =
  if Array.length Sys.argv <> 2 then
    usage () 
  else 
    let fichier = Sys.argv.(1) in
    let table = compte fichier in
    let codage_huffman = ((* A COMPLETER POUR CONSTRUIRE LE CODAGE DE HUFFMAN DU FICHIER *)) in
      (* A DECOMMENTER LORSQUE TERMINE
	 coder_fichier fichier codage_huffman (fichier^".huf") ;
	 sauver_codage codage_huffman (fichier^".code") ;
      *)
      exit 0 


let _ = 
  if not (!Sys.interactive) then principal ()
