<?php
	$id = $_SESSION[identifiant];
	echo "<div id=\"cadre\"> \n 
		<div class=\"sousdiv\">
			<img src=\"
				//. id->getAvatar() .
		\" alt=\"avatar de l'utilisateur.\" > \n
			\n
			<p> \n ". /*$id->getNom() .*/ "\n
				Nombre d'abonnés :  ". /*$id->getNbrAb().*/"\n
				Nombre d'abonnement : ". /*$id->getNbrAbmnt().*/ "\n
			</p>\n
		</div>
		</br>
		<h3> Exprimez-vous ! </h3>
			<div class=\"sousdiv\">
				<form action=\"\">
					<textarea rows=\"6\" cols=\"27\" maxlength=\"140\" required placeholder=\"Entrez votre message ici.\" name=\"message\"></textarea> 
					<input id=\"bouton_recherche\" type=\"image\" src=\"http://webtp.fil.univ-lille1.fr/~lesagey/projet/design/image/boutonrech.png\" alt=\"Rechercher\" />
				</form>
			</div>
	</div>";
	
?>
