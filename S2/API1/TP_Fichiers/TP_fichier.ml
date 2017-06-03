(* TP fichiers
Aouati Kamil
Ferlicot Cyril *)

	(* Question 1 *) 

(* 6 lignes *)

	(* Question 2 *)
	
(* # open_in "petit_fichier_etudiant.csv";;
- : in_channel = <abstr>
*)

	(* Question 3 *)

(*
# let source = open_in "petit_fichier_etudiant.csv";;
val source : in_channel = <abstr>
# input_line source;;                                
- : string = "99998132;Calbuth;Raymond"
# input_line source;;
- : string = "99994451;Talon;Achille"
# input_line source;;
- : string = "99996348;Calbuth;Monique"
# input_line source;;
- : string = "99995433;Blanc-Sec;Ad\195\168le"
# input_line source;;
- : string = "99997674;Brisefer;Beno\195\174t"
# input_line source;;
- : string = "99998324;Lagaffe;Gaston"
# input_line source;;
Exception: End_of_file.
*)

	(* Question 4 *)
	
(* # close_in source;;
- : unit = ()
*)

	(* Question 5 *)

(* # let source_a = open_in "petit_fichier_etudiant.csv";;
val source_a : in_channel = <abstr>
# let source_b = open_out "petit_fichier_etudiant.copie";;
val source_b : out_channel = <abstr>
*)

	(* Question 6 *)
	
(* 
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
- : unit = ()
# output_string source_b (input_line source_a);;
Exception: End_of_file.
# close_in source_a;;
- : unit = ()
# close_out source_b;;
- : unit = ()

*)

	(* Question 7 *)
	
let lecture a=
	let source = open_in a in
	for i = 0 to 5 do
	Printf.printf "%s \n"
		(input_line source);
	done;
	close_in source;;

let lecture_best a=
	let source = open_in a in
	try 
	while true do 
	Printf.printf "%s \n"
		(input_line source);
	done;
	with 
	| End_of_file -> ();
	close_in source;;

	(* Question 8 *)
	
let copie a b=
	let source_a = open_in a and source_b = open_out b in
	try 
	while true do
	output_string source_b (input_line source_a);	
	output_string source_b "\n";
	done;
	with 
	| End_of_file -> ();
	close_in source_a;
	close_out source_b;;

	(* Question 9 *)
	
(* fonction 1:
-> nb_char
-> string -> char -> int 
-> Donne ne nombre de charactère c dans la chaine s
-> CU: s une chaine de caractère, c un charactère

fonction 2:
-> decoupe_chaine
-> string -> char -> string array
-> Découpe un string dans un tableau a chaque fois que la fonction rencontre le char c

*)

	(* Question 10 *)
	
let nb_char s c = 
	let cpt = ref 0 and n = String.length s in 
		for i = 0 to n - 1 do 
			if s.[i] = c 
				then cpt := !cpt + 1 ;
		done ; 
	!cpt;;

let decoupe_chaine s c = 
	let n = String.length s and nb = 1 + (nb_char s c) in 
	let t = Array.make nb "" and pos_c = ref 0 in 
		for i = 0 to (nb - 1) do 
			let indice_char = ref (!pos_c) in 
			while (!indice_char < n) && (s.[!indice_char] <> c) do 
				indice_char := !indice_char + 1; 
			done ;
			t.(i) <- String.sub s !pos_c (!indice_char - !pos_c) ; 
			pos_c := !indice_char + 1 
		done ; 
	t;;
	
type etudiant = 
	{ 
		nip : int ;
		nom : string ; 
		prenom : string
	};;
	
let lire_liste_etudiants s n =
	let source = open_in s  in
	let t = Array.make n {nip = 0; nom = "nom"; prenom = "prenom";} in
		for i = 0 to (n-1) do
			let etu =(decoupe_chaine (input_line source) ';') in
				t.(i) <- {nip = (int_of_string(etu.(0))); nom = etu.(1); prenom = etu.(2);};
		done;
	(close_in source);
	t;;

	(* Question 11 *)
	
let copie_tableau s t=
	let target = open_out s in
		for i = 0 to (Array.length (t) -1) do
			output_string target (string_of_int(t.(i).nip)); 
			output_string target ";";
			output_string target t.(i).nom;
			output_string target ";";
			output_string target t.(i).prenom;
			output_string target "\n";
		done;
	close_out target;;

(* # copie_tableau "test.txt" (lire_liste_etudiants "petit_fichier_etudiant.csv" 6)
;;
- : unit = ()
*)

	(* Question 12 *) 
	
type etudiant2 = 
	{ 
		nip : int ; 
		nom : string ; 
		prenom : string ; 
		notes : float array ; 
		mutable moyenne : float 
	};;

let compte s=
	let source = open_in s and cpt = ref 0 in
	begin
	try 
	while true do
		let _ = input_line source in 
		cpt:= !cpt+1;
	done;
	with 
	| End_of_file -> ();
	close_in source;
	end;
	!cpt;;

(* # compte "fichier_etudiants.csv";;
- : int = 715 *)

	(* Question 13 *)
	
let lire_liste_etudiants2 s n =
	let source = open_in s  in
	let t = Array.make n {nip = 0; nom = "nom"; prenom = "prenom"; notes = [|-1.;-1.;-1.;-1.;-1.;-1.|]; moyenne = -1.} in
		for i = 0 to (n-1) do
			let etu =(decoupe_chaine (input_line source) ';') in
				t.(i) <- {nip = (int_of_string(etu.(0))); nom = etu.(1); prenom = etu.(2);notes = [|-1.;-1.;-1.;-1.;-1.;-1.|]; moyenne = -1.};
		done;
	(close_in source);
	t;;

let table_etudiants = lire_liste_etudiants2 "fichier_etudiants.csv" 715;;

	(* Question 14 *)
	
let report_note=
		let source0= open_in "notes_API1.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(0) <- float_of_string(input_line source0);
			done;
			close_in source0;
		let source1= open_in "notes_MATHS.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(1) <- float_of_string(input_line source1);
			done;
			close_in source1;
		let source2= open_in "notes_PHYS.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(2) <- float_of_string(input_line source2);
			done;
			close_in source2;
		let source3= open_in "notes_ANGLAIS.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(3) <- float_of_string(input_line source3);
			done;
			close_in source3;
		let source4= open_in "notes_TEC.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(4) <- float_of_string(input_line source4);
			done;
			close_in source4;
		let source5= open_in "notes_SPORT.csv" in
			for i = 0 to 714 do
				table_etudiants.(i).notes.(5) <- float_of_string(input_line source5);
			done;
			close_in source5;;

	(* Question 15 *)
	
let report_moyenne=
	let moy = ref 0. in
	for i = 0 to 714 do
		moy:= ((table_etudiants.(i).notes.(0) +. table_etudiants.(i).notes.(1) +. table_etudiants.(i).notes.(2) +. table_etudiants.(i).notes.(3) +. table_etudiants.(i).notes.(4) +. table_etudiants.(i).notes.(5))/.6.);
		table_etudiants.(i).moyenne <- !moy;
	done;;

	(*Question 16 *)

let nb_reçu= 
	let cpt = ref 0 in
		for i = 0 to 714 do 
			if table_etudiants.(i).moyenne >= 10. then
			cpt:= !cpt +1;
		done;
	!cpt;;

let recu = 
	let t2= Array.make 430 {nip = 0; nom = "nom"; prenom = "prenom"; notes = [|-1.;-1.;-1.;-1.;-1.;-1.|]; moyenne = -1.} and cpt = ref 0 in
	for i = 0 to 714 do 
			if table_etudiants.(i).moyenne >= 10. then
			begin
			t2.(!cpt)<- table_etudiants.(i);
			cpt:= !cpt +1;
			end;
		done;
	t2;;

(* trop long de trier le tableau mais sinon il suffit d'adapter l'algo de tri de l'appliquer sur les NIP, puis les prenoms puis les noms *)

let copie =
	let target = open_out "etudiants_recus.csv" in
		for i = 0 to 429 do
			output_string target (string_of_int(recu.(i).nip)); 
			output_string target "\t";
			output_string target recu.(i).nom;
			output_string target "\t";
			output_string target recu.(i).prenom;
			output_string target "\n";
		done;
	close_out target;;

	(* Question 17 *) 

let nb_snd= 
	let cpt = ref 0 in
		for i = 0 to 714 do 
			if table_etudiants.(i).moyenne < 10. && table_etudiants.(i).moyenne >= 5.then
			cpt:= !cpt +1;
		done;
	!cpt;;

let snd = 
	let t2= Array.make 285 {nip = 0; nom = "nom"; prenom = "prenom"; notes = [|-1.;-1.;-1.;-1.;-1.;-1.|]; moyenne = -1.} and cpt = ref 0 in
	for i = 0 to 714 do 
			if table_etudiants.(i).moyenne < 10. && table_etudiants.(i).moyenne >= 5. then
			begin
			t2.(!cpt)<- table_etudiants.(i);
			cpt:= !cpt +1;
			end;
		done;
	t2;;

let copie2 =
	let target = open_out "etudiants_seconde_session.csv" in
		for i = 0 to 284 do
			output_string target (string_of_int(snd.(i).nip)); 
			output_string target "\t";
			output_string target snd.(i).nom;
			output_string target "\t";
			output_string target snd.(i).prenom;
			output_string target "\t";
			if snd.(i).notes.(0)<10. then
			output_string target "API1 \t";
			if snd.(i).notes.(1)<10. then
			output_string target "MATHS \t";
			if snd.(i).notes.(2)<10. then
			output_string target "PHYSIQUE \t";
			if snd.(i).notes.(3)<10. then
			output_string target "ANGLAIS \t";
			if snd.(i).notes.(4)<10. then
			output_string target "TEC \t";
			if snd.(i).notes.(5)<10. then
			output_string target "SPORT \t";
			output_string target "\n";
			
		done;
	close_out target;;
























































