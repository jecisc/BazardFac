<?php
	$id = $_SESSION[identifiant];
	echo"<div id=\"cadre\"> \n 
		<div class=\"sousdiv\">
			<img src=\"http://webtp.fil.univ-lille1.fr/~lesagey/projet/design/image/avatar/Avatar.png\" alt=\"Avatar Generique\" > \n
			<p> \n
				</br> \n
				<a href=\"http://webtp.fil.univ-lille1.fr/~lesagey/projet/page/connexion.php\">
					Connectez vous.
				</a>	
			</p> \n
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
