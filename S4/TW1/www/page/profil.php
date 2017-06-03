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
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link> 
<title>Votre profil Rezozio</title> 
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
		<h3> Profil </h3>
			<div class="sousdiv" id="prohib">
	<?php 		
	function print_prof(){
		echo "<table><tr>";
		echo "<FORM METHOD=\"POST\" ACTION=\"profil.php\" enctype=\"multipart/form-data\">\n";
		echo "<td><p> Nom: </p></td><td>";
		echo "  <INPUT type=\"text\" placeholder=\"Nouveau nom\" name=\"ident\" />\n</tr>\n<tr>";
		echo "<td><p> Avatar (Taille max : 400px * 400px; Taille max : 40Ko) : </p></td><td>";
		echo "  <INPUT type=\"hidden\" name=\"MAX_FILE_SIZE\" value=\"40000\" />";
		echo "	<INPUT type=\"file\" name=\"avatar\" /> \n</td></tr>\n<tr>";
		echo "<td><p> Ancien mot de passe : </p></td><td>";
		echo "	<INPUT type=\"password\" placeholder=\"Ancien mot de passe\" name=\"mdpold\" /> \n</td></tr>\n<tr>";
		echo "<td><p> Nouveau mot de passe : </p></td><td>";
		echo "	<INPUT type=\"password\" placeholder=\"Nouveau mot de passe\" name=\"mdp\" /> \n</td></tr>\n<tr>";
		echo "<td><p> Confirmation du nouveau mot de passe : </p></td><td>";
		echo "	<INPUT type=\"password\" placeholder=\"Repetez mot de passe\" name=\"mdp2\" /> </td></tr>\n<tr>\n";	
		echo "	<td><INPUT type=\"submit\" value=\"Valider\" name=\"valider\"  /> \n</br></br></td></tr>";
		echo "</FORM>\n </table>";
	}

	if($_SESSION['log']){
			$bdd_prof = new Bdd();
			//on vérifie si le champs de changement de nom est remplit
			if(!empty($_POST['ident'])){
				//on vérifie si le nom est bien alphanumérique.
				if(preg_match("#[a-zA-Z0-9]{4}#",$_POST['ident'])){
					//changer le nom
					$bdd_prof -> setNom(($_SESSION['log']->getIdent()), $_POST['ident']);
					$id = $_SESSION['log'];
					$id->setNom($_POST['ident']);
				}
				else{
					echo "<div class=\"error\"> Format de nom incorrect. Veuillez utiliser au moins 4 caractères alphanumériques. </div>";
				}
			}

			if(!empty($_FILES['avatar']['tmp_name'])){
				if ($_FILES['avatar']['error'] > 0){
					echo "<div class=\"error\" > Erreur lors de l'envoit de l'avatar. </div>";
				}
				else{
					$extensions_valides = array( 'jpg' , 'jpeg' , 'gif' , 'png' );
					$extension_upload = strtolower(  substr(  strrchr($_FILES['avatar']['name'], '.')  ,1)  );
					if ( in_array($extension_upload,$extensions_valides) ){
						$image_sizes = getimagesize($_FILES['avatar']['tmp_name']);
						if ($image_sizes[0] >= 401 OR $image_sizes[1] >= 401){
						echo "<div class=\"error\" > Taille de l'image non correcte.</div>";	
						}
						else{
							$bdd_prof -> setAvatar(($_SESSION['log']->getIdent()),$_FILES['avatar']['tmp_name'], $_FILES['avatar']['type'] );
						}
					}
					else{
						echo "<div class=\"error\" > Extension de l'image non correcte. Veuillez vous limiter à une image .jpg, .jpeg, .gif ou .png. </div>";
					}
				}
			}
		
			if (!empty($_POST['mdpold']) || !empty($_POST['mdp']) || !empty($_POST['mdp2'])){
				if (!empty($_POST['mdpold']) && !empty($_POST['mdp'])&& !empty($_POST['mdp2'])){
					//on test si l'ancien mot de passe est bon
					$mdpbdd = $bdd_prof-> getMdp($_SESSION['log']->getIdent());
					if(md5($_POST['mdpold']) == $mdpbdd){
						//on test si les deux mots de passe sont concordants
						if($_POST['mdp2'] == $_POST['mdp']) {
							//on test si le mdp a un format correct
							if(preg_match("#[a-zA-Z0-9]{4,}#",$_POST['mdp'] )){
								//on change le mot de passe
								$bdd_prof -> setMdp(($_SESSION['log']->getIdent()), md5($_POST['mdp']));
							}
							else{
								echo"<div class=\"error\">Le mot de passe doit être plus grand que 4 caractères alpha-numériques.</div>";
							}

						}
						else{
							echo "<div class=\"error\">Mot de passes différents</div>";
						}

					}
					else{
						echo"<div class=\"error\"> Ancien mot de passe incorrect.</div>";
					}
				}
				else{
					echo"<div class=\"error\"> Tous les champs requis ne sont pas remplis.</div>";
				}
			}

			print_prof();

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
