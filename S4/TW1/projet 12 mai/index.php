<?php 
	session_start();
?>	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
<head>
	<meta charset="UTF-8"/>
	<meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" />
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/>
	<meta name="Description" content="Reseau social d'echange de message"/>
	<link rel="stylesheet" type="text/css" href="design/index.css"></link>
	<title>Rezozio</title>
</head>
<body>
	<?php
		if($_SESSION['log']) {
			include 'page/header_log.html';
		}
		else
		{
			include'page/header_dc.html';
		}
	?>
	<?php 
		if($_SESSION['log']) {
			include 'page/cadre_log.php';
		}
		else
		{
			include'page/cadre_dc.php';
		}
	?>
	<div id="principal">
	<?php
		include "objet/Bdd.class.php";
		$bdd_connect = new Bdd();
		$message = $bdd_connect->getMessage($_POST['start'], $_POST['offset'], $_POST['auteur']);
		foreach ($message as $key => $value){
			echo "  <div> 
					<div id=\"avat\">". $value['author']."</div>
					<div>". $value['author']. $value['date'] . " </br> ".$value['content']."</div>
				</div>";
		};
	?>
	</div>
	<?php 
		include'page/footer.html';
	?>
	
</body>
</html>
