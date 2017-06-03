
let nombre1 a b c d =
(a - (b - c - d))/2
;;

let nombre2 a b c d=
(nombre1 a b c d) - c;;

let usage ()=
	Printf.printf "Il taper : \n ocamlrun GM (nombre de points total) (nombre de point en cours) (nombre de points déjà mits) (nombre de points du second) \n pour que celà marche \n";;
	
	

let principale () =
	if (Array.length Sys.argv) <> 5 then usage ()
	else
		begin
			Printf.printf "Il faut encore mettre %d pour atteindre le seuille de sécurité des %d points." 
			(nombre2 (int_of_string(Sys.argv.(0))) (int_of_string(Sys.argv.(1))) (int_of_string(Sys.argv.(2))) (int_of_string(Sys.argv.(3))))
			(nombre1 (int_of_string(Sys.argv.(0))) (int_of_string(Sys.argv.(1))) (int_of_string(Sys.argv.(2))) (int_of_string(Sys.argv.(3))))
		end;
;;


let _ = principale();;









