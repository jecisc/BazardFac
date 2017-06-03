(* Calcul des ressources*)

let or_need p t =
(t * p) + (50*(p-1)) ;;

let pt o t=
	let taux = ref t and pt= ref 0 and orr = ref o in
	while !orr > t do
	orr:= !orr - !taux;
	taux:= !taux +50;
	pt := !pt +1;
	done;
	!pt;; 
	
let bissextile a=
 a mod 4 = 0 && not(a mod 100= 0) || a mod 400 =0;;
 
let vmois m =
 0 < m && m <  13;;
 
let nbjour m a=
let nb = ref 0 in
	if m = 2 && bissextile a 
	then nb := 29
	else 
	(
		match m with
		| 2 -> nb:= 28
		| 1| 3| 5| 7| 8| 10| 12 -> nb:= 31 
		| _ -> nb:= 30
	);
	!nb;;
	
let vjour j m a=
0 < j && j < nbjour m a;;

let vdate j m a=
vmois m && vjour j m a;;

let lendemain j m a=
if j = nbjour m a
then 
	(if m=12
	then (1, 1, a+1)
	else (1, m+1, a);
	)
else (j+1, m, a);;


	
	
	
	
	
	
 
 