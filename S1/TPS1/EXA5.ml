(* Auteur: Cyril Ferlicot
Date : 20/09/2012
Objet : exoA-5 manipulation de cartes
Situation initiale :
Tas 1 : "TKCP" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Situation Finale :
Tas 1 : "PCKT" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
*)

open Cartes;; 
begin 
  init_tas(1,"TKTK");;
  deplacer_sommet (1,2);;
  deplacer_sommet (1,3);;  
  deplacer_sommet (1,4);;  
  deplacer_sommet (1,4);;  
  deplacer_sommet (2,1);;  
  deplacer_sommet (3,1);;  
  deplacer_sommet (4,3);;  
  deplacer_sommet (4,1);;
  deplacer_sommet (3,1)::  
end;;