(* Cyril Ferlicot 
16/02/2012
TP n°4 *)

(* Definition des fonctions et procedures *)
open Graphics;;

let point_suivant (i,j) d l =
match d with
| 'N' -> (i, (j+l))
| 'S' -> (i, j-l)
| 'E' -> ( i+l, j)
| 'O' -> (i-l, j)
| _ -> failwith "Ceci n'est pas une direction correcte";;


let dessiner_chemin (i,j) mot l=
moveto i j;
for r= 0 to String.length(mot)-1 do
let (x,y) = (point_suivant (current_point()) mot.[r] l) in
  lineto x y;
done;;

(* Usage *) 

let usage () =
	Printf.printf "Usage: Erreur. \n Veuillez entrer 2 arguments. Le premier étant la description du chemin et le second la taille des traits. \n" ;;

(* Programme principal *) 

let principal () =
	if (Array.length Sys.argv) <> 3 
	then 
	usage () 
	else 
	( 
		open_graph ("500x500");
		dessiner_chemin (250, 250) Sys.argv.(1) (int_of_string (Sys.argv.(2)));
		
	);
	read_key();;


(* appel a la procedure principal *) 

let _ = principal ();;







