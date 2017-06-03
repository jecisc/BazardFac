(**
   Évaluateur d'expressions postfixées.

   Utilise les modules Pile, Lexemes et Evaluation_postfixee.

   Programme destiné à être compilé
   [ocamlc -o eval pile.cmo lexemes.cmo evaluation_postfixee.cmo eval.ml]


   Usage : eval <expr>
     où <expr> = expression postfixée à évaluer.
     
   Opérateurs autorisés :
   {ul
         {- + : addition}
         {- - : soustraction}
         {- * : multiplication}
         {- / : quotient entier}
         {- % : reste d'une division (modulo).}
   }
   @author FIL - IEEA - Univ. Lille1 (oct 2010, revu oct 2012)
*)		


(** {2 Une procédure pour indiquer l'usage du programme} *)

(**
   [usage ()] : imprime l'usage normal du programme sur la sortie standard.
*)
let usage () =
  Printf.printf "Usage : %s <expr>\n" Sys.argv.(0) ;
  Printf.printf "\t<expr> = expression postfixee a evaluer.\n" ;
  Printf.printf "Operateurs autorises :\n" ;
  Printf.printf "\t+ : addition\n" ;
  Printf.printf "\t- : soustraction\n" ;
  Printf.printf "\t* : multiplication\n" ;
  Printf.printf "\t/ : quotient entier\n" ;
  Printf.printf "\t%% : reste d'une division (modulo).\n" ;
  exit 1 

(**
   [principal ()] 
   {ul 
    {- vérifie le bon usage du programme,}
    {- transmet l'expression à évaluer à l'évaluateur,}
    {- imprime le résultat sur la sortie standard.}
   }
*)
let principal () = 
  if Array.length Sys.argv <> 2 then
    usage () 
  else begin
    Printf.printf "%d\n" (Evaluation_postfixee.evalue Sys.argv.(1)) ;
    exit 0 
  end 

(* Appel à la procédure [principal] *)
let _ = principal ()
