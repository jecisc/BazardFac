(**
   Les types somme pour representer des cartes a jouer

   @author FIL. Univ. Lille1
*)


type couleur = Pique | Carreau | Trefle | Coeur
and  hauteur = Petite of int | Valet | Dame | Roi 
and  carte   = Carte of couleur*hauteur

