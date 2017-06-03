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
$i=0;
print( $i++ + "3 cochons". " chiens\n"); 
print("$i" . "3 cochons" . " chiens\n"); 
print( $i + "4.1 cochons" + " chiens" . (3/2) . "\n"); 
?>

<?php
/* quelques exemples de chaînes de caracteres */
$a = ’PHP’;
$b = ’MySQL’;
echo "$a et $b " ;
echo "<br/>\n";
echo '$a et $b';
echo "<br/>\n";
echo "La cérémonie d’ouverture a lieu le . date(’d’)";
echo "<br/>\n";
echo "La cérémonie d’ouverture a lieu le " . date(’d’);
echo "<br/>\n";
echo 'La cérémonie d\’ouverture a lieu le ' . date("d");
echo "<br/>\n";
echo "Sa devise est \"Liberté Egalité Fraternité\" ";
echo "<br/>\n";
echo $a . " et " . $b ;
echo "<br/>\n";
echo $a , " et " , $b ;
echo "<br/>\n";
?>

<?php
/* tableau */
$tab[0] = 2004 ;
$tab[1] = 31.14E7 ;
$tab[2] = "PHP4";
$tab[35] = 'MySQL' ;
$tab[3] = 24 ;
$tab[] = TRUE ;
$a = 0;
foreach($tab as $cle => $val){
	$a++;
	echo("La valeur de $cle est $val </br>");
	}
echo $a;
	
?>

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

</body>

</html>
