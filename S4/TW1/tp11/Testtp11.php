<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">

<head>

  <meta charset="UTF-8" />
  <title>Test PHP</title>

</head>

<body>

<h2>Test TP 10</h2>

<p>
<?php 
	$auteurs = array('Mark Lutz', 'Gérard Swinnen');
	$titres = array('Python (en français)', 'Apprendre à programmer avec Python');
	
	function tabLivre1( $tab1, $tab2){
			echo '<table>';
			foreach ( $tab1 as $cle => $valeur){
				echo'<tr>';
				echo'<td class="auteur">'. $tab1[$cle].'</td>';
				echo '<td class = "titre">'.$tab2[$cle]. '</td>';
				echo'</tr>';
			}
			echo '</table><br/>';
	}
	
tabLivre1($auteurs, $titres);

$livre = array(
		array('auteur' => 'Mark Lutz', 'titre' => 'Python (en français)'), 
		array ('auteur' => 'Gérard Swinnen', 'titre' => 'Apprendre à programmer avec Python')
		);
	

function tabLivre2($tab){
	echo '<table>';
	foreach($tab as $cle => $valeur){
		echo'<tr>';
		echo'<td class="auteur">'. $tab[$cle]['auteur'].'</td>';
		echo '<td class = "titre">'.$tab[$cle]['titre']. '</td>';
		echo'</tr>';
	}
	echo '</table><br/>';	
}
tabLivre2($livre);		
?>
</p>

<h2>Test TP 11</h2>

<p>
<?php 
	
?>
</p>

</body>

</html>
