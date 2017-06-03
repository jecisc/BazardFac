(* TP n°6: Les présidentielles
Ferlicot Cyril
06/03/2012 *)

	(* Question 1 *)

#load "presidentielle2007.cmo";;
open Presidentielle2007;;

	(* Question 2 *) 

let nb_candidats = Array.length(candidats);;
let nb_bureaux = Array.length (bureaux);;

	(* Question 3 *)

let nb_dep () =
	let x = ref 1 in
		for i = 1 to nb_bureaux-2 do
			if bureaux.(i).code_dep <> bureaux.(i-1).code_dep
			then x := !x +1;
		done;
	!x;;

(* 
# #use "TP6.ml";;
val nb_candidats : int = 12
val nb_bureaux : int = 65617
val nb_dep : unit -> int = <fun>
# nb_dep();;
- : int = 101
*)

	(* Question 4 *)


let nb_com n =
	let x= ref 1 and y = ref 0 and z = ref 0in
	
		while bureaux.(!y).code_dep < n do
			y := !y+1;
		done;
	
		z := !y;
	
		if n = "ZM" then z:=nb_bureaux else 
		(
		while bureaux.(!z).code_dep <= n do
			z:= !z +1;
		done;
		 );
		 
		z:= !z-1;
	
		for i = !y to !z-1 do
			if bureaux.(i).code_com <> bureaux.(i-1).code_com
			then x := !x +1;
		done;
	
	!x;;

(*

# nb_com ("59");;
- : int = 652

*)

	(* Question 5 *) 

let nb_bur n r = 
	let x= ref 0 and y = ref 0 in
	
		while bureaux.(!y).code_dep < n do
			y := !y+1;
		done;
	
		while bureaux.(!y).code_com < r do
			y:= !y +1;
		done;
		
		while bureaux.(!y).code_com = r do
			y:= !y +1;
			x:= !x +1;
		done;
		
	
	!x;;

(*

# nb_bur "59" "009";;
- : int = 34
# nb_bur "59" "512";;
- : int = 45

*)


	(* Question 6 *)

let imprimer_bureau i =
	Printf.printf "Commune: %s \n Departement: %s \n Bureau: %s \n Nbre inscrits: %d \n Nbre votants: %d \n Nbre exprimes: %d \n Resultats: \n \t Olivier BESANCENOT  : %d  \n \t Marie-George BUFFET  : %d \n \t Gérard SCHIVARDI  : %d \n \t François BAYROU  : %d \n \t José BOVÉ  : %d \n \t Dominique VOYNET  : %d \n \t Philippe de VILLIERS  : %d \n \t Ségolène ROYAL  : %d \n \t Frédéric NIHOUS  : %d \n \t Jean-Marie LE PEN  : %d \n \t Arlette LAGUILLIER  : %d \n \t Nicolas SARKOZY  : %d \n"
		i.commune
		i.code_dep
		i.num_bureau
		i.nb_inscrits
		i.nb_votants
		i.nb_exprimes
		i.resultats.(0)
		i.resultats.(1)
		i.resultats.(2)
		i.resultats.(3)
		i.resultats.(4)
		i.resultats.(5)
		i.resultats.(6)
		i.resultats.(7)
		i.resultats.(8)
		i.resultats.(9)
		i.resultats.(10)
		i.resultats.(11);;



	(* Question 7 et 8*)

let extremum_inscrits () =
	let x= ref 0 and max = ref bureaux.(0).nb_inscrits and y = ref 0 and min = ref bureaux.(0).nb_inscrits in
	
		for i = 1 to nb_bureaux-1 do
			if !max < bureaux.(i).nb_inscrits 
			then (max :=  bureaux.(i).nb_inscrits; x:= i;)
		done;
	
		for i = 1 to nb_bureaux-1 do
			if !min > bureaux.(i).nb_inscrits 
			then (min :=  bureaux.(i).nb_inscrits; y:= i;)
		done;
	
		imprimer_bureau bureaux.(!x);
		imprimer_bureau bureaux.(!y);;

let extremum_votants () =
	let x= ref 0 and max = ref bureaux.(0).nb_inscrits and y = ref 0 and min = ref bureaux.(0).nb_inscrits in
	
		for i = 1 to nb_bureaux-1 do
			if !max < bureaux.(i).nb_votants
			then (max :=  bureaux.(i).nb_votants; x:= i;)
		done;
	
		for i = 1 to nb_bureaux-1 do
			if !min > bureaux.(i).nb_votants
			then (min :=  bureaux.(i).nb_votants; y:= i;)
		done;
	
		imprimer_bureau bureaux.(!x);
		imprimer_bureau bureaux.(!y);;

(*
# extremum_inscrits ();;
Commune: Barbentane
 Departement: 13
 Bureau: 0001
 Nbre inscrits: 2962
 Nbre votants: 2531
 Nbre exprimes: 2495
 Resultats:
         Olivier BESANCENOT  : 77
         Marie-George BUFFET  : 24
         Gérard SCHIVARDI  : 4
         François BAYROU  : 373
         José BOVÉ  : 40
         Dominique VOYNET  : 28
         Philippe de VILLIERS  : 54
         Ségolène ROYAL  : 441
         Frédéric NIHOUS  : 51
         Jean-Marie LE PEN  : 437
         Arlette LAGUILLIER  : 17
         Nicolas SARKOZY  : 949
Commune: BordÃ¨res-Louron
 Departement: 65
 Bureau: 0002
 Nbre inscrits: 5
 Nbre votants: 5
 Nbre exprimes: 5
 Resultats:
         Olivier BESANCENOT  : 0
         Marie-George BUFFET  : 0
         Gérard SCHIVARDI  : 0
         François BAYROU  : 0
         José BOVÉ  : 0
         Dominique VOYNET  : 0
         Philippe de VILLIERS  : 0
         Ségolène ROYAL  : 4
         Frédéric NIHOUS  : 0
         Jean-Marie LE PEN  : 0
         Arlette LAGUILLIER  : 1
         Nicolas SARKOZY  : 0
- : unit = ()

# extremum_votants ();;
Commune: Barbentane
 Departement: 13
 Bureau: 0001
 Nbre inscrits: 2962
 Nbre votants: 2531
 Nbre exprimes: 2495
 Resultats:
         Olivier BESANCENOT  : 77
         Marie-George BUFFET  : 24
         Gérard SCHIVARDI  : 4
         François BAYROU  : 373
         José BOVÉ  : 40
         Dominique VOYNET  : 28
         Philippe de VILLIERS  : 54
         Ségolène ROYAL  : 441
         Frédéric NIHOUS  : 51
         Jean-Marie LE PEN  : 437
         Arlette LAGUILLIER  : 17
         Nicolas SARKOZY  : 949
Commune: Oyonnax
 Departement: 01
 Bureau: 0007
 Nbre inscrits: 1836
 Nbre votants: 0
 Nbre exprimes: 0
 Resultats:
         Olivier BESANCENOT  : 0
         Marie-George BUFFET  : 0
         Gérard SCHIVARDI  : 0
         François BAYROU  : 0
         José BOVÉ  : 0
         Dominique VOYNET  : 0
         Philippe de VILLIERS  : 0
         Ségolène ROYAL  : 0
         Frédéric NIHOUS  : 0
         Jean-Marie LE PEN  : 0
         Arlette LAGUILLIER  : 0
         Nicolas SARKOZY  : 0
- : unit = ()
*)




	(* Question 9*)


type score =
{
	inscrits: int; 
	votants: int; 
	exprimes: int;
	scores: int array; 
};;

	(* Question 10 *)

let inscrits_tot=
	let x = ref 0 in
		for i= 0 to nb_bureaux-1 do
			x:= !x + bureaux.(i).nb_inscrits;
		done;
	!x;;

let votants_tot=
	let x = ref 0 in
		for i= 0 to nb_bureaux-1 do
			x:= !x + bureaux.(i).nb_votants;
		done;
	!x;;

let exprimes_tot=
	let x = ref 0 in
		for i= 0 to nb_bureaux-1 do
			x:= !x + bureaux.(i).nb_exprimes;
		done;
	!x;;

let resultats_tot =
	let x = (Array.make 12 0) in
		for j= 0 to nb_bureaux-1 do
			for i = 0 to 11 do 
				x.(i) <- x.(i) + bureaux.(j).resultats.(i)
			done;
		done;
	x;;

let score_nationaux =
{
	inscrits = inscrits_tot;
	votants = votants_tot;
	exprimes = exprimes_tot;
	scores = resultats_tot;
};;

(* 
val score_nationaux : score =
  {inscrits = 43319652; votants = 36704366; exprimes = 36175364;
   scores =
    [|1491453; 730626; 132653; 6725303; 489883; 609461; 814090; 9307772;
      419001; 3796260; 493985; 11164877|]}
*)

	(* Question 11 *)

let imprimer_score i=
	Printf.printf "Nombre inscrits : %d \n Nombre votants  : %d ( %0.2f %%) \n Nombre exprimés : %d (%0.2f %%) \n \t Olivier BESANCENOT : %d (%0.2f %%) \n \t Marie-George BUFFET : %d (%0.2f %%)  \n \t Gérard SCHIVARDI : %d (%0.2f %%)  \n \t François BAYROU : %d (%0.2f %%)  \n \t José BOVÉ : %d (%0.2f %%)  \n \t Dominique VOYNET : %d (%0.2f %%) \n \t Philippe de VILLIERS : %d (%0.2f %%) \n \t Ségolène ROYAL : %d (%0.2f %%) \n \t Frédéric NIHOUS : %d (%0.2f %%) \n \t Jean-Marie LE PEN : %d (%0.2f %%) \n \t Arlette LAGUILLIER : %d (%0.2f %%) \n \t Nicolas SARKOZY : %d (%0.2f %%) \n"
		 i.inscrits
		 i.votants
		 (100.0 /. float_of_int(i.inscrits) *. float_of_int(i.votants))
		 i.exprimes
		 (100.0 /. float_of_int(i.inscrits) *. float_of_int(i.exprimes))
		 i.scores.(0)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(0)))
		 i.scores.(1)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(1)))
		 i.scores.(2)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(2)))
		 i.scores.(3)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(3)))
		 i.scores.(4)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(4)))
		 i.scores.(5)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(5)))
		 i.scores.(6)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(6)))
		 i.scores.(7)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(7)))
		 i.scores.(8)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(8)))
		 i.scores.(9)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(9)))
		 i.scores.(10)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(10)))
		 i.scores.(11)
		 (100.0 /. float_of_int(i.exprimes) *. float_of_int(i.scores.(11)));;

	(* Question 12 *) 

let score_local n=
	let x= ref 0 and y= ref 0 in
		
		
		while bureaux.(!x).code_dep < n do
				x := !x+1;
			done;
		
			y := !x;
		
			if n = "ZM" then y:=nb_bureaux else 
			(
			while bureaux.(!y).code_dep <= n do
				y:= !y +1;
			done;
			);
		
			y:= !y-1;


	let inscrits_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_inscrits;
			done;
		!z )

	and

	votants_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_votants;
			done;
		!z)

	and 

	exprimes_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_exprimes;
			done;
		!z)

	and

	resultats_n =
		(let z = (Array.make 12 0) in
			for j= !x to !y do
				for i = 0 to 11 do 
					z.(i) <- z.(i) + bureaux.(j).resultats.(i)
				done;
			done;
		z) in 

	{
		inscrits = inscrits_n;
		votants = votants_n;
		exprimes = exprimes_n;
		scores = resultats_n;
	} ;;

let imprimer_local n=

	imprimer_score (score_local n);;

	(* Question 13 *)

let liste_dep ()=
	let t = (Array.make 101 "01") and x= ref 0 in
		for i = 1 to nb_bureaux-2 do
			if bureaux.(i).code_dep <> bureaux.(i-1).code_dep
			then (x := !x +1; t.(!x) <-bureaux.(i).code_dep;)
		done;
	t;;



let meilleur_p () =
let x= ref "0" and max = ref (100.0 /. float_of_int((score_local "01").exprimes) *. float_of_int((score_local "01").scores.(11))) and t= liste_dep() in
	for i = 1 to 100 do 
		if !max < (100.0 /. float_of_int((score_local (t.(i))).exprimes) *. float_of_int((score_local (t.(i))).scores.(11)))
		then 
			(
				max :=(100.0 /. float_of_int((score_local (t.(i))).exprimes) *. float_of_int((score_local (t.(i))).scores.(11))); 
				x:= (t.(i));
			);
	done;
	!x;;

(*
# meilleur_p();;
- : string = "06"
*)

	(* Question 14 *)

let score_communal n r=
	let x= ref 0 and y = ref 0 in
	
		while bureaux.(!x).code_dep < n do
			x := !x+1;
		done;
	
		while bureaux.(!x).code_com < r do
			x:= !x +1;
		done;
	
		y:= !x ;
	
		while bureaux.(!y).code_com = r do
			y := !y +1;
		done;


	let inscrits_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_inscrits;
			done;
		!z )

	and

	votants_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_votants;
			done;
		!z)

	and 

	exprimes_n=
		(let z = ref 0 in
			for i= !x to !y do
				z:= !z + bureaux.(i).nb_exprimes;
			done;
		!z)

	and

	resultats_n =
		(let z = (Array.make 12 0) in
			for j= !x to !y do
				for i = 0 to 11 do 
					z.(i) <- z.(i) + bureaux.(j).resultats.(i)
				done;
			done;
		z) in 

	{
		inscrits = inscrits_n;
		votants = votants_n;
		exprimes = exprimes_n;
		scores = resultats_n;
	} ;;

let score_communal n r=

	imprimer_score (score_communal n r);;

(* # score_communal "59" "009";;
Nombre inscrits : 39069
 Nombre votants  : 32174 ( 82.35 %)
 Nombre exprimés : 31812 (81.43 %)
         Olivier BESANCENOT : 1638 (5.15 %)
         Marie-George BUFFET : 523 (1.64 %)
         Gérard SCHIVARDI : 50 (0.16 %)
         François BAYROU : 6266 (19.70 %)
         José BOVÉ : 460 (1.45 %)
         Dominique VOYNET : 598 (1.88 %)
         Philippe de VILLIERS : 406 (1.28 %)
         Ségolène ROYAL : 10082 (31.69 %)
         Frédéric NIHOUS : 189 (0.59 %)
         Jean-Marie LE PEN : 2549 (8.01 %)
         Arlette LAGUILLIER : 548 (1.72 %)
         Nicolas SARKOZY : 8503 (26.73 %)
- : unit = ()
*)















