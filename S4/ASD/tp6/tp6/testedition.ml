(* version recursive *)
let rec distance_recursive u v =  
  let n = String.length u
  and m = String.length v
  in
  (* Si une des chaine est vide alors il faudra un certain nombre d'ajout ou de suppression qui correspond au max entre n et m*)
  if (n = 0 || m = 0) then
    max n m
  else
    (* Sinon on prend le minimum entre les distances dans le cas d'un ajout, d'une supression ou d'une substitution *)
    (
      let mini = ref (min (1 + (distance_recursive (String.sub u 1 (n-1)) v)) (1+ (distance_recursive u (String.sub v 1 (m-1))))) in
(* On a deja fait le min entre l'ajout et la supression, maintenant on fait le min entre le plus petit et deux et la substitution, mais il faut verifier tout d'abord s'il y a besoin d'une subtitution pour le premier caractere de cette chaine *)
      if u.[0] = v.[0] then
	mini := min !mini (distance_recursive (String.sub u 1 (n-1)) (String.sub v 1 (m-1)))
      else
	mini := min !mini (1+ distance_recursive (String.sub u 1 (n-1)) (String.sub v 1 (m-1)));
      
      !mini
    )
      
(* construction de la table *)
let construire_table u v =
  let n = String.length u
  and m = String.length v
  in
  let table = Array.make_matrix (n+1) (m+1) 0
  in
  (* initialisation *)
  (* remplissage *)
  table


(* version programmation dynamique *)
let distance_dynamique u v =
  let n = String.length u
  and m = String.length v
  and table = construire_table u v
  in
  0


(* affichage de l'alignement *)
let alignement u v =
  let n = String.length u
  and m = String.length v
  and table = construire_table u v
  in
  Printf.printf "Alignement:\n"
    
  
(* test *)
let _ =
  let u = Sys.argv.(1)
  and v = Sys.argv.(2)
  in
  Printf.printf "distance recursive = %d\n" (distance_recursive u v);
  Printf.printf "distance dynamique = %d\n" (distance_dynamique u v);
  alignement u v

