open Printf

type trie = Vide | Noeud of noeud
and noeud = {mutable fin_mot : bool; fils : (char, trie) Hashtbl.t}


exception Trie_vide

let new_trie () =
  Noeud {fin_mot = false; fils = Hashtbl.create 26}

let le_noeud a=
  match a with 
  | Vide -> raise Trie_vide
  | Noeud a -> a

let add t w = 
  let ajout = ref false and sub1 = ref w and sub2= ref "" and i = ref 0 in
  while (not !ajout) do 
    try
      (Hashtbl.find (le_noeud t).fils sub)

  done;
