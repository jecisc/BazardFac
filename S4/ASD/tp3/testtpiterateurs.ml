open Listeit

let imprimer_avec_iterateur l imp =
  let  it = iterateur_en_debut l in (* définit l'itérateur de début de la liste*)
  while (not(est_en_fin it)) do
    imp  (valeur(it)); (* imp est une fonction d'impression *)
    avancer it;
  done;
   imp  (valeur(it));
  Printf.printf "\n"

let imprimer_avec_iterateur_envers l imp =
  let it = iterateur_en_fin l in (* définit l'itérateur de fin de la liste *)
  while (not(est_en_debut it)) do
    imp (valeur(it)); (* imp est une fonction d'impression *)
    reculer it;
  done;
   imp  (valeur(it));
  Printf.printf "\n"

let inserer_trie l e =
  let it = iterateur_en_debut l in
  try (* try ...with utiliser au cas où l'élément est le dernier de la liste *)
    while(valeur it < e) do
      avancer it;
    done;
    inserer_avant it e
  with 
  |Listeit.IterateurEnFin -> inserer_apres it e

let _ =
  let l1 = liste_vide ()
  in
  ajouter_en_tete l1 1;
  ajouter_en_tete l1 2;
  ajouter_en_tete l1 3;
  ajouter_en_tete l1 4;
  imprimer_sans_iterateur l1 (Printf.printf "%d ");
  imprimer_sans_iterateur_envers l1 (Printf.printf "%d ");

  (* test 1 : les itérateurs *)
  Printf.printf "=== Test 1 - impression avec iterateurs ===\n";
  imprimer_avec_iterateur l1 (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1 (Printf.printf "%d ");

  (* test 2 : insertion avant *)
  Printf.printf "=== Test 2 - insertion avant de 10 ===\n";
  let it = iterateur_en_fin l1
  in
  reculer it;
  inserer_avant it 10;
  Printf.printf "%d\n" (valeur it);
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");

  (* test 3 : insertion après *)
  Printf.printf "=== Test 3 - insertion après de 100 ===\n";
  let it = iterateur_en_debut l1
  in
  avancer it;
  inserer_apres it 100;
  Printf.printf "%d\n" (valeur it);
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");

  (* test 4 :  insertion avant le premier element *)
  Printf.printf "=== Test 4 - insertion avant le début de 20 ===\n";
  let it = iterateur_en_debut l1
  in
  inserer_avant it 20;
  Printf.printf "%d\n" (valeur it);
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");
  
  (* test 5 :  insertion après le dernier element *)
  Printf.printf "=== Test 5 - insertion après la fin de 200 ===\n";
  let it = iterateur_en_fin l1
  in
  inserer_apres it 200;
  Printf.printf "%d\n" (valeur it);
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");

   (* test 6 : insérer trier : à vous d'écrire ce test *)
  Printf.printf "=== Test 6 - insertion au milieu de 15, 1 et 200 ===\n";
  let l2 = liste_vide() in
  ajouter_en_tete l2 100;
  ajouter_en_tete l2 75;
  ajouter_en_tete l2 50;
  ajouter_en_tete l2 25;
  ajouter_en_tete l2 5;
  inserer_trie l2 15;
  inserer_trie l2 1;
  inserer_trie l2 200;
  imprimer_avec_iterateur l2  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l2  (Printf.printf "%d ");




  (* test 7 :  suppression devant *)
  Printf.printf "=== Test 7 - suppression du 2e element puis de la tete ===\n";
  let it = iterateur_en_debut l1
  in
  avancer it;
  Printf.printf "suppression de %d\n" (valeur it);
  supprimer it;
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");
  reculer it;
  Printf.printf "suppression de %d\n" (valeur it);
  supprimer it;
  Printf.printf "valeur de it apres suppression : %d\n" (valeur it);
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");

  (* test 8 :  suppression derriere *)
  Printf.printf "=== Test 8 - suppression de l'avant dernier element puis de la queue ===\n";
  let it = iterateur_en_fin l1
  in
  reculer it;
  Printf.printf "suppression de %d\n" (valeur it);
  supprimer it;
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");
  Printf.printf "suppression de %d\n" (valeur it);
  supprimer it;
  try
    (* devrait lever l'exception IterateurInvalide *)
    Printf.printf "valeur de it apres suppression : %d\n" (valeur it);
  with
      IterateurIndefini -> begin
	Printf.printf "l'itérateur est indéfini !\n";
    end;
  imprimer_avec_iterateur l1  (Printf.printf "%d ");
  imprimer_avec_iterateur_envers l1  (Printf.printf "%d ");

  (* test 9 : exemple question 17 *)
 Printf.printf "=== Test 9 - reproduit le cas de la question 17 ===\n";
  let l3 = liste_vide() in
  ajouter_en_tete l3 100;
  ajouter_en_tete l3 75;
  ajouter_en_tete l3 50;
  ajouter_en_tete l3 25;
  let it1 = iterateur_en_fin l3 and it2 = iterateur_en_fin l3 in
  supprimer it1 ;

  try
    (* devrait lever l'exception IterateurInvalide *)
    Printf.printf "valeur de it1 apres suppression : %d\n" (valeur it1);
  with
      IterateurIndefini -> begin
	Printf.printf "l'itérateur 1 est indéfini !\n";
    end;

  try
    (* devrait lever l'exception IterateurInvalide *)
    Printf.printf "valeur de it2 apres suppression : %d\n" (valeur it2);
  with
      IterateurIndefini -> begin
	Printf.printf "l'itérateur 2 est indéfini !\n";
    end
