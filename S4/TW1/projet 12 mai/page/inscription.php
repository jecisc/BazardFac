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
<title>Inscription Rezozio</title> 
</head>
<body>
	<?php
			include'../page/header_dc.html';
			include'../page/cadre_dc.php';
	?>
	<div id="principal">
		<h3> Inscription </h3>
			<div class="sousdiv">
	<?php 		
	include "../objet/Identite.class.php";

	function print_form(){
		echo "<FORM METHOD=\"POST\" ACTION=\"connexion.php\" ENCTYPE=\"x-www-form-urlencoded\">\n";
		echo "	<INPUT type=\"text\" required=\"required\" placeholder=\"Login\" name=\"login\"></br>\n";
		echo "	<INPUT type=\"password\" required=\"required\" placeholder=\"mot de passe\" name=\"mdp\"> </br>\n";
		echo "	<INPUT type=\"password\" required=\"required\" placeholder=\"Repetez mot de passe\" name=\"mdp2\"> </br>\n";	
		echo "	<INPUT type=\"submit\" value=\"Valider\" name=\"valider\"> \n";
		echo "</FORM>\n ";
	}

	if($_SESSION['log']) {
			echo "vous êtes déjà connecté.";
		}
		else
		{	
			if (isset($_POST['login']) && isset($_POST['mdp'])&& isset($_POST['mdp2'])){
				if($_POST['mdp2'] == $_POST['mdp']) {
					if(preg_match("#[a-zA-Z0-9]{4,}#",$_POST['mdp'] ) && (preg_match("#[a-zA-Z0-9]{4,}#",$_POST['login']))){
						include "../objet/Bdd.class.php";
						$bdd_connect = new Bdd();
						if ( $bdd_connect -> existe($_POST['login'])){
							//faire l'inscription
							$keyword = $bdd_connect->ajouterUtilisateur($_POST['login'],$_POST['mdp']);
							echo "Vous êtes bien inscrit.";
						}else{
							echo"<div>Le login est déjà pris.</div>";
							print_form();
						}
					}else{
						echo"<div>Le mot de passe et le login doivent être plus grand que 4 caractères alpha-numériques.</div>";
						print_form();
					}
				} else {	
					echo "<div>Mot de passes différents</div>";
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
