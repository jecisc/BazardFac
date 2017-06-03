open Experience
open Tris

let cpt = ref 0

(** [est_dans m p]  renvoit true si le marqueur [m] se trouve dans le tableau de marqueur [p]. *)
let est_dans marqueur positifs=
  let marq = ref true and j = ref 0 in
  while (!marq && !j < Array.length positifs) do
    cpt:= !cpt+1;  (*compteur de comparaisons*)
    if (cmp positifs.(!j) marqueur ) = 0 then
      marq := false; (* Si le marqueur a été trouvé dans le tableau des positifs, on change la valeur de marq*)
    j := !j +1;
  done;
  !marq;;
  

(** 
    strategie 1
*)
let liste_des_marqueurs_negatifs_1 marqueurs positifs =
  let l = ref [] 
  and long_marq = Array.length marqueurs 
  in
  for i = 0 to (long_marq -1) do
    let marq = est_dans marqueurs.(i) positifs in
    if (marq) then (* si le marqueur n'est pas dans le tableau des marqueurs positifs nous pouvons le rajouter à la liste*)
      l:= (marqueurs.(i))::!l;
  done;
  !l;;

(*
(** [est_dans2 m p]  renvoit true si le marqueur [m] se trouve dans le tableau trié de marqueur [p]. *)
let est_dans2 marqueur positifs=
  let marq = ref true and j = ref 0 in
  while (!marq && !j < Array.length positifs) do
    let comp =  (cmp positifs.(!j) marqueur ) in    
    cpt:= !cpt+1; (*compteur de comparaisons*)
    if comp = 0 then
      marq := false  (* Si le marqueur a été trouvé dans le tableau des positifs, on change la valeur de marq*)
    else 
      (
	if comp = 1 then
	  j := Array.length positifs (* Si a > b, on renvoit j à la dernière case du tableau pour stopper la boucle while *)
	else
	  j := !j +1;
      );
  done;
  !marq;;
*)

let est_dans2 marqueur positifs=
  let m = ref 1
  and g = ref 0
  and d = ref(( Array.length(positifs))-1) in
  while (!g < !d) do
    m:= (!g + !d)/2;
    if ((cmp positifs.(!m) marqueur) = -1) then
      g:= !m +1
    else
      d:=!m;
    
      cpt:= !cpt+1;
  done;
  
 ( positifs.(!g) = marqueur);;


(** 
    strategie 2
*)
let liste_des_marqueurs_negatifs_2 marqueurs positifs =
  let pos_trie = Tris.trier positifs Experience.cmp
  and l = ref []
  and m = Array.length (marqueurs)
  in 
  for i = 1 to (m-1) do
    if not(est_dans2 marqueurs.(i) pos_trie) then
      l:= marqueurs.(i)::!l;
  done;
  !l;;

(*
let liste_des_marqueurs_negatifs_2 marqueurs positifs =
  let l = ref [] 
  and long_marq = Array.length marqueurs
  and positifs_tri = Tris.trier positifs Experience.cmp (* tris des positifs *)
  in
  for i = 0 to (long_marq -1) do
    let marq = est_dans2 marqueurs.(i) positifs_tri in
    if (marq) then (* si le marqueur n'est pas dans le tableau des marqueurs positifs nous pouvons le rajouter à la liste*)
      l:= (marqueurs.(i))::!l;
  done;
  !l;;*)


(** [est_dans3 m p inf]  renvoit true si le marqueur [m] se trouve dans le tableau trié de marqueur [p] à partir de l'indice [inf]. *)
let est_dans3 marqueur positifs inf=
  let marq = ref true 
  and j = ref inf 
  and fin = ref (Array.length positifs) 
  in
  while (!marq && !j < Array.length positifs) do
    let comp =  (cmp positifs.(!j) marqueur ) in
    cpt:= !cpt+1;  (*compteur de comparaisons*)
    if comp = 0 then
      (
	marq := false;
	fin := !j  (* Si le marqueur a été trouvé dans le tableau des positifs, on change la valeur de marq et on marque avec fin la valeur où on est arrivé dans le tableau*)
      )
    else 
      (
	if comp = 1 then
	  (
	    fin := !j;
	    j := Array.length positifs  (* Si a > b, la valeur n'est pas dans le tableau, on marque donc où on est arrivé avec fin et on stop la boucle en renvoyant j a la fin du tableau *)
	  )
	else
	  j := !j +1;
      );
  done;
  (!marq, !fin);;

(** 
    strategie 3
*)
let liste_des_marqueurs_negatifs_3 marqueurs positifs =
  let l = ref [] 
  and long_marq = Array.length marqueurs
  and positifs_tri = Tris.trier positifs Experience.cmp
  and marqueurs_tri = Tris.trier marqueurs Experience.cmp
  and inf = ref 0
  in
  for i = 0 to (long_marq -1) do
    let (marq, new_indice) = (est_dans3 marqueurs_tri.(i) positifs_tri !inf) in
    if (marq) then (* si le marqueur n'est pas dans le tableau des marqueurs positifs nous pouvons le rajouter à la liste*)
      l:= (marqueurs_tri.(i))::!l;
    inf := new_indice;
  done;
  !l;;


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
(*
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
*)
let _ = 
  let m = int_of_string Sys.argv.(1) (* nombre de marqueurs positifs *)
  in
  let mtab = marqueurs m
  in

(*  (* impression des marqueurs *)
  Printf.printf "Marqueurs          : ";
  for i = 0 to m-1 do
    Printf.printf "%s " mtab.(i)
  done;
  Printf.printf "\n";
  Printf.printf "\n";
*)
  (* impression des resultats *) 
  for i = 1 to m do
    let l =ref[] in
    Printf.printf "%3d %3d"
      m
      i;
    cpt:=0; 
    l:= ( liste_des_marqueurs_negatifs_1 mtab (experience i mtab));
    Printf.printf " %3d" 
      !cpt;
    cpt:=0;
    l:= (liste_des_marqueurs_negatifs_2 mtab (experience i mtab));
    Printf.printf" %3d"
      !cpt;
    cpt:= 0;
    l:= (liste_des_marqueurs_negatifs_3 mtab (experience i mtab));
    Printf.printf" %3d"
      !cpt;
    Printf.printf "\n";   
  done;
  
 
