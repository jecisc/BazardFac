<?php 
	include "objet/Identite.class.php";
	include "objet/Bdd.class.php";
	include "page/script/bouton.php";
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
			include 'page/cadre_log.php';
		}
		else
		{
			include'page/header_dc.html';
			include'page/cadre_dc.php';
		}
	?>
	<div id="principal">
		<div id="marge">
			
		<h3> Quoi de nœuf ? </h3>
	<?php
	$bdd_connect = new Bdd();
	$message = "";
	$offset=0;
	$nbmessage = 0;
	if($_SESSION['log']) {
		if (!empty($_GET['offset'])){
			$offset = $_GET['offset'];
		}

		$listab = $bdd_connect -> getListAbo(($_SESSION['log']->getIdent()));
		$list = "'";
		foreach($listab as $value){
			$list = $list.$value['author']."','";
		}
		$list = $list.($_SESSION['log']->getIdent())."'";
		
		$nbmessage = $bdd_connect->countAllMessageLog($list);

		$message = $bdd_connect->getMessage($offset, 10, $list);
		
	}else{
		$nbmessage = $bdd_connect->countAllMessage();
		if (!empty($_GET['offset'])){
			$offset = $_GET['offset'];
		} 
		$message = $bdd_connect->getAllMessage($offset, 10);
	}

	if (($offset-9)>0){
		
		echo "<div id=\"mess\">";
		echo '<a href="index.php?offset='.($offset-10).'"><div id ="ancienmessage">Afficher les 10 messages précédents</div></a>';
		echo "</div>";
	}

	foreach ($message as $value){
			echo "  <div id=\"mess\">
				<div id=\"avat\">
						<img alt=\"Avatar\" src=\"data:".$value['$mimetype'].";base64,".$value['encode']."\"/>
				</div>
				<div id=\"contmess\"> 
					<div id=\"auteur\">	
						<a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">" 
							. $value['author']."
						</a>   
						(
						<a href=\"http://jecisc.alwaysdata.net/page/fil.php?auth=".$value['ident']."\">"
							.$value['name']."
						</a>
						)						
					</div> 
					<div id=\"date\">"
						.date("Y-m-d H:i:s", strtotime($value['date'])) . "
					</div> </br> 
					<div id=\"messag\">"
						.$value['content']."
					</div>\n</div>
				</div>";
		};
	if (($offset+9)<$nbmessage){
		echo "<div id=\"mess\">";
		echo '<a href="index.php?offset='.($offset+10).'"><div id ="ancienmessage">Afficher les 10 messages suivants.</div></a>';
		echo "</div>";
	}
	?>
		</div>
	</div>
	<?php 
		include'page/footer.html';
	?>
	
</body>
</html>
