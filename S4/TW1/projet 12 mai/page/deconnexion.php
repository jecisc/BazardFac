<?php
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
			include'../page/header_dc.html';
			include'../page/cadre_dc.php';
	?>
	<div id="principal">
		<p> Vous avez été deconnecté avec succé. </br> Vous allez être redirigé sur la page d'acceuil dans 5secondes.</p>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
</html>



