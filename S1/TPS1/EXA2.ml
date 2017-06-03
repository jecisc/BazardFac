(* Auteur: Cyril Ferlicot
Date : 20/09/2012
Objet : exoA-2 manipulation de cartes
Situation initiale :
Tas 1 : "TT" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Situation Finale :
Tas 1 : "" Tas 2 : "TT"
Tas 3 : "" Tas 4 : ""
*)

open Cartes;; 
begin 
  init_tas(1,"TT");;
  deplacer_sommet (1,2);;
  deplacer_sommet (1,2);;  
end;;

