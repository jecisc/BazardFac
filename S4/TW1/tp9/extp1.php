<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">

<head>

	<meta charset="UTF-8" />
	<title>Test PHP2</title>

</head>

<body>

	<h2>Exercices TP1 PHP</h2>

		<h3> Exercice 2.1 </h3>
	
			<h4> Question 1 </h4>
				<p>
					<?php  
						echo (date ('d / m / y'));
					?>
				</p>
			<h4> Question 2</h4>
				<p>
					<?php  
						echo ("La version php est : " .(PHP_VERSION ) ." et à pour OS est : ". (PHP_OS) ); 
					?>
				</p>
				
			<h4> Question 3</h4>
				<p>
					<?php  
						echo ("Après l'execution de : </br></br>
								\$x = \"Postgresql\"; </br> 
								\$y= \"MySQL\"; </br>
								\$z= \"Utilisez \$x et \$y\" ; </br>
								\$t= ’Utilisez \$x et \$y’; </br> </br> ");
								
							$x = "Postgresql";
							$y= "MySQL"; 
							$z= "Utilisez $x et $y" ; 
							$t= 'Utilisez $x et $y'; 
							
						echo ("On obtient : x= $x ; y= $y ; z= $z ; t= $t " ); 
					?>
				</p>	
				
			<h4> Question 4</h4>
				<p>
					<?php  
						$tab["zero"]="pas";
						$tab[1]=2;
						$tab[0]="problème";
						
						foreach($tab as $cle => $val)
							echo("La valeur de $cle est $val </br>");

					?>
				</p>

		<h3> Exercice 2.2 </h3>
			<h4> Question 1 </h4>
				<p>
					<?php
						for ($i = 2; $i < 10; $i++){
							for ($j = 2; $j < 10; $j++){
								
								echo(" - $i * $j = ".($i*$j)."</br>");
							}
						}
					?>
				</p>
				
			<h4> Question 2 </h4>
				<p>
					<table>
						<?php
							for ($i = 2; $i < 10; $i++){
								echo ("<tr>");
								echo("<td> $i </td>");
								for ($j = 2; $j < 10; $j++){
									echo("<td>".($i*$j)."</td>");
								}
								echo("</tr>");
							}
						?>
					</table>
				</p>	

</body>

</html>
