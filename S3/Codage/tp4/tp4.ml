(* Ferlicot Delbecque Cyril 
TP 4 de Codage *)

	(* Question 2 *)
	
(* Il existe un lien entre la taille des fichiers et le nombre de �gale. Si l'on fait 8 fois la taille des fichiers d'origines en octets pour obtenir la taille en bits il suffit ensuite e faire ce r�sultat module 6. 
Si :
	- ( 8 * taille ) mod 6 = 0 alors il n'y aura aucun = car le nombre de bits obtenu en base 64 rempliera tout un sextets � la fin du fichier.
	- ( 8 * taille ) mod 6 = 2 alors il y aura deux = car dans le dernier sextet il n'y aura que deux bits de poids fort et qu'il reste 4 bits � remplir. 
	- ( 8* taille ) mod 6 = 4 alors il y aura un = m�me raisonnement que pour le pr�c�dent sauf que cette fois il y a 4bits de poids fort er 2 de poids faible.
*)


	(* Question 3 *)
	



	(* Question 4 *)
	
	
(* # table.(1);;
- : char = 'B'
# table.(34);;
- : char = 'i'
*)

	(* Question 5 *)
	
(* Proc�dure r�alis� avec succ�s dans codage64.ml*)

	(* Question 6 *) 

(* Fonction v�rifi� avec le fichier cigale-UTF-8.txt *)






	

















	
	
	