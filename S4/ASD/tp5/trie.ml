open Printf

let cpt = ref 0 and cpt2 = ref 0 

type trie = Vide | Noeud of noeud
and noeud = {mutable fin_mot : bool; fils : (string, trie) Hashtbl.t}

exception Trie_vide

let new_trie () =
  Noeud {fin_mot = false; fils = Hashtbl.create 100}
    
let le_noeud a=
  match a with 
  | Vide -> raise Trie_vide
  | Noeud a -> a


let rec add t w =
  (* si la chaine est vide on ne fait rien, sinon on l'ajoute *)
  if not(String.length w < 1) then
    (
      (* Si la longueur de notre chaine est de 1 alors on vérifie s'il existe déjà notre dernière lettre dans notre Hashtable. Si oui on change la valeur de fin_mot, sinon on crée la lettre. *)
      if String.length w = 1 then
	(
	  let c = w.[0] in
	  try
	    (le_noeud (Hashtbl.find (le_noeud t).fils c)).fin_mot <- true
	  with
	  |Not_found -> Hashtbl.add (le_noeud t).fils c (Noeud {fin_mot = true; fils = Hashtbl.create 26})
	)
      else 
	(* Si la longueur est superieur a 1 on essaye de voir si la premiere lettre existe deja, si elle existe pas on la cree puis on rappel notre fonction pour le reste du mot. *)
	(
	  let c = w.[0] in
	  try 
	    add (Hashtbl.find (le_noeud t).fils c) (String.sub w 1 (String.length w -1))
	  with
	  |Not_found -> Hashtbl.add (le_noeud t).fils c (Noeud {fin_mot = false; fils = Hashtbl.create 26}); add (Hashtbl.find (le_noeud t).fils c) (String.sub w 1 (String.length w -1))
	)
    )

let rec contains t w =
  (* Si notre mot a une longueur de 1 alors on verifie que la lettre appartient au trie et que c'est une fin de mot. Si oui, on renvoit true, sinon on renvoit false.*)
  if String.length w = 1 then
    (
      let c = w.[0] in
      try 
	(le_noeud (Hashtbl.find (le_noeud t).fils c)).fin_mot = true
      with
      |Not_found -> false
    )
  else 
    (* Sinon on verifie que la premiere lettre est dans le trie, si oui on rappel contains avec le reste du mot, sinon on renvoit false *)
    (
      let c = w.[0] in
      try 
	contains (Hashtbl.find (le_noeud t).fils c) (String.sub w 1 (String.length w -1))
      with 
      | Not_found -> false
    )

(**
   print_arcs t c valpere permet d'imprimer la lettre de la hashtable du trie [t] pour le lettre [c] dont la valeur du pere est [valpere]
*)
let print_arcs t c valpere=
  printf "%d [style=filled,color=%s];\n"
    (!cpt +1)
    (if (le_noeud t).fin_mot then "blue" else "pink");
  
  printf "%d -> %d [label=\" %c\"];\n"
    (valpere) 
    (!cpt +1)
    c

let print_trie t =
  cpt := 0; cpt2:= 0; 
  printf "digraph G {\n";

  let rec print_aux t =
    (* on sauve la valeur du pere pour l'impression *)
    let valpere = !cpt in
    (* on imprimer, si possible, les 26 champs de la table de hashage*)
    for i = 0 to 25 do
      (* on sauve le caractere cle de notre champ *)
      let c = char_of_int(97+i) in
      try 
	print_arcs (Hashtbl.find (le_noeud t).fils c) c valpere;
	cpt := !cpt +1;
	(* apres avoir incremente la valeur on appel par recurence print_aux pour les fils de ce champ *)
	print_aux (Hashtbl.find (le_noeud t).fils c)
      with
      |Not_found -> ()
    done;
  in
  print_aux t;
  printf "}\n"

  
