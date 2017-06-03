<?php
	include "../objet/Identite.class.php";
	include "../objet/Bdd.class.php";
	session_start();
?>
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr"> 
<head> 
	<meta charset="UTF-8"/> <meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" /> 
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/> 
	<meta name="Description" content="Reseau social d'echange de message"/> 
	<meta http-equiv="refresh" content="5;../index.php" />
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link> 
<title>Rezozio</title> 
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
	<div id="principal" class="decal">	
	<?php 		

	if($_SESSION['log']){
		$bdd_abo = new Bdd();
		$bdd_abo->delAbo($_SESSION['log']->getIdent(), $_GET['auth']);
		echo "<div class=\"error\"> L'utilisateur a bien été supprimé de votre liste d'abonné. </div>";
	}
	else{
		echo "<div class=\"error\">Vous n'êtes pas connecté. Veuillez vous connecter pour accéder à cette page.</div>";
	}	

	?>
		</div>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
