(**
   [est_triee t] : predicat de test du tableau [t] dans l'ordre croissant
*)
val est_trie : int array -> bool

(**
   [tableau_croissant n] : genere un tableau de longueur n dont les valeurs vont de 0 � [n]-1 dans l'ordre croissant
*)
val tableau_croissant : int -> int array

(**
   [tableau_croissant n] : genere un tableau de longueur n dont les valeurs vont de 0 � [n]-1 dans l'ordre decroissant
*)
val tableau_decroissant : int -> int array

(**
   [tableau_croissant n] : genere un tableau de longueur n dont les valeurs sont al�atoires (il peut y avoir deux fois la meme
*)
val tableau_aleatoire : int -> int array
