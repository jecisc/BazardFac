(* Module Dico du TP8 d'API2
Ferlicot Delbecque Cyril *)

 open Trie;;
 
 let construire s=
	let source = open_in s and t = Trie.cree_noeud() in
		begin
		try 
			while true do
				let a =(String.uppercase (input_line source)) in
					Trie.inserer a t;	
			done;
		with 
			|End_of_file -> close_in source
		end;
	t;;

let cherche s t=
	let rec aux s t =
		if (String.length s) = 0 then
			(est_fin_de_mot t)
		else
			(
				if not(est_vide t) then
					aux (String.sub s 1 (String.length s -1)) (sous_trie s.[0] t) 
				else
					false;
			
			); in
	aux (String.uppercase s) t;;
	
























