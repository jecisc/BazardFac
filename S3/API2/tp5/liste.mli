(**
   Module dÃ©finissant un type de donnÃ©es pour les listes, ainsi que les opÃ©rations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (oct 2010)
*)

(** {2 Le type} *)

(**
   Le type des listes contenant des Ã©lÃ©ments de type ['a].
*)
type 'a liste


exception Liste_vide

exception Liste_trop_courte

(** {2 Constructeurs} *)

(**
   La liste vide.
*)
val liste_vide : 'a liste

(**
   [ajoute_en_tete x l] renvoie une liste dont la tÃªte est [x] et le reste [l].
*)
val ajoute_en_tete : 'a -> 'a liste -> 'a liste

(** {2 SÃ©lecteurs} *)

(**
   [tete l] renvoie le premier Ã©lÃ©ment de la liste [l].

   @raise Liste_vide si [l] est vide.
*)
val tete : 'a liste -> 'a

(**
   [reste l] renvoie le reste de la liste [l].

   @raise Liste_vide si [l] est vide.
*)
val reste : 'a liste -> 'a liste

(** {2 PrÃ©dicat} *)

(**
   [est_vide l] =
   - Vrai si la liste [l] est vide,
   - Faux sinon
*)
val est_vide : 'a liste -> bool

(** 
	[imprime_int l] imprime la liste d'entiers [l]
	@raise Liste_vide si [l] est vide.
*)
val imprime_int: int liste -> unit 
	
(** 
	[imprime i l] imprime la liste [l] suivant la procedure d'impression [i]
	@raise Liste_vide si [l] est vide.
*)
val imprime: ('a -> unit) -> 'a liste -> unit

(** 
	[longueur l] calcule la longueur de la liste [i]
*)
val longueur : 'a liste -> int 

(** 
	[n_ieme l n] renvoit l'élément de rang [n] de la liste [l]
	
	@raise Liste_trop_courte
*)
val n_ieme :  'a liste -> int -> 'a

(** 
	[dernier l] renvoit le dernier élément de la liste [l]
	@raise Liste_vide si [l] est vide
*)
val dernier: 'a liste -> 'a

(** 
	[liste_decroissante n] construit une liste de [n] entiers consécutifs dans l'ordre décroissant de [n] jusque 1.
*)
val liste_decroissante: int -> int liste

(** 
	[liste_croissante n] construit une liste de [n] entiers consécutifs dans l'ordre croissant de 1 jusque [n].
*)
val liste_croissante: int -> int liste

(** 
	[liste_alea n a b] construit une liste de [n] éléments aléatoires compris entre [a] et [b].
*)
val liste_alea: int -> int->int-> int liste

(**
	[liste_renvers l] crée une liste qui est la liste [l] de manière dans l'ordre inverse.
*)
val liste_renverse: int liste -> int liste


(**
	[concatene l1 l2] concatène les listes [l1] et [l2]
*)
val concatene: int liste -> int liste -> int liste

(** 
	[applique f l] applique la fonction [f] aux éléments de la liste [l]
*)
val applique: ('a -> 'b) -> 'a liste -> 'b liste







	
	
	
	
	
	
	
	
	
	
	
	
	
