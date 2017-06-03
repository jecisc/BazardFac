(**
   Module d'analyse lexicale pour les expressions arithmétiques sur les entiers.

   @author FIL - IEEA - Univ. Lille1 (oct 2010)
*)


(** {2 Le type [lexeme]}*)

type operateur = Add | Sub | Mul | Div | Mod

(**
   Une expression arithmétique est constituée d'entiers, d'opérateurs et de parenthèses ouvrantes et fermantes.
   Un lexème est un entier ou un opérateur ou une parenthèse ouvrante ou  fermante.
*)
type lexeme = Par_ouvrante | Par_fermante | Int of int | Op of operateur

(**
   Exception déclenchée par la fonction [lexemes] si une chaîne contient des caractères non autorisés.
*)
exception Caractere_non_autorise


(** {2 L'analyseur lexical} *)

(**
   [lexemes s] renvoie un tableau de lexèmes dans l'ordre dans lequel ils apparaissent dans la chaîne [s].

   {b CU :} [s] ne peut contenir que les caractères espace ([' ']), chiffres (['0'] ...['9']) et opérateurs (['+'], ['-'], ['*'], ['/'], ['%']). Déclenche l'exception [Caractere_non_autorise] sinon.
*)
val lexemes : string -> lexeme array
