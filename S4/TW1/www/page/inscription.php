<?php
	include "../objet/Bdd.class.php";
	include "../objet/Identite.class.php";
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
		<h3> Inscription </h3>
			<div class="sousdiv">
	<?php 

	function print_form(){
		echo "<FORM METHOD=\"POST\" ACTION=\"inscription.php\" ENCTYPE=\"x-www-form-urlencoded\">\n";
		echo "	<INPUT type=\"text\" required=\"required\" placeholder=\"Login\" name=\"login\"></br>\n";
		echo "	<INPUT type=\"password\" required=\"required\" placeholder=\"mot de passe\" name=\"mdp\"> </br>\n";
		echo "	<INPUT type=\"password\" required=\"required\" placeholder=\"Repetez mot de passe\" name=\"mdp2\"> </br>\n";	
		echo "	<INPUT type=\"submit\" value=\"Valider\" name=\"valider\"> \n";
		echo "</FORM>\n ";
	}

	if($_SESSION['log']) {
			echo "<div  class=\"error\"> Vous êtes connecté. Veuillez vous déconnecter pour créer un nouveau compte. </div>";
		}
		else
		{	
			if (isset($_POST['login']) && isset($_POST['mdp'])&& isset($_POST['mdp2'])){
				if($_POST['mdp2'] == $_POST['mdp']) {
					//on test si le login et le mdp ont un format correct
					if(preg_match("#[a-zA-Z0-9]{4,}#",$_POST['mdp'] ) && (preg_match("#[a-zA-Z0-9]{4,}#",$_POST['login']))){
						$bdd_connect = new Bdd();
						// on test si le login n'existe pas déjà
						if ( $bdd_connect -> existe($_POST['login'])){
							echo"<div class=\"error\">Le login est déjà pris.</div>";
							print_form();
						}else{
							//faire l'inscription
							$bdd_connect->ajouterUtilisateur($_POST['login'],md5($_POST['mdp']));
							echo "<div  class=\"error\"> Vous êtes bien inscrit. </div>";
						}
					}else{
						echo"<div class=\"error\">Le mot de passe et le login doivent être plus grand que 4 caractères alpha-numériques.</div>";
						print_form();
					}
				} else {	
					echo "<div class=\"error\">Mot de passes différents</div>";
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
