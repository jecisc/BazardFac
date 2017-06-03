(**
   Module définissant un type de données pour les nombres complexes, ainsi que quelques opérations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (sept 2012)
*)

(* fichier d'interface du module *)


type complexe = { re : float; im : float; }

val add : complexe -> complexe -> complexe

val norme : complexe -> float
