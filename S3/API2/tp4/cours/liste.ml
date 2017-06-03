(**
   Implémentation du module Liste.

   @author FIL - IEEA - Univ. Lille 1 (oct 2010)
*)

type 'a liste = Vide | Cons of 'a * 'a liste

exception Liste_vide

let liste_vide = Vide

let ajoute_en_tete a l =
  Cons (a,l)

let tete l =
  match l with
    | Vide -> raise Liste_vide
    | Cons (a,_) -> a

let reste l = 
  match l with
    | Vide -> raise Liste_vide
    | Cons (_,l) -> l

let est_vide l =
  l = Vide
