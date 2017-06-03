open Genere;;

(**
   type tranche 
*)
type 'a tranche = { t : 'a array; g : int; d : int };;

let cpt = ref 0;;

let cmp a b =
  if a = b then
    0
  else if a < b then
    -1
  else
    1;;

let tab_test =  [|2;4;1;45;345;24;1;356;3553;2;123;5;6;9;34;12;98;35;586;4;2;6;7;1;2;1;46|];;

let tranche_test = {  t=tab_test; g = 4; d = 25};;
let test2 = { t = [|1;1;1|] ; g = 0; d = 2};;



(**
   [tri_fusion t cmp] tri le tableau [t] selon la fonction de comparaison [cmp]
*)
let fusionner t1 t2 cmp =
  let n1 = (Array.length t1)
  and n2 = (Array.length t2)
  in
  let t = Array.concat [ t1; t2]
  and i = ref 0 and j = ref 0 and k = ref 0
  in
  while !i < n1 && !j < n2 do
  cpt := !cpt +1;
    if (cmp t1.(!i)  t2.(!j)) < 0 then begin
      t.(!k) <- t1.(!i);
      i := !i + 1
    end else begin
      t.(!k) <- t2.(!j);
      j := !j + 1
    end;
    k := !k + 1
  done;
  while !i < n1 do
      t.(!k) <- t1.(!i);
      i := !i + 1;
      k := !k + 1
  done;
  while !j < n2 do
      t.(!k) <- t2.(!j);
      j := !j + 1;
      k := !k + 1
  done;
  t;;

let rec tri_fusion t cmp =
  let n = Array.length t 
  in
   if n = 1 then
    Array.sub t 0 n
  else
    let t1 = tri_fusion (Array.sub t 0 ((n-1)/2+1)) cmp
    and t2 = tri_fusion (Array.sub t ((n-1)/2+1) ((n-1)-((n-1)/2+1)+1)) cmp
    in
    fusionner t1 t2 cmp;;


(** 
    [partitionner t cmp] partitionne la tranche [t] en deux tranches
    et retourne un couple de tranches
*)  
 let partitionner t cmp indice_pivot= 
    let pivot = t.t.(indice_pivot) 
    and j = ref (t.g) in 
    t.t.(!j) <- t.t.(t.d);
    t.t.(t.d) <- pivot;
    for i = !j to (t.d -1) do
      cpt := !cpt +1;
      if (cmp t.t.(i) pivot = -1) then
	(
	  let aux = t.t.(i) in
	  t.t.(i) <- t.t.(!j);
	  t.t.(!j) <- aux;
	  j := !j +1;	  
	)
    done;
    let aux2 = t.t.(!j) in
    t.t.(!j) <- pivot;
    t.t.(t.d) <- aux2;
    ( {t = t.t ; g = t.g ; d = !j},{t = t.t; g= !j+1; d = t.d});;
  

let rec tri_rapide_tranche t cmp= 
  let (t1, t2) = partitionner t cmp (t.g) in
  cpt := !cpt +1;
  if ((t1.d - t1.g) > 1) then
    tri_rapide_tranche t1 cmp;
  cpt := !cpt +1;
  if ((t2.d - t2.g) > 1) then
    tri_rapide_tranche t2 cmp;;


(**
   [tri_rap�de t cmp] tri le tableau [t] selon la fonction de
   comparaison [cmp] en utilisant l'algorithme de tri rapide
*)
let tri_rapide tab cmp =
  let t={t= tab; g = 0 ; d= ((Array.length tab)-1)} in
	tri_rapide_tranche t cmp;

Random.self_init();;

let pivot_aleatoire t=
  Random.int((t.d - t.g+1));;


let rec tri_rapide_tranche_alea t cmp= 
  let (t1, t2) = partitionner t cmp (pivot_aleatoire t) in
  cpt := !cpt +1;
  if ((t1.d - t1.g) > 1) then
    tri_rapide_tranche t1 cmp;
  cpt := !cpt +1;
  if ((t2.d - t2.g) > 1) then
    tri_rapide_tranche t2 cmp;;

let tri_rapide_alea tab cmp =
  let t={t= tab; g = 0 ; d= ((Array.length tab)-1)} in
	tri_rapide_tranche_alea t cmp;;


(* 
   Question 10
*) 
let nmbr_comparaisons_tirage_unique() =
  let fonction1 = Array.make 100 0 
  and fonction2 = Array.make 100 0 
  in
  for i = 1 to 100 do

    cpt := 0;
    tri_rapide (Genere.tableau_aleatoire i) cmp;
    fonction1.(i-1) <- !cpt;

    cpt := 0;
    tri_rapide_alea (Genere.tableau_aleatoire i) cmp;
    fonction2.(i-1) <- !cpt;
  done;
  (fonction1, fonction2);;

let nmb_comparaisons_moyennes()=
  let fonction1 = Array.make 100 0 
  and fonction2 = Array.make 100 0 
  in
  for i= 1 to 100 do
    let (t1, t2) = nmbr_comparaisons_tirage_unique() in
      for j = 1 to 100 do
	fonction1.(i-1) <- fonction1.(i-1) + t1.(i-1);
	fonction2.(i-1) <- fonction2.(i-1) + t2.(i-1);
      done;
  done;
  for k = 0 to 99 do
    if fonction1.(k) <> 0 then
      fonction1.(k) <- fonction1.(k)/100;
    if fonction2.(k) <> 0 then
      fonction2.(k) <- fonction2.(k)/100;
  done;
  (fonction1, fonction2);;

(* Question 13 *)

let pivot_optimal t =
  let lon = (Array.length(t.t) -1)in
  let plus_ou_moins = Array.make (lon+1) 0 in
  (* contruction d'un tableau donnant une valeur pour comparer le nombre de valeur sup�rieurs et inf�rieurs pour chaque indices.*)
  for i = 0 to lon do
    for j = 0 to lon do
      cpt := !cpt +1;
      if t.t.(i) < t.t.(j) then
	plus_ou_moins.(i) <- plus_ou_moins.(i) -1
      else 
	(
	  cpt := !cpt +1;
	  if t.t.(i) > t.t.(j) then
	    plus_ou_moins.(i) <- plus_ou_moins.(i) +1;
	);
    done;
  done;
  (* Choix de l'indice qui a le nombre de valeurs sup�rieurs et inf�rieurs le plus proche *)
  let ind = ref 0 in
  for k = 1 to lon do
      cpt := !cpt +1;
    if (abs(plus_ou_moins.(k))) < (abs(plus_ou_moins.(!ind))) then
      ind := k;
  done;
  !ind;;


(* Question 14 *)

let rec tri_rapide_tranche_opti t cmp= 
  let (t1, t2) = partitionner t cmp (pivot_optimal t) in
  cpt := !cpt +1;
  if ((t1.d - t1.g) > 1) then
    tri_rapide_tranche t1 cmp;
  cpt := !cpt +1;
  if ((t2.d - t2.g) > 1) then
    tri_rapide_tranche t2 cmp;;

let tri_rapide_opti tab cmp =
  let t={t= tab; g = 0 ; d= ((Array.length tab)-1)} in
	tri_rapide_tranche_opti t cmp;;


let nmbr_comparaisons_tirage_unique_opti() =
  let fonction = Array.make 100 0  in
  for i = 1 to 100 do

    cpt := 0;
    tri_rapide_opti (Genere.tableau_aleatoire i) cmp;
    fonction.(i-1) <- !cpt;

  done;
  fonction;;

let nmb_comparaisons_moyennes_opti()=
  let fonction = Array.make 100 0 in
  for i= 1 to 100 do
    let t1 = nmbr_comparaisons_tirage_unique_opti() in
      for j = 1 to 100 do
	fonction.(i-1) <- fonction.(i-1) + t1.(i-1);
      done;
  done;
  for k = 0 to 99 do
    if fonction.(k) <> 0 then
      fonction.(k) <- fonction.(k)/100;
  done;
  fonction;;

let nmbr_tri_fusion () =
  let fonction = Array.make 100 0 in
  for i= 1 to 100 do
    cpt := 0;
    let t =  tri_fusion (Genere.tableau_aleatoire i) cmp in
    t.(0) <- t.(0);
    fonction.(i-1) <- !cpt;
  done;
  fonction;;

let _=
  let (t1, t2) =  nmb_comparaisons_moyennes() and t3 =  nmb_comparaisons_moyennes_opti()and t5 = nmbr_tri_fusion()  in
  for i = 0 to 99 do
    Printf.printf("%4d %4d %4d %4d %4d\n")
      (i+1)
      (t5.(i))
      (t1.(i))
      (t2.(i))
      (t3.(i));
  done;;







