
open Lexemes ;;
open Stack ;;
open Printf;;

exception Expression_mal_formee;;

let imprimer_pile p = 
	let copie = create () in
		while not (is_empty p ) do
			match (top p) with
			|Op Add -> printf "+ \n"
			|Op Sub -> printf "- \n"
			|Op Mul -> printf "* \n"
			|Op Div -> printf "/ \n"
			|Op Mod -> printf "mod \n"
			|Int h-> printf "%d \n" h;
			push (pop p) copie;
		done;
		while not (is_empty copie) do
			push ( pop copie) p
		done;;
		
let test h p=
	if (is_empty p) then 
		h
	else 
		raise Expression_mal_formee;;

let rec calcul p =
		match (pop p, p) with
			|(Op Add,_) -> add p
			|(Op Sub,_)  -> sub p
			|(Op Mul,_)  -> mul p
			|(Op Div,_)  -> div p
			|(Op Mod,_)  -> modu p
			|(Int h, p)-> (test h p) ;
			|(_,_) -> raise Expression_mal_formee;
and add p=
	let a = (premier p) and b = (premier p) in
		(*imprimer_pile p;*)
		a + b ;
	
and sub p=
	let a = premier p and b = premier p in
		(*imprimer_pile p;*)
		a - b ;
		
and mul p=
	let a = premier p and b = premier p in
		(*imprimer_pile p;*)
		a * b ;
		
and div p=
	let a = premier p and b = premier p in
		(*imprimer_pile p;*)
		a / b ;

and modu p=
	let a = premier p and b = premier p in
		(*imprimer_pile p;*)
		a mod b ;
and premier p =
	(*imprimer_pile p;*)
	match (top p) with 
		| Int _ -> add_prem p 
		| _ -> calcul p;
and add_prem p=
	match (pop p) with
		|Int h -> h
		| _ -> raise Expression_mal_formee;;



let evalue s=
	let t = lexemes s in 
		let l = Array.length t and p = create () in 
			for i = 0 to (l-1) do
				push t.(i) p;
			done;
			imprimer_pile p;
			calcul p;;
			
			
			
			