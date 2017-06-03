(**
   Module définissant un type de données pour les nombres complexes, ainsi que quelques opérations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (sept 2012)
*)

(* fichier d'interface du module 
   Notez que ce commentaire n'est pas pris en compte par ocamldoc.
*) 

(** {2 Le type} *)

(**
   Type abstrait pour les nombres complexes.
*)
type complexe

(** {2 Le constructeur}*)

(**
   [cree x y] renvoie le nombre complexe de partie réelle [x] et de partie imaginaire [y].

   {b CU :} aucune.
*)
val cree : float -> float -> complexe

(** {2 Les sélecteurs}*)

(**
   [re z]  renvoie la partie réelle de [z].

   {b CU :} aucune.
*)
val re : complexe -> float

(**
   [im z]  renvoie la partie imaginaire de [z].

   {b CU :} aucune.
*)
val im : complexe -> float

(** {2 Quelques opérations sur les complexes} *)

(**
   [add z1 z2]  renvoie la somme des nombres complexes [z1] et [z2].

   {b CU :} aucune.
*)
val add : complexe -> complexe -> complexe


(**
   [norme z]  renvoie la norme du nombre complexe [z].

   {b CU :} aucune.
*)
val norme : complexe -> float

(** {2 Un imprimeur pour le type [complexe]}*)

(**
   [imprimer z]  imprime le nombre complexe [z] sur la sortie standard sous la forme [x + yi].

   {b CU :} aucune.
*)
val imprimer : complexe -> unit



