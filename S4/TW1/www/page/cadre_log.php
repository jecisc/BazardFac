<?php
	$id = $_SESSION['log'];
	$bdd_avat = new Bdd();
	$ident = $id->getIdent();
	$avatar = $bdd_avat -> getImg($ident);
	echo "<div id=\"cadre\"> \n 
		<div class=\"sousdiv\">
			$avatar \n
			\n
			<p id=\"souscadre\">\n  Identifiant : ".  $id->getIdent() . "\n</br></br>
				Nom :  ". $id->getNom()."\n</br></br>
				Nombre d'abonnés :  ". $bdd_avat->getNbabo($ident)."\n</br></br>
				Nombre d'abonnement : ". $bdd_avat->getNbabonne($ident)."\n</br></br>
			</p>\n
		</div>
		</br>
		<h3> Exprimez-vous ! </h3>
			<div class=\"sousdiv\">
				<form METHOD=\"POST\" ACTION=\"http://jecisc.alwaysdata.net/page/message.php\" enctype=\"multipart/form-data\" >
					<textarea rows=\"6\" cols=\"27\" maxlength=\"140\" required placeholder=\"Entrez votre message ici.\" name=\"message\"></textarea> 
					<input id=\"bouton_recherche\" type=\"image\" src=\"http://jecisc.alwaysdata.net/design/image/submit.png\" alt=\"Rechercher\" />
				</form>
			</div>
	</div>";
	
?>
