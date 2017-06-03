(**
   Addition de nombres.

   @author FIL. Univ. Lille1
*)

type nombre = Int of int | Float of float

(** 
    operateur d'addition entre deux nombres.

    {b CU :} les deux nombres doivent etre tous deux entiers ou tous les deux flottants.
*)
let (++) n1 n2 =
  match n1,n2 with
    | Int x1,Int x2 -> Int (x1 + x2)
    | Float x1, Float x2 -> Float (x1 +. x2)
    | _ -> failwith "++ : types numeriques incompatibles"

