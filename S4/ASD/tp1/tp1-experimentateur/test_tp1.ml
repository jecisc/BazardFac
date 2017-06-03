open Experience
open Tris

let cpt = ref 0

(** 
    strategie 1
*)
let liste_des_marqueurs_negatifs_1 marqueurs positifs =
  let l = ref []
  in
  !l


(** 
    strategie 2
*)
let liste_des_marqueurs_negatifs_2 marqueurs positifs =
  let l = ref []
  in
  !l


(** 
    strategie 3
*)
let liste_des_marqueurs_negatifs_3 marqueurs positifs =
  let l = ref []
  in
  !l


(**
   [imprimer_liste_marqueurs l] imprime les marqueurs de la liste l
*)
let rec imprimer_liste_marqueurs l =
  match l with
    | [] -> 
      Printf.printf "\n"
    | m::r -> 
      Printf.printf "%s " m;
      imprimer_liste_marqueurs r

let _ = 
  let p = int_of_string Sys.argv.(1) (* nombre de marqueurs positifs *)
  and m = int_of_string Sys.argv.(2) (* nombre de marqueurs total *)
  in
  let mtab = marqueurs m
  in
  let etab = experience p mtab
  in

  (* impression des marqueurs *)
  Printf.printf "Marqueurs          : ";
  for i = 0 to m-1 do
    Printf.printf "%s " mtab.(i)
  done;
  Printf.printf "\n";

  (* impression des marqueurs positifs *)
  Printf.printf "Marqueurs positifs : ";
  for i = 0 to p-1 do
    Printf.printf "%s " etab.(i)
  done;
  Printf.printf "\n";


  (* test methode 1 *)
  cpt := 0;
  Printf.printf "Marqueurs negatifs : ";
  imprimer_liste_marqueurs (liste_des_marqueurs_negatifs_1 mtab etab);
  Printf.printf "M1: %d\n" !cpt;


  (* test methode 2 *)
  cpt := 0;
  Printf.printf "Marqueurs negatifs : ";
  imprimer_liste_marqueurs (liste_des_marqueurs_negatifs_2 mtab etab);
  Printf.printf "M2 : %d\n" !cpt;


  (* test methode 3 *)
  cpt := 0;
  Printf.printf "Marqueurs negatifs : ";
  imprimer_liste_marqueurs (liste_des_marqueurs_negatifs_3 mtab etab);
  Printf.printf "M3 : %d\n" !cpt;


  
      
