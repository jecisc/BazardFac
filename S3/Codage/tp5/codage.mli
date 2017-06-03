(**
   Module de codage.

   @author FIL - IEEA - Univ. Lille1 (oct 2010)
*)

(** {2 Le type [codage]} *)

(**
   Le type [codage] permet de coder des symboles de tout type.
*)
type 'a codage


(**
   Exception declenchee par la fonction {!creer}.
*)
exception Pas_un_codage of string

(**
   Exception declenchee par la fonction {!code}.
*)
exception Symbole_non_codable


(**
   Exception declenchee par la fonction {!decode}.
*)
exception Mot_non_decodable


(** {2 Creation d'un codage} *)

(**
   [creer alphabet_source code] renvoie un codage de l'[alphabet_source] avec les mots de [code].

   {b CU :} 
   - le nombre de symboles de l'alphabet source doit etre egal au nombre de mots du code. 
   - aucun symbole doublon dans l'alphabet source
   - aucun mot doublon dans le code.
   Déclenche l'exception {!Pas_un_codage} dans le cas contraire.
*)
val creer : 'a array -> string array -> 'a codage


(** {2 Fonctions de codage et de decodage} *)

(**
   [code symb cod] renvoie le mot associe au symbole [symb] dans le codage [cod].
   
   {b CU :} le symbole doit faire partie de l'alphabet source du codage. Déclenche l'exception {!Symbole_non_codable} dans le cas contraire.
*)
val code : 'a -> 'a codage -> string

(**
   [decode mot cod] renvoie le symbole code par le mot [mot] dans le codage [cod].
   
   {b CU :} le mot doit faire partie du code associe au codage. Déclenche l'exception {!Mot_non_decodable} dans le cas contraire.
*)
val decode : string -> 'a codage -> 'a
