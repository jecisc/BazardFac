(**
   Module définissant un type de données pour les piles
   ainsi que les opérations primitives qui les accompagnent.

   @author FIL - IEEA - Univ. Lille 1 (oct 2010)
*)

(** {2 Le type} *)

(**
   Le type des piles contenant des éléments de type ['a].
*)
type 'a pile

(**
   Exception déclenchée par les fonctions {!Pile.sommet} et {!Pile.depiler} lorsqu'elles sont appliquées à une pile vide.
*)
exception Pile_vide


(** {2 Operations primitives} *)

(**
   [creer ()] renvoie une nouvelle pile, initialement vide.
*)
val creer : unit -> 'a pile

(**
   [empiler x p] empile l'élément [x] sur la pile [p].
*)
val empiler : 'a -> 'a pile -> unit

(**
   [sommet p] renvoie l'élément situé au sommet de la pile [p].

   {b CU :} déclenche l'exception [Pile_vide] si [p] est une pile vide.
*)
val sommet : 'a pile -> 'a

(**
   [depiler p] supprime et renvoie l'élément situé au sommet de la pile [p]. 

   {b CU :} déclenche l'exception [Pile_vide] si [p] est une pile vide.
*)
val depiler : 'a pile -> 'a

(**
   [est_vide p] renvoie [true] si [p] est vide, [false] sinon.
*)
val est_vide : 'a pile -> bool

