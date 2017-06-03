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
<title>Fil  Rezozio</title> 
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
			$bdd_fil = new Bdd();
			$actUser = $_SESSION['log']->getIdent();
			$author = $_GET['auth'];
			echo "<h3> Fil de ". $author ."</h3>";
			echo "  <div id=\"mess\"> 
						<div id=\"avat\">". $bdd_fil->getImg($author)."</div>
						<div id=\"abonement\"> 
							Identifiant: <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$author."\">".$author."</a></br>  
							Nom:         <a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$author."\">".$bdd_fil->getNom($author)."</a></br> 
							Nombre d'abonné : ".$bdd_fil -> getNbabo($author)."
						</div>\n
						<div id=\"boutonAb\">\n";
							if($bdd_fil-> estAbonne( $author, $actUser )){
								boutonDesabo($author);
							}else{ 
								boutonAbo($author);
							}
					echo "</div>\n
					</div>\n\n 
					<h3> Liste des anciens messages </h3>\n";

			$message = $bdd_fil->getMessageAb($offset, $author);
			foreach ($message as $value){
					echo "  <div id=\"mess\"> 
							<div id=\"avat\">". '<img alt="Avatar" src="data:'.$value['$mimetype'].';base64,'.$value['encode'].'"/>'."</div>
							<div id=\"contmess\"> <div id=\"auteur\">". $value['author']. "</div> <div id=\"date\">".  date("Y-m-d H:i:s", strtotime($value['date'])) . "</div> </br> <div id=\"messag\">".$value['content']."</div>\n</div>
						</div>";
				};
		}
		else{

			$bdd_fil = new Bdd();
			$author = $_GET['auth'];
			echo "<h3> Fil de ". $author ."</h3>";
			echo "  <div id=\"mess\"> 
						<div id=\"avat\">". $bdd_fil->getImg($author)."</div>
						<div id=\"abonement\"> 
							Identifiant:  ".$author."</br>  
							Nom: ".$bdd_fil->getNom($author)."</br> 
							Nombre d'abonné : ".$bdd_fil -> getNbabo($author)."
						</div>\n
					</div>\n\n 
					<h3> Liste des anciens messages </h3>\n";

			$message = $bdd_fil->getMessageAb($offset, $author);
			foreach ($message as $value){
					echo "  <div id=\"mess\"> 
							<div id=\"avat\">". '<img alt="Avatar" src="data:'.$value['$mimetype'].';base64,'.$value['encode'].'"/>'."</div>
							<div id=\"contmess\"> <div id=\"auteur\">". $value['author']. "</div> <div id=\"date\">".  date("Y-m-d H:i:s", strtotime($value['date'])) . "</div> </br> <div id=\"messag\">".$value['content']."</div>\n</div>
						</div>";
				};
		}
	?>
	</div>
	<?php 
		include'../page/footer.html';
	?>
	
</body>
