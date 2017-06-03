(**
   Module définissant un type de données pour les nombres complexes, ainsi que quelques opérations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (sept 2012)
*)

(* fichier d'interface du module *)

type complexe

val cree : float -> float -> complexe

val re : complexe -> float

val im : complexe -> float

val add : complexe -> complexe -> complexe

val norme : complexe -> float

val imprimer : complexe -> unit
