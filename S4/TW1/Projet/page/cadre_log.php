<?php
	$id = $_SESSION[identifiant];
	echo "<div id=\"cadre\"> \n 
			<img src=\"";
				id->getAvatar();
	echo"\" alt=\"avatar de l'utilisateur.\" > \n
			<\br>\n
			<p> \n ";
				$id->getNom();
	echo"		<\br>\n
				Nombre d\'abonnés : ";
				$id->getNbrAb();
	echo"		<\br> \n
				Nombre d\'abonnement : ";
				$id->getNbrAbmnt();
	echo"		<\br>\n
			</p>\n
		
		</div>";
?>
