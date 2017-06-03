(* TP 01 - Modules
Ferlicot Cyril
Verheyde Pauline
19/09/2013 
part2*)

open Complexe ;;

	(* Question 19 *)

(* 
# zero;;
- : Complexe.t = <abstr>
# i;;
- : Complexe.t = <abstr>
# un ;;
- : Complexe.t = <abstr>

On constate que le type est devenu abstrait !
*)

imprimer un ;;
imprimer i ;;
imprimer zero ;;

(* 
1.000000 + 0.000000i- : unit = ()
0.000000 + 1.000000i- : unit = ()
0.000000 + 0.000000i- : unit = ()
*)

	(* Question 20 *) 
	
let j = cree_complexe 1. (sqrt(3.)/.2.) ;; (* Marche avec complexe2 car utilise cree_complexe *)
(* let j2= { re = 1. ; im = (sqrt(3.)/.2.) };; Ne marche pas car le type est abstrait *)
	
let expres z = (re z , im z) ;; (* marche *)
(* let expres2 z = (z.re , z.im);; Ne marche pas *) 

	(* Question 21 *)
	
(* 
ferlicotdelbe@116p11:~/tp/API2/tp1$ ./essai_complexe 1 2
Nombre complexe z = 1.000000 + 2.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 2.000000
Norme de z = 2.236068
Conjugue de z = 1.000000 + -2.000000i
Inverse de z = 0.200000 + -0.400000i
(z + 1) / (z - 1) = 1.000000 + -1.000000i

ferlicotdelbe@116p11:~/tp/API2/tp1$ ./essai_complexe 1 0
Nombre complexe z = 1.000000 + 0.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 0.000000
Norme de z = 1.000000
Conjugue de z = 1.000000 + -0.000000i
Inverse de z = 1.000000 + -0.000000i
*)

(* Nous obtenons la même chose car nous n'avons pas besoin de connaitre le type *)


	(* Question 24*)
	
(* ferlicotdelbe@a10p16:~/tp/API2/tp1$ ./essai_complexe 1 2
Nombre complexe z = 1.000000 + 2.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 2.000000
Norme de z = 2.236068
Conjugue de z = 1.000000 + -2.000000i
Inverse de z = 0.200000 + -0.400000i
(z + 1) / (z - 1) = 1.000000 + -1.000000i
ferlicotdelbe@a10p16:~/tp/API2/tp1$ ./essai_complexe 1 0
Nombre complexe z = 1.000000 + 0.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 0.000000
Norme de z = 1.000000
Conjugue de z = 1.000000 + -0.000000i
Inverse de z = 1.000000 + -0.000000i
*)

	(* Question 27 *)
	
(*
ferlicotdelbe@a10p16:~/tp/API2/tp1$ ./essai_complexe 1 2Nombre complexe z = 1.000000 + 2.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 2.000000
Norme de z = 2.236068
Conjugue de z = 1.000000 + -2.000000i
Inverse de z = 0.200000 + -0.400000i
(z + 1) / (z - 1) = 1.000000 + -1.000000i
ferlicotdelbe@a10p16:~/tp/API2/tp1$ ./essai_complexe 1 0
Nombre complexe z = 1.000000 + 0.000000i
Partie reelle de z = 1.000000
Partie imaginaire de z = 0.000000
Norme de z = 1.000000
Conjugue de z = 1.000000 + -0.000000i
Inverse de z = 1.000000 + -0.000000i
*)













