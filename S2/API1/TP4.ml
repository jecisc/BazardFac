(* Cyril Ferlicot 
12/02/2012
TP n�4 *)


(* Cette archive comprend:
	-> TP4.ml qui regroupe les r�ponses aux questions.
	-> table_mult_7.ml table_mult_7 table_mult_7.cmo table_mult_7.cmi, l'executeur du programme de la partie 2.2
	-> impr_table.ml impr_table impr_table.cmo impr_table.cmi, l'executeur du programme de la partie 2.3
	-> print_args.ml print_args.cmo print_args.cmi print_args, l'executeur du programme de la question 10
	-> chemin.ml chemin.cmo chemin.cmi chemin, l'executeur du programme de la question 12

*)

		(* Question 1 *)
		
(* on ne peux pas, avec nos connaissances actuelles, cr�er cette fonction simplement. *)

		(* Question 2 *)
		
let endline n=
	print_string (n); print_string(" \n");;
		
		(* Question 3 *)
		
(* 
# Printf.printf "%s" "test";;
test- : unit = ()

# Printf.printf "%d" 3;;
3- : unit = ()

# Printf.printf "%f" 3.5;;
3.500000- : unit = ()

# Printf.printf "%B" true;;
true- : unit = ()

# Printf.printf "%c" '$';;
$- : unit = ()

*)

		(* Question 4 *)

(*		
let tel = 0601020304 and eco = 30. and nom = "Maman" and total = 45.75 in
Printf.printf "Tu veux acheter ce jou� � %.2f $ mais tu n'as que %.0f $ ? \n Appel %s pour qu'elle te donne %.2f $ ! Son num�ro c'est le 0%d \n" 
	total
	eco
	nom
	(total -. eco)
	tel;;
*)

		(* Question 5 *)
	
(*
Si l'on �crit par exemple %6.5f cela laissera l'�quivalent de 6 espaces avant le float et affichera 5 d�cimales. 
En g�n�ral %x.yf laissera x espaces avant le chiffre � y d�cimales. 
*)

		(* Question 6 *)
		
(*
# Printf.printf "%20.4f" 3.5;;
              3.5000- : unit = ()
			  
*)

		(* Question 7 *) 
		
let imprimer_table_mult n=
	for i = 1 to 10 do 
		Printf.printf "\t %2d x %2d = %3d \n" i n (n*i)
		done;;

		(* Question 8 *)
		
(* Notre proc�dure respecte les r�gles tant que n < 100, avec n notre param�tre. *)

		(* Question 9 *)

let liste_log a b n=
let pas = ((b-.a)/. float_of_int(n)) in
	Printf.printf "     x | log (x)\n";
	for i = 0 to n do
		Printf.printf " %0.3f | %0.5f \n"
			(a +.  float_of_int(i)*.pas)
			(log (a +.  float_of_int(i) *. pas))
	done;;
	
		(* Question 10 *)
		
(* on peut en d�duire que les guillemets sont inutiles sur une ligne de commande car tous les arguments sont des string. *)

		(* Question 11 *)
		
(* 
Argument ne pouvant pas �tre un int:

C:\Users\JeCisC>ocamlrun impr_table a
Fatal error: exception Failure("int_of_string")

Sans argument:
C:\Users\JeCisC>ocamlrun impr_table
Fatal error: exception Invalid_argument("index out of bounds")

Deux argument, il prend le premier:
C:\Users\JeCisC>ocamlrun impr_table 2 5
          1 x  2 =   2
          2 x  2 =   4
          3 x  2 =   6
          4 x  2 =   8
          5 x  2 =  10
          6 x  2 =  12
          7 x  2 =  14
          8 x  2 =  16
          9 x  2 =  18
         10 x  2 =  20
*)










