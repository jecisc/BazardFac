<?php
	//contient tous les boutons contruit en php utilisées sur plusieurs pages distinctes.

	function boutonDesabo($author){
		echo "<a href=\"http://jecisc.alwaysdata.net/page/sedesabonner.php?auth=".$author."\">
			<div id=\"bouton\"><img src=\"http://jecisc.alwaysdata.net/design/image/desabo.gif\" alt=\"Se désabonnée\"/></div></a>";
	}

	function boutonAbo($author){
		echo "<a href=\"http://jecisc.alwaysdata.net/page/sabonner.php?auth=".$author."\">
			<div id=\"bouton\"> <img src=\"http://jecisc.alwaysdata.net/design/image/abo.gif\" alt=\"S'abonner\"/></div></a>";
	}
?>
