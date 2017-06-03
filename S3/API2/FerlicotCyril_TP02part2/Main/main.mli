(**
   Module destine a la representation des cartes

   @author FIL - IEEA - Univ. Lille 1
*)

(** {2 Le type de donnees} *)

(** Une [main] est un ensemble de cinq cartes differentes d'un jeu de poker.*)
type main

(** {2 Constructeur et selecteur} *)

(** [cree (c1,c2,c3,c4,c5)] cree une main avec les cinq cartes donnees.*)
val cree : Carte.carte * Carte.carte * Carte.carte * Carte.carte * Carte.carte -> main

(** [carte m i] renvoie la carte de rang [i] dans l'ordre croissant dans la main [m]. Les cartes [carte m 1], [carte m 2], [carte m 3], [carte m 4], [carte m 5] sont les cinq cartes de la main [m] et leurs hauteurs sont dans l'ordre croissant.

{b CU} : l'entier i doit etre compris entre 1 et 5. Sinon, declenche l'exception [Failure "Main.carte : indice incorrect"]. *)
val carte : main -> int -> Carte.carte

(** {2 Procedure d'impression} *)

(**
   [imprimer m ]imprime la main [m]. Par exemple, l'impression a la forme [\[ 2C, 3K, 8K, 9K, RP]\]
*)
val imprimer : main -> unit

(** {2 Divers}*)

(**
   [main_alea ()] renvoie une main de cinq cartes choisies aleatoirement dans un jeu de 52 cartes.
*)
val main_alea : unit -> main

(**
    [distribue n] renvoie un tableau de [n] mains extraites d'un jeu de 52 cartes.

{b CU :} l'entier [n] doit etre compris entre 2 et 5. Sinon, declenche l'exception [Failure "Main.distribue : nombre joueurs incorrect"].
*)
val distribue : int -> main array
