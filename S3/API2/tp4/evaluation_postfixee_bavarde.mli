(**
   Utilise les modules Stack et Lexemes.
*)		

exception Expression_mal_formee


(**
   [evalue expr] renvoie la valeur de l'expression postfixée [expr].

   {b CU :} [expr] doit être une expression postfixée bien formée. Déclenche l'exception [Expression_mal_formee] sinon.
*)
val evalue : string -> int
