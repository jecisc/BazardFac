Ferlicot-Delbecque Cyril -- TP1 -- Groupe 2

Question 1 : 

	La stratégie fonctionne. J'ai décomposé ma fonction en deux partie pour rendre le code plus lisible. Avant lastratégie 1 j'ai donc une fonction 
est dans m p qui renvoit true si le marqueur p se trouve dans le tableau de marqueur p.
Le test fonctionne. 

Question 2 :
	
	Pour étudier la complexité de cet algorithme je propose de compter le nombre de comparaison de marqueurs. Pour ce faire il faut rajouter un compteur à chaque utilisation de Experience.cmp.

Question 3 :
	
	Le pire des cas pour cet algorithme est celui où il n'y a que des marqueurs positifs car s'il n'y en a que des negatifs le tableau des positifs est vide et donc vite comparé.

Question 4 :

c1 = 1 + 2 + 3 + 4 + ... + m = m(m+1)/2 comparaisons.

Question 5 :
	La stratégie fonctionne. Comme pour la question 1 la fonction est décomposé en deux parties. La partie où les comparaisons sont faite est "est_dans2".

Question 6:
	Le pire cas reste le même. C'est à dire avoir un tableau de marqueur ne comprenant que des marqueurs positifs. 

c2 = 1 + 2 + 3 + 4 + ... + m = m(m+1)/2 comparaisons.

Question 7:
	La stratégie fonctionne. Comme pour la question 1 la fonction est décomposé en deux parties. La partie où les comparaisons sont faite est "est_dans3".

Question 8:
	

Question 9 :
	J'ai bien rajouté les 3 lignes de codes pour avoir les comptes des 3 fonctions.

Question 10 :
	Nous pouvons constater que dans tous les cas la stratégie 3 effectue moins de comparaisons. (Pas de marqueur positif, que des marqueurs positifs, très peu de marqueur positifs, très peu de marqueur négatif...).
	De plus, plus il y a de marqueurs positifs dans le tableau, plus les algorithme 1 et 2 font de comparaisons. 
	S'il n'y a qu'un marqueur positif les stratégies 1 et 2 sont équivalentes. 	

	













	
