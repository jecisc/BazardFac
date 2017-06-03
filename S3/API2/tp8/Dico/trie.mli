(**
   Module pour implanter un type trie 
   afin de stocker les mots d'un dictionnaire.


   @author FIL - IEEA - Univ. Lille1 (nov 2013)
*)

(** {2 Le type} *)

(**
   Le type Trie.t
*)
type t

(**
   Exception déclenchée par {!sous_trie} et {!inserer}.
*)
exception Trie_vide


(** {2 Constructeurs} *)

(**
   Le trie vide.
*)
val vide : t

(**
   [cree_noeud ()] = trie constitué d'un seul noeud (tous les sous-tries sont vides).
*)
val cree_noeud : unit -> t

(**
   [inserer s t] insère le mot [s] dans le trie [t].

   {b CU :} le trie [t] ne doit pas être vide.
*)
val inserer : string -> t -> unit


(** {2 Sélecteurs} *)

(**
   [sous_trie c t] = sous-trie de [t] correspondant au caractère [c].

   {b CU :} [t] ne doit pas être vide.
*)
val sous_trie : char -> t -> t


(** {2 Prédicats} *)

(**
   [est_vide t] =
   - [true] si [t] est vide
   - [false] sinon.
*)
val est_vide : t -> bool

(**
   [est_fin_de_mot t] = 
   - [true] si la racine de [t] correspond à une fin de mot
   - [false] sinon.
*)
val est_fin_de_mot : t -> bool



