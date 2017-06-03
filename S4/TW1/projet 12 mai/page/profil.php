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
<title>Votre profil Rezozio</title> 
</head>
<body>
	<?php
			include'../page/header_log.html';
			include'../page/cadre_log.php';
	?>
	<div id="principal" class="decal">	
			<h3> Profil </h3>
		<div class="sousdiv" id="prohib">
	<?php 		
	include "../objet/Identite.class.php";

	function print_prof(){
		echo "<FORM METHOD=\"POST\" ACTION=\"profil.php\" ENCTYPE=\"x-www-form-urlencoded\">\n";
		echo "<p> Nom: </p>";
		echo "  <INPUT type=\"text\" placeholder=\"Nouveau nom\" name=\"ident\">\n";
		echo "<p> Avatar : </p>";
		echo "	<INPUT type=\"file\"  name=\"avatar\"> \n</br></br>";
		echo "<p> Ancien mot de passe : </p>";
		echo "	<INPUT type=\"password\" placeholder=\"Ancien mot de passe\" name=\"mdpold\" > \n";
		echo "<p> Nouveau mot de passe : </p>";
		echo "	<INPUT type=\"password\" placeholder=\"Nouveau mot de passe\" name=\"mdp\" > \n";
		echo "<p> Confirmation du nouveau mot de passe : </p>";
		echo "	<INPUT type=\"password\" placeholder=\"Repetez mot de passe\" name=\"mdp2\" > </br></br>\n";	
		echo "	<INPUT type=\"submit\" value=\"Valider\" name=\"valider\"> \n</br></br>";
		echo "</FORM>\n ";
	}

	if(!$_SESSION['log']){
		if (isset($_POST['ident']) || isset($_POST['avatar']) || isset($_POST['mdpold']) || isset($_POST['mdp']) || isset($_POST['mdp2'])){
			include "../objet/Bdd.class.php";
			$bdd_connect = new Bdd();
			if(isset($_POST['ident'])){
			
			}
		}
		else
		{
			print_prof();
		}




			/*	$keyword['password'] = $bdd_connect->getMdp($_POST['login']);
				if($keyword['password'] == $_POST['mdp']){
					$keyword['nbabonne'] = $bdd_connect->getNbabonne($keyword['name']);
					$keyword['nbabo'] = $bdd_connect->getNbabo($keyword['name']);
					$SESSION= new  Identite ( $keyword['name'], $keyword['nbabonne'], $keyword['nbabo'], $keyword['picture']);
					echo "Vous êtes bien connecté.";
				} else {	
					echo "<div>Mot de passe incorrect</div></br>";
					print_prof();
				}

			}else {
				print_prof();
			}*/
	}
	else{
		echo "Vous n'êtes pas connecté. Veuillez vous connecter pour accéder à cette page.";
	}	

	?>
		</div>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
