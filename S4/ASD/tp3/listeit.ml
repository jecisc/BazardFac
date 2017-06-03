exception ListeVide
exception IterateurEnDebut
exception IterateurEnFin
exception IterateurIndefini


type 'a liste = {
  mutable tete     : 'a liste_interne;
  mutable queue    : 'a liste_interne }
and 'a liste_interne = 
  | Vide 
  | Cons of 'a cellule 
and 'a cellule = {
  valeur : 'a;
  mutable suivant   : 'a liste_interne;
  mutable precedent : 'a liste_interne }
and 'a iterateur = {
  mutable pointe : 'a liste_interne;
  liste : 'a liste
}

 

let liste_vide () = 
  { tete = Vide; queue = Vide }


let la_cellule l =
  match l with
    | Vide -> raise ListeVide
    | Cons a -> a


let ajouter_en_tete l v =
  let nouvelle_tete = { valeur = v ; suivant = l.tete ; precedent = Vide }
  in
  match l.tete with
    | Vide -> 
      l.tete <- Cons nouvelle_tete;
      l.queue <- l.tete
    | Cons ancienne_tete ->
      l.tete <- Cons nouvelle_tete;
      ancienne_tete.precedent <- l.tete

    
let imprimer_sans_iterateur l imp =
  let rec imprimer_interne li =
    match li with
      | Vide -> Printf.printf "\n"
      | Cons c -> imp c.valeur;
	imprimer_interne c.suivant
  in
  imprimer_interne l.tete

let imprimer_sans_iterateur_envers l imp =
  let rec imprimer_interne li =
    match li with
      | Vide -> 
	Printf.printf "\n"
      | Cons c -> 
	imp c.valeur;
	imprimer_interne c.precedent
  in
  imprimer_interne l.queue

let iterateur_en_debut l =
  match l.tete with
  |Vide -> raise ListeVide
  |Cons a -> {pointe = l.tete ; liste = l}

let iterateur_en_fin l =
  match l.queue with
  |Vide -> raise ListeVide
  |Cons a -> {pointe = l.queue ; liste = l}

let est_en_fin it =
  if (it.pointe = Vide) then
    raise IterateurIndefini
  else(
    let cell = la_cellule (it.pointe) in
    match cell.suivant  with
    |Vide -> true
    |_ -> false
  )

let est_en_debut it =
  if (it.pointe = Vide) then
    raise IterateurIndefini
  else(
    let cell = la_cellule (it.pointe) in
    match cell.precedent  with
    |Vide -> true
    |_ -> false
  )

let avancer it =
  if est_en_fin(it) then
    raise IterateurEnFin
  else
    (
      let cell = la_cellule (it.pointe) in
      it.pointe <- cell.suivant
    )

let reculer it =
  if est_en_debut(it) then
    raise IterateurEnDebut
  else
    (
      let cell = la_cellule (it.pointe) in
      it.pointe <- cell.precedent
    )

let valeur it =
  if (it.pointe = Vide) then
    raise IterateurIndefini
  else(
    let cell = la_cellule (it.pointe) in
    cell.valeur
  )


let inserer_avant it e =
  if (it.pointe = Vide) then
    raise IterateurIndefini
  else(
    let cell =  (la_cellule (it.pointe)) in
    if (not(est_en_debut it)) then    
      (  
	let new_cell = {valeur = e ; suivant = (it.pointe) ; precedent =cell.precedent } in
	let cell_pre = la_cellule (cell.precedent) in
	cell.precedent  <- Cons new_cell;
	cell_pre.suivant <- Cons new_cell ;
	reculer it
      )
    else(  
      let new_cell = {valeur = e ; suivant = (it.pointe) ; precedent =Vide } in
      cell.precedent <- Cons new_cell;  
      it.liste.tete <- Cons new_cell;
      reculer it
    )
  )
  

let inserer_apres it e = 
  if (it.pointe = Vide) then
    raise IterateurIndefini
  else(
    let cell =  (la_cellule (it.pointe)) in
    if (not(est_en_fin it)) then
      (
	let new_cell = {valeur = e ; suivant = cell.suivant ; precedent =(it.pointe) } in
	let cell_suiv = la_cellule (cell.suivant) in
	cell.suivant  <- Cons new_cell;
	cell_suiv.precedent <- Cons new_cell;
	avancer it
      )
    else(
      let new_cell = {valeur = e ; suivant = Vide ; precedent =(it.pointe) } in
      cell.suivant <- Cons new_cell;
      it.liste.queue <- Cons new_cell;
      avancer it
    )
  )

let supprimer it=
  if (it.pointe = Vide) then (* verifie si l'iterateur est defini *)
    raise IterateurIndefini
  else
    (
      let cell = (la_cellule (it.pointe)) in
      let list_suivant = cell.suivant and list_preced = cell.precedent in
      if (list_preced = Vide) then (* modifie les liens symboliques suivant que la cellule est la premiere ou non *)
	it.liste.tete <- cell.suivant
      else
	(
	  let cell_preced = la_cellule (list_preced) in
	  cell_preced.suivant <- cell.suivant
	);

      if (est_en_fin it) then (* modifie les liens symboliques et l'iterateur suivant que la cellule est la dernière ou non*)
	(
	  it.liste.queue <- cell.precedent;
	  it.pointe <- Vide
	)
      else
	(
	  let cell_suivant = la_cellule (list_suivant) in
	  cell_suivant.precedent <- cell.precedent;
	  avancer it;
	)
    )



    

