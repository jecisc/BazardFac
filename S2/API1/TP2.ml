(* TP API1 n°2 MIMP22
Cyril Ferlicot 
28/01/2013*)

(* Q1 *) 

(*
open_graph ;

- : string -> unit = <fun>

close_graph ;

- : unit -> unit = <fun>

clear_graph ;

- : unit -> unit = <fun>

moveto ;

- : int -> int -> unit = <fun>

lineto ;

- : int -> int -> unit = <fun>

current_point. 

- : unit -> int * int = <fun>

*)

(* Q2 *)
(*
# open_graph(" 640x480");;
- : unit = ()
*)
(* Q3 *)
(*
# close_graph() ;;        
- : unit = ()
*)

(* Q4 *)
(*
# lineto 320 240;;
- : unit = ()
*)

(* Q5 *)
(*
# moveto 0 240;;
- : unit = ()
# lineto 320 240;;
- : unit = ()
*)

(* Q6 *)
  (*
# current_point();;
- : int * int = (320, 240)
*)

(* Q7 *)
  (*
# clear_graph();;
- : unit = ()
*)

(* Q8 *)

(* 1: un retangle trois fois plus haut que long
 __
|   |
|   |
|__|

*)

(* 2: Une pyramide sous la forme: 
	__
    __|   |__
__|           |__
*)

(* 3:  idem que 2*)

(* Q9 *)

 (* a partir de A *)
   (*
 "ENESESOSONON"
 
 "SESENENONOSO"
 *)
  (* a partir de B *)
    (*
  "NONOSOSESENE"
  
  "OSONONENESES"
  *)
(* Q10 *)

let point_suivant (i,j) d l =
match d with
| 'N' -> (i, (j+l))
| 'S' -> (i, j-l)
| 'E' -> ( i+l, j)
| 'O' -> (i-l, j)
| _ -> failwith "Ceci n'est pas une direction correcte";;

(* Q12*)

let dessiner_chemin (i,j) mot l=
moveto i j;
for r= 0 to String.length(mot)-1 do
let (x,y) = (point_suivant (current_point()) mot.[r] l) in
  lineto x y;
done;;
  
  (* Q13*)
  
  (* Le crayon est revenu au point de départ *)
  
  (* Q14*)
  
  (* # open Random;;
# Random.self_init;;
- : unit -> unit = <fun>
# Random.int;;
- : int -> int = <fun>
*)

(* Q15*)

(* # Random.self_init();;
- : unit = ()
*)

(* Q16 *)

let rand20 ()=
for i= 0 to 20 do
print_int(Random.int(4));
print_newline();
done;;
  
  (* Q17 *)
  
let direction_aleatoire ()=
match Random.int(4) with 
| 0 -> 'N'
| 1 -> 'S'
| 2 -> 'E'
| _ -> 'O';;

(* Q18 *)

let chemin_aleatoire (n)=
let s = String.create(n) in
begin
for i= 0 to n-1 do
s.[i] <- direction_aleatoire();
done;
s;
end;;














