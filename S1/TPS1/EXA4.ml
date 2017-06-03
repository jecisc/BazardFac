(* Auteur: Cyril Ferlicot
Date : 20/09/2012
Objet : exoA-4 manipulation de cartes
Situation initiale :
Tas 1 : "TKTK" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Situation Finale :
Tas 1 : "KKTT" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
*)

open Cartes;; 
begin 
  init_tas(1,"TKTK");;
  deplacer_sommet (1,2);;
  deplacer_sommet (1,3);;  
  deplacer_sommet (1,2);;  
  deplacer_sommet (1,3);;  
  deplacer_sommet (2,1);;  
  deplacer_sommet (2,1);;  
  deplacer_sommet (3,1);;  
  deplacer_sommet (3,1);;  
end;;