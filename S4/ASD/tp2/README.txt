 ---------------------------------------------------------------
|								|
|     Ferlicot-Delbecque Cyril					|
|     TP2 - Tri rapide						|
|     06/02/2014						|
|								|
 ---------------------------------------------------------------



Question 1:
	 D'autres exemple de tri sur place sont: le tri par insertion ou le tri par selection.

Question 2: 
	 Le type a bien été déclaré.

Question 3:
	 La fonction partitionner fonctionne.
	 Le principe de la fonction est d'initialiser une variable mutable j au début de la tranche à trier. Ensuite on met le pivot à la fin de la tranche a trier puis on fait une boucle for du début à la fin moins un de la tranche à trier. Si l'élément qui se situe à l'indice de la boucle est plus petit que le pivot on le place à l'indice j et on incrémente j. A la fin on place le pivot juste après le dernier élément plus petit que lui même. 

Question 4 et 5:
	 Les deux fonctions ont bien été codés.

Question 6:
	 L'espace mémoire supplémentaire est l'espace dédié à la définition de la tranche, il faut un espace mémoire pour définir la partie gauche et un pour la partie droite.
Dans le pire des cas il faut donc 2 * n espaces mémoires supplémentaires. 

Question 7:
	 Le pivot aléatoire est fini et marche. La fonction renvoit l'indice du pivot dans le tableau t.

Question 8:
	 Les fonctions ont été modifié. Maintenant il existe une fonction tri_rapide prenant pour pivot le premier chiffre de la tranche et un tri_rapide_alea prenant un pivot aleatoire. 

Question 9:
	  Effectué.

Question 10:
	 Les résultats sont données par la fonction nmb_comparaisons_moyennes().
	 Je peux observer que régulièrement les valeurs avec le pivot aléatoires sont plus faible qu'avec le pivot normal mais il arrive également qu'elles soient plus fortes. Cette technique du pivot aléatiore n'est pas vraiment une nette amélioration au point de vu des comparaisons.

Question 11:
	 Le pire des cas est présent lorsque le pivot choisit est un extrême de la tranche a trier. C'est à dire  un tableau déjà trié dans l'ordre croissant ou décroissant.
Dans ce cas la compléxité est:
     Cp(n) = Theta(n²)

Question 12:
	 Théoriquement le meilleur des cas est établi quand le pivot permet de diviser un tableau en deux partitions égales.

Question 13:
	 Fonction pour truover le pivot optimal codé et opérationnel. 

Question 14:
	 Ceci a été effectué avec la fonction nmb_comparaisons_moyennes_opti().

Question 15:
	 Le résultat est dans le dossier 'test'.

Question 16:
	 Dans le meilleur des cas la complexité est de :
	 Cm(n) = theta(n logn)

Question 17:
	 En rajoutant les comparaisons pour trouver le pivot optimal on se rend vite compte qu'il faut beaucoup plus de comparaisons. 

Question 18:
	 En pratique nous n'avons pas encore trouvé de méthode pour trouver ce pivot sans que l'on perde en efficacité. 
	 



