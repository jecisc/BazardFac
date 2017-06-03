(**
   Module definissant un type de donnees pour les nombres complexes, ainsi que quelques operations primitives les accompagnant.

   @author FIL - IEEA - Univ. Lille1 (sept 2012)
*)


type complexe = {re : float ; im : float}

let add z1 z2 = 
  { re = z1.re +. z2.re ;
    im = z1.im +. z2.im }

let norme2 z = 
  z.re**2. +. z.im**2.

let norme z = 
  sqrt (norme2 z)
