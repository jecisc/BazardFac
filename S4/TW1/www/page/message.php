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
			$bdd_mess = new Bdd();
			if(preg_match("~\{(.*?)\}~",$_POST['message'])){
				$tab = explode('{', $_POST['message'], 2);
				$tab[1] = explode('}', $tab[1], 2);
				$mess = $tab[0]."<a href=\"".$tab[1][0]."\">".$tab[1][0]."</a>".$tab[1][1];
				echo $mess;
				$bdd_mess -> setMessage($mess, ($_SESSION['log']->getIdent()));
			}
			else{
				echo $_POST['message'];
				$bdd_mess -> setMessage($_POST['message'], ($_SESSION['log']->getIdent()));
			}
			
			echo "<div class=\"error\"> Votre message a bien été envoyé. </div>";
	}
	else{
		echo "<div class=\"error\"> Vous n'êtes pas connecté. Veuillez vous connecter pour accéder à cette page. </div>";
	}	

	?>
		</div>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
