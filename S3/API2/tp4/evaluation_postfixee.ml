
open Lexemes ;;
open Stack ;;

exception Expression_mal_formee;;

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
		a + b ;
		
and sub p=
	let a = premier p and b = premier p in
		a - b ;
		
and mul p=
	let a = premier p and b = premier p in
		a * b ;
		
and div p=
	let a = premier p and b = premier p in
		a / b ;

and modu p=
	let a = premier p and b = premier p in
		a mod b ;
and premier p =
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

			calcul p;;
			
			
			
			