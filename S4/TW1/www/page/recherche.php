<?php 
	include "../objet/Identite.class.php";
	include "../objet/Bdd.class.php";
	include "script/bouton.php";
	session_start();
?>	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
<head>
	<meta charset="UTF-8"/>
	<meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" />
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/>
	<meta name="Description" content="Reseau social d'echange de message"/>
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link>
	<title>Rechercher membre Rezozio</title>
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
		<h3> Recherche de haut vol </h3>
		<div class="sousdiv">
	
	<?php
	if($_SESSION['log']){
		
		$bdd_rech = new Bdd();
		$actUser= ($_SESSION['log']->getIdent());
		
		if(!empty($_POST['recherche'])){
			$user = $bdd_rech->searchUser($_POST['recherche']);
			foreach ($user as $value){
			echo "  <div id=\"mess\"> 
					<div id=\"avat\">". $bdd_rech->getImg($value['ident'])."</div>
					<div id=\"contmess\">  
						<div id=\"abonement\">
							Identifiant : <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">".$value['ident']."</a></br>
							Nom : <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">".$value['name'] ." </a><br/>";
						if ($bdd_rech-> estAbonne( $value['ident'], $actUser )){
							boutonDesabo($value['ident']);
						}else{ 
							boutonAbo($value['ident']);
						}
			echo "		</div>\n</div>
				</div>";
			}
		}
	}else{
		echo "<div class=\"error\">Vous n'êtes pas connecté. Veuillez vous connecter pour accéder à cette page.</div>";
	}	
	
	?>
		</div>
	</div>
	<?php 
		include'footer.html';
	?>
	
</body>
</html>
