(**
   Module définissant un type de données pour les nombres complexes, ainsi que quelques opérations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (sept 2012)
*)

(* fichier d'implantation du module *) 


type complexe = {re : float ; im : float}

let cree x y = 
  {re = x ; im = y}

let re z = z.re 

let im z = z.im

let add z1 z2 = 
  let x = (re z1) +. (re z2) 
  and y = (im z1) +. (im z2) in
    cree x y

let norme2 z = 
  (re z)**2. +. (im z)**2.

let norme z = 
  sqrt (norme2 z)

let imprimer z = 
  Printf.printf "%f + %fi" (re z) (im z)
