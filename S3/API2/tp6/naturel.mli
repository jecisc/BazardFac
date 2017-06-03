(**
   Module pour la repr�sentation et l'arithm�tique des entiers naturels en pr�cision illimit�e.
   
   @author FIL - IEEA - Univ. Lille 1 (nov. 2011)
*)

	(** {2 Le type [nat]} *)
	
(** 
	Le type [nat] permet la manipulation d'entiers naturels de taillie illimit�e.
*)
type nat

(** 
	L'entier naturel 0.
*)
val zero : nat

(**
	L'entier naturel 1.
*)
val un : nat

(**
	[taille n] = taille de l'�criture d�cimale de l'entier [n].
*)
val taille : nat -> int


	(**{2 Fonctions de conversions}*)

(** 

	[entier_en_nat n] = l'entier [n] en tant que [nat].

	{b {b CU :}} [n] >= 0
*)
val entier_en_nat : int -> nat

(**
	[chaine_en_nat s] = le [nat] dont l'�criture d�cimale est la cha�ne [s].

	{b CU :} [s] ne contient que les caract�res ['0']..['9']. D�clenche l'exception [Failure "chaine_en_nat : caract�re non autoris�"] sinon.
*)
val chaine_en_nat : string -> nat



(**

	[nat_en_chaine n] = une repr�sentation d�cimale de l'entier ([nat]) [n].

	{b CU :} aucune.
 *) 
 val nat_en_chaine : nat -> string
 
	(** {2 Op�rations arithm�tiques}*)

(** 

	[add n1 n2] = [n1] + [n2].

{b CU :} aucune.
*) 
val add : nat -> nat -> nat

(** 
	[mul n1 n2] = [n1] * [n2].

	{b CU :} aucune.
 *) 
val mul : nat -> nat -> nat

(**
	[puissance n e] = [n] ^ [e] (puissance).

{b CU :} [e] >= 0.
 *)
val puissance : nat -> int -> nat


	(** {2 Fonctions de comparaisons}*)

(** 
	[compare n1 n2] =
	- -1 si [n1] est stictement plus petit que [n2] ;
	- 0 si [n1] est �gal � [n2] ;
	- 1 si [n1] est stictement plus grand que [n2] ;
*) 
val compare : nat -> nat -> int


(**
	[max n1 n2] = le plus grand des deux entiers [n1] et [n2]
 *) 
val max : nat -> nat -> nat

(**
	[min n1 n2] = le plus petit des deux entiers [n1] et [n2]

 *)
 val min : nat -> nat -> nat






















