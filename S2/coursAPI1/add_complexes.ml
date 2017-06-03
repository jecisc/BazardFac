(**
   Programme d'additions de deux nombres complexes lus sur la ligne de commande.
   La norme de la somme est aussi affichée.

   @author FIL - IEEA - Univ. Lille1 (sept 2013)
*)

open Complexe5

let usage () = 
  Printf.printf "Usage %s <re1> <im1> <re2> <im2> \n" Sys.argv.(0) ;
  Printf.printf "avec \n" ;
  Printf.printf "\t<re1> et <im1> parties réelle et imaginaire du premier nombre\n" ;
  Printf.printf "\t<re2> et <im2> parties réelle et imaginaire du premier nombre\n" ;
  exit 1

let principal () = 
  if Array.length Sys.argv <> 5 then
    usage ()
  else 
    let re1 = float_of_string Sys.argv.(1)
    and im1 = float_of_string Sys.argv.(2)
    and re2 = float_of_string Sys.argv.(3)
    and im2 = float_of_string Sys.argv.(4) in
    let z1 = cree re1 im1
    and z2 = cree re2 im2 in
    let somme = add z1 z2 in
    Printf.printf "Somme : " ;
    imprimer somme ;
    Printf.printf "\nNorme : %f\n" (norme somme) ;
    exit 0


let _ = principal ()

