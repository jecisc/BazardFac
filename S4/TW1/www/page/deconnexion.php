<?php
	include "../objet/Identite.class.php";
	include "../objet/Bdd.class.php";
	session_start();
	session_destroy();
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
<head>
	<meta charset="UTF-8"/>
	<meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" />
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/>
	<meta name="Description" content="Reseau social d'echange de message"/>
	<meta http-equiv="refresh" content="5;../index.php" />
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link>
	<title>Rezozio -- Deconnexion</title>
</head>
<body>
	<?php
		if($_SESSION['log']) {
			include 'header_log.html';
			include 'cadre_log.php';
		}
		else{
			include'header_dc.html';
			include'cadre_dc.php';
		}
	?>
	<div id="principal">
		<div  class="error">
			<p> Vous avez été deconnecté avec succé. </br> Vous allez être redirigé sur la page d'acceuil dans 5secondes.</p>
		</div>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
</html>



