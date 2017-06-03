(* Auteur: Cyril Ferlicot
Date : 20/09/2012
Objet : exoA-6 manipulation de cartes
Situation initiale :
Tas 1 : "T+P" Tas 2 : ""
Tas 3 : "" Tas 4 : ""
Situation Finale :
Tas 1 : "" Tas 2 : "[T]"
Tas 3 : "[P]" Tas 4 : ""
*)

open Cartes;; 
begin 
  init_tas(1,"T+P");;
  
  init_tas(2,"[T]");;
  init_tas(3,"[P]");;
  
  if sommet_trefle(1)
  then 
  (
  deplacer_sommet(1,2)
  )
  else
  (
  deplacer_sommet(1,3)
  );
end;;