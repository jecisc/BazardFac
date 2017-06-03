(* Ferlicot-Delbecque Cyril
	TP6: Les grands entiers*)
	
	(* Question 1 *)
	
(* 
Q1.1 : 
# let a = power_int_positive_int 2 1024;;
val a : Big_int.big_int = <abstr>
# string_of_big_int a;;
- : string =
"179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216"

Q1.2 :
"17977216"

Q1.3: 
# let b = power_int_positive_int 17977216 2;;
val b : Big_int.big_int = <abstr>
# string_of_big_int b;;                      
- : string = "323180295110656"

Il y a 15 chiffre dont les 4 premiers et derniers sont : 32310656
*)

	(* Question 2*)
let big_2 = big_int_of_int 2;;

let rec fact a =
	let b = big_int_of_int a in
		if  (compare_big_int b big_2) = 0 then
			big_2
		else
			mult_big_int b (fact (a-1));;
			
string_of_big_int (fact 100);;
	
(*
- : string =
"93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000"
*)

	(* Question 3 *)
	


























