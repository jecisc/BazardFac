<?php
	include "../objet/Identite.class.php";
	include "../objet/Bdd.class.php";
	include "script/bouton.php";
	session_start();
?>
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr"> 
<head> 
	<meta charset="UTF-8"/> <meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" /> 
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/> 
	<meta name="Description" content="Reseau social d'echange de message"/> 
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link> 
<title>Fil d'abonnement Rezozio</title> 
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
		<h3> Abonnement </h3>
	<?php 		

	if($_SESSION['log']){
		$bdd_abo = new Bdd();
		$actUser = $_SESSION['log']->getIdent();
		if (($bdd_abo->getNbabo($actUser)) == 0 ){
			echo "<div class=\"sousdiv\" id=\"abo\"> Vous n'avez pas encore d'abonnement ! Revenez quand vous aurez bien pris votre envol sur notre site ! </div>";
		} else{
			$auteur = $bdd_abo->getAuteur($actUser);
			foreach ($auteur as $value){
			echo "  <div id=\"mess\"> 
					<div id=\"avat\">". $bdd_abo->getImg($value['ident'])."</div>
					<div id=\"abonement\"> 
						Identifiant: <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">".$value['ident']."</a></br>  
						Nom: <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">" . $value['name']."</a></br> 
						Nombre d'abonné : ".$bdd_abo -> getNbabo($value['ident'])."
					</div>\n
					<div id=\"boutonAb\">\n";
						if($bdd_abo-> estAbonne( $value['ident'], $actUser )){
							boutonDesabo($value['ident']);
						}else{ 
							boutonAbo($value['ident']);
						}
				echo "</div>\n
				</div>";
		};
		}
	}
	else{
		echo "<div class=\"error\">Vous n'êtes pas connecté. Veuillez vous connecter pour accéder à cette page.</div>";
	}	

	?>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
