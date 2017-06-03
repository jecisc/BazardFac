(**
   Jeu de Boggle

   @author Ferlicot-Delbecque Cyril - Groupe 3 
*)



(** {2 Fonctions utilitaires sur les listes} *)

let insert_list a l=
	let c= List.length l 
	and d = ref 0 in
		for i = 0 to (c -1) do
			if a = (List.nth l i) then
				d := 1;
		done;
	if !d = 0 then
		a::l
	else 
		l;;

(**
   [union l1 l2] = liste contenant les éléments de [l1] et [l2] sans répétition.

*)
let union l1 l2 = 
	let rec aux l1 l2 l =
		match l1, l2 with
		| [] , [] -> l
		| [], [a] | [a], [] -> (insert_list a l)
		| [], a::r -> aux [] r (insert_list a l)
		| a:: r , [] -> aux r [] (insert_list a l)		
		| a::r, b::t -> aux r t (insert_list a (insert_list b l)) ; in
	aux l1 l2 [];;

(**
   [union_liste l] = liste contenant les éléments de toutes les listes de [l] dans répétition.

*)
let union_liste l =
	let rec aux l l2 =
		match l with
		| [] -> l2
		| [a] -> (union a l2) 
		| a::r -> aux r (union a l2); in
	aux l [];;

(** {2 Recherche des mots possibles} *)

let dans_list a l=
	let c= List.length l 
	and d = ref false in
		for i = 0 to (c -1) do
			if a = (List.nth l i) then
				d := true;
		done;
	!d;;
	
let insert2 a l l2=
	if not(dans_list a l2) then
		insert_list a l
	else
		l;;

let voisines_rest (i,j) lvisites =
	let voisines = Plateau.voisines (fst (i,j)) (snd (i,j)) in
	let rec aux voisines lvisites res=
		match voisines with
		| [] -> res
		| [a] -> (insert2 a res lvisites)
		| a::r -> aux r lvisites (insert2 a res lvisites); in
	aux  voisines lvisites [];;		

(**
   [cherche_mots plateau (i,j) lvisites mot dico] = liste des mots contenus dans le [dico] préfixés par [mot], réalisables depuis la case [(i,j)] du [plateau] en tenant compte des cases visitées auparavant contenues dans la liste [lvisites].

   Cette fonction est appelée par la fonction [cherche_tous_les_mots].
*)
let cherche_mots p (i, j) lvisites mot dico=
	let rec aux p (i, j) lvisites mot dico l=
		let voisines = voisines_rest (i,j) lvisites 
		and mot2 = mot ^(String.make 1 (Plateau.case p i j)) in
		        let l2= ref [] in
			if voisines = [] then 
				(
					if Dico.cherche mot2 dico then
						l2 := (mot2::l)
					else 
						l2 := l
				)
			else
				(
					
						if Dico.cherche mot2 dico then
							l2 := mot2::l
						else
							l2 := l;
							
						for  t = 0 to (List.length voisines) do
							l2 := union !l2 (aux p (List.nth voisines t) ((i, j)::lvisites) mot2 dico !l2);							
						done;
				
				);
                        !l2 in
	aux p (i, j) lvisites mot dico [];;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	