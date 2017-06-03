 ---------------------------------------------------------------
|								|
|     Ferlicot-Delbecque Cyril					|
|     TP2 - Tri rapide						|
|     06/02/2014						|
|								|
 ---------------------------------------------------------------

Question 1:
	 La liste interne permet de chainer la liste. Ce sera ce qui sera utilisé pour renvoyer les valeurs des cellules suivantes et précédentes.

Question 2:
	 la_cellule déclanche une exception si la liste interne est vide, sinon elle renvoit la cellule correspondant à la liste_interne.

Question 3:
	 Type déclaré.

Question 4:
 	Toutes les implémentations ont été effectuées.

Question 5:
	Fonction implémentés avec succès. 

Question 6:
	 Le test a été modifié légérement pour rajouter un paramètre d'impression comme il y avait dans les fonctions sans itérateur.
	 Ainsi le test fonctionne bien et renvoit la valeur attendue.

 === Test 1 - impression avec iterateurs ===
4 3 2 1 
1 2 3 4

Question 7:
	 Implementation réalisée et interface décommentée.

Question 8:
	 Les tests fonctionnent correctement.

=== Test 2 - insertion avant de 10 ===
10
4 3 10 2 1 
1 2 10 3 4 
=== Test 3 - insertion après de 100 ===
100
4 3 100 10 2 1 
1 2 10 100 3 4 


Question 9:
	 En lançant le test 4 nous pouvons remarquer qu'il léve une erreure fatale. J'ai donc rajouté un champ à l'enregistrement des itérateurs et modifié les fonctions qui en avaient besoin. J'obtiens donc les bons résultats par la suite : 

=== Test 4 - insertion avant le début de 20 ===
20
20 4 3 100 10 2 1 
1 2 10 100 3 4 20 
=== Test 5 - insertion après la fin de 200 ===
200
20 4 3 100 10 2 1 200 
200 1 2 10 100 3 4 20 


Question 10 & 11:
	 La fonction insere_trie a été crée. Le test 6 a lui aussi été créé. Il fait le test en insérant une valeur au milieu, au début et a la fin de la liste. 

Question 12:
	 Si l'on supprime une cellule il faut alors que l'itérateur change de cellule mais s'il n'y a plus de cellule alors l'itérateur devra pointer sur vide.

Question 13:
	  Exception rajouté au début de listeit.ml et dans le mli.

Question 14:
	 Fonctions modifiées : valeur, est_en_debut, est_en_fin, inserer_avant, inserer_apres.
	 La documentation a également été modifiée pour rajouter les exceptions.

Question 15:
	 La fonction supprimer a été rajouté au fichier listeit.ml et a été rajouté dans l'interface listeit.mli.
	 
Question 16: 
	 Les tests fonctionnent.

=== Test 8 - suppression de l'avant dernier element puis de la queue ===
suppression de 1
3 100 10 2 200 
200 2 10 100 3 
suppression de 200
l'itérateur est indéfini !
3 100 10 2 
2 10 100 3 

Question 17: 
	 J'ai rajouté un test 9 dans le fichier testtpiterateur. J'ai créé dans ce test une nouvelle liste avec deux iterateur sur le dernier élément. J'ai supprimé ce dernier élément avec l'iterateur 1 et affiché les deux itérateurs. Le premier est bien indéfini mais le second est resté sur la cellule supprimée.

Question 18:
	 Pour remédier à ce problème on pourrait rajouter une liste associative à notre liste. Cette liste comprendrait les itérateurs et les cellules vers lesquels ils pointent. Nous n'aurions plus qu'à consulter la liste pour savoir s'il faut modifier ou non un autre itérateur.

Question 19:
	 Je n'ai pas mit en oeuvre cette solution. 


 ---------------------------------------------------------------------------------------
|									        	|
|    Pour avoir le résultat du TP il suffit de fait un "make all" dans un terminal. 	|
|    Pour supprimer tous les fichiers inutiles il suffit de faire un "make clean".   	|
|											|
 ---------------------------------------------------------------------------------------

