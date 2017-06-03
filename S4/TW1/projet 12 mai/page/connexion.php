<?php
	session_start();
?>
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr"> 
<head> 
	<meta charset="UTF-8"/> <meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" /> 
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/> 
	<meta name="Description" content="Reseau social d'echange de message"/> 
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link> 
<title>Connexion Rezozio</title> 
</head>
<body>
	<?php
			include'../page/header_dc.html';
			include'../page/cadre_dc.php';
	?>
	<div id="principal">
		<h3> Connexion </h3>
			<div class="sousdiv">
	<?php 		
	include "../objet/Identite.class.php";

	function print_form(){
		echo "<FORM METHOD=\"POST\" ACTION=\"connexion.php\" ENCTYPE=\"x-www-form-urlencoded\">\n";
		echo "  <INPUT type=\"text\" placeholder=\"Login\" name=\"login\">\n";
		echo "	<INPUT type=\"password\" placeholder=\"Mot de Passe\" name=\"mdp\"> \n</br></br>";
		echo "	<INPUT type=\"submit\" value=\"Valider\" name=\"valider\"> \n";
		echo "</FORM>\n ";
	}

	if($_SESSION['log']) {
			echo "vous êtes connecté. vous allez être redirigé vers l'accueil";
		}
		else
		{	
			if (isset($_POST['login']) && isset($_POST['mdp'])){
				include "../objet/Bdd.class.php";
				$bdd_connect = new Bdd();
				$keyword['password'] = $bdd_connect->getMdp($_POST['login']);
				if($keyword['password'] == $_POST['mdp']){
					$keyword['nbabonne'] = $bdd_connect->getNbabonne($keyword['name']);
					$keyword['nbabo'] = $bdd_connect->getNbabo($keyword['name']);
					$SESSION= new  Identite ( $keyword['name'], $keyword['nbabonne'], $keyword['nbabo'], $keyword['picture']);
					echo "Vous êtes bien connecté.";
				} else {	
					echo "<div>Mot de passe incorrect</div></br>";
					print_form();
				}

			}else {
				print_form();
			}
		}
	?>
		</div>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
