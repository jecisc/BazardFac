(**
   Expression de masses en plusieurs unites.

   @author FIL. Univ. Lille1 
*)


type masse = 
  | Kilo of float
  | Livre of float
  | Carat of float


(**
   [en_kilo m] = masse convertie en kilogramme

   {b CU :} aucune
*)
let en_kilo m =
  match m with
    | Livre x -> Kilo (0.45359233 *. x)
    | Carat x -> Kilo (0.0002 *. x)
    | x -> x

(**
   [en_chaine m] = representation sous forme de chaine de caracteres de [m].

   {b CU :} aucune
*)
let en_chaine m =
  match m with
    | Kilo x -> (string_of_float x)^" kg"
    | Livre x -> (string_of_float x)^" lb"
    | Carat x -> (string_of_float x)^" ct"
