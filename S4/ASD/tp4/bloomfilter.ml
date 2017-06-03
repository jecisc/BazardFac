type 'a bloomfilter = { filter : bool array ; code : 'a -> int -> int ; nb : int}

(* Fonction qui calcule a à la puissance b*)
let rec puiss a b=
  if b = 1 then
    a
  else
    a * (puiss (a) (b-1))

let new_bloomfilter n f m =
  let tableau = Array.make (puiss 2 n) false in
  {filter = tableau ; code = f ; nb = m}

let add bf e =
  let lengt = Array.length(bf.filter) in
  (* Nous effectuons l'action pour les nb fonctions de hachages *)
  for i = 0 to (bf.nb -1) do 
    let valeur= (bf.code e i) in
    if valeur >= lengt then
      (* si l'indice trouvé est en dehors du tableau, on fait un modulo de la taille du tableau *)
      bf.filter.(valeur mod lengt) <- true 
    else
      bf.filter.(valeur) <- true;
  done

let contains bf e =
  let rbool = ref true and lengt = Array.length(bf.filter) in (*On met au début une réponse positive puis si une des cases du tableau est fausse nous allons la passer à false *)
  for i = 0 to (bf.nb -1) do (* effectuer l'action pour les nb fonctions *)

    let valeur= (bf.code e i) and indice = ref 0 in
    if valeur >= lengt  then
      indice := valeur mod lengt
    else
      indice := valeur;

    if not(bf.filter.(!indice)) then
      rbool := false;

  done;
  !rbool
