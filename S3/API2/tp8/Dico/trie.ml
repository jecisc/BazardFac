(**
   Implantation du module pour implanter un type trie 
   afin de stocker les mots d'un dictionnaire.

   @author FIL - IEEA - Univ. Lille1 (nov 2013)
*)



(* Les caractères autorisés dans les chaînes sont les caractères lettres non accentuées 'A'..'Z' *)

let index_of_lettre c = int_of_char c - int_of_char 'A'
and lettre_of_index c = char_of_int (c + int_of_char 'A')


type noeud = {mutable fin_mot : bool; fils : t array}
and t = Vide | Noeud of noeud

exception Trie_vide

let vide = Vide

let cree_noeud () =
  Noeud {fin_mot = false ; fils = Array.make 26 Vide}


let sous_trie car trie = 
  match trie with
  | Noeud {fils=t} ->
    t.(index_of_lettre car)
  | Vide -> raise Trie_vide

let est_vide trie = 
  trie = vide

let est_fin_de_mot trie = 
  match trie with
  | Noeud {fin_mot=true} -> true
  | _ -> false

let rec inserer mot trie =
  match trie with
  | Noeud knot ->
    let n = String.length mot in
    if n = 0 then
      knot.fin_mot <- true
    else 
      let reste = String.sub mot 1 (n-1) in
      (match knot.fils.(index_of_lettre mot.[0]) with
      | Vide ->
        knot.fils.(index_of_lettre mot.[0]) <- cree_noeud ()
      | _ -> ()
      ) ;
      inserer reste knot.fils.(index_of_lettre mot.[0])
  | Vide -> raise Trie_vide





