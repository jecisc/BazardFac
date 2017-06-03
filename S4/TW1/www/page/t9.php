<?php 
	include "../objet/Identite.class.php";
	include "../objet/Bdd.class.php";
	session_start();
?>	
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr" xml:lang="fr">
<head>
	<meta charset="UTF-8"/>
	<meta name="Autor" content="Ferlicot-Delbecque Cyril & Lesage Yann" />
	<meta name="Keywords" content="Rezozio,rezozio,reseau,social,message"/>
	<meta name="Description" content="Reseau social d'echange de message"/>
	<link rel="stylesheet" type="text/css" href="../design/index.css"></link>
	<title>Turn 9 guide</title>
</head>
<body>
	<script type="text/javascript" src="http://xivdb.com/tooltips.js?v=1.6"></script>
	<script>
		// Optional - Change settings (these are defaults)
			var xivdb_tooltips =
			{
				'language' : 'FR',

				'convertQuotes' : true,
				'frameShadow' : true,
				'compact' : false,
				'statsOnly' : false,
				'replaceName' : true,
				'colorName' : true,
				'showIcon' : true,
			}
	</script>
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
		<h3 >Nael Deus Darnus</h3>
			<div class="sousdiv" style="text-align:justify;">
				<br />
				<div style="text-align:center;">
					<iframe width="500" height="281" src="http://www.youtube.com/embed/-YxGEuGOPpM?wmode=transparent&feature=oembed" frameborder="0" allowfullscreen></iframe>
				<br /><br />
				<a href="http://suinyaaan.com/bahamut-turn9.html"> Lien vers un guide japonnais avec VIDEO du tanking au milieu ! </a>
				<br /><br />
				</div>
				
				<br />
				Avant de commencer j'aimerais rappeler que tout le monde a besoin d'au moins 4800PV+, tout joueur en dessous de 5000pv vont rendre la tache des healers "plus dure" et quelqu'un en dessous ou proche de 4800PV va le rendre significativement plus dur en causant des morts al&eacute;atoires. 
				Si vous mourrez al&eacute;atoirement vous allez doubler les plongeons en phase 1 ce qui est dure pour les healers.
				<br />
				<br />
				
				
				<h1 style="text-align:center;">Phase 1</h1>
					<br />
						Les positionnement autour du cercle devraient &ecirc;tre d&eacute;cid&eacute;s &agrave; l'avance. 
						Les bons emplacements pour se placer sont &agrave; gauche, &agrave; droite et juste devant B et C pour les distances. 
						Je recommande 1 healer qui reste en face de chaque marque. 
						Vous ne devriez pas avoir besoin de bouger tr&egrave;s loin pour &eacute;viter les meteores et dynamo.
						Les bardes devraient se tenir a un endroit qui leur permet de facilement repousser les coups.
					<br />
					<br />
						Les auto-attaques arrivent a peu pr&egrave;s toutes les 3.5 sec et font 500-3200 de dommage, <a href="http://xivdb.com/?skill/137/Regen" target="_blank">http://xivdb.com/?skill/137/Regen</a>  + la f&eacute;e peuvent heal la plus part de ces dommages. 
					<br />
					<br />
						Les abilit&eacute;s de la phase 1, ce qu'elles font et comment les g&eacute;rer.
					<br />
					<br />
					
					<strong>Serre du rapace (Ravensclaw)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2005/Ravensclaw" target="_blank">http://xivdb.com/?skill/2005/Ravensclaw</a>
						<br />
							Un attaque frontale en conne, fait environ 3-4k sur le MT.
						<br />
						<br />
					
					<strong>Bec du rapace (Ravensbeak)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a>
						<br />
							C'est le nouveau <a href="http://xivdb.com/?skill/1458/Death-Sentence" target="_blank">http://xivdb.com/?skill/1458/Death-Sentence</a> v2.0, mais cette fois ca frappe &agrave; environ 11k et laisse un debuff appel&eacute; <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a>, lequel explosera apr&egrave;s 12sec apr&egrave;s son application (l'explosion est appel&eacute; <a href="http://xivdb.com/?skill/2007/Raven%27s-Ascent" target="_blank">http://xivdb.com/?skill/2007/Raven%27s-Ascent</a>),pour environ 5-6K dommage. Vous avez besoin de <a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> + <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> + le temps de healer des l'explosion. 
							Le tank a besoin d'etre au max et proprement prepar&eacute; pour l'explosion. 
							Le Tank a besoin d'utiliser un CD defensif juste avant pour aider les healers.
						<br />
						<br />
					
					<strong>Ascension du rapace  (Raven Ascent)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2007/Raven%27s-Ascent" target="_blank">http://xivdb.com/?skill/2007/Raven%27s-Ascent</a>
						<br />
							Ascension du rapace fait environ 5k de dommage. Vous avez besoin de <a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> + <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> + un <a href="http://xivdb.com/?skill/135/Cure-II" target="_blank">http://xivdb.com/?skill/135/Cure-II</a> bien plac&eacute;.
						<br />
						<br />
						
					<strong>Poussi&egrave;re d'&eacute;toile  (Stardust)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2167/Stardust" target="_blank">http://xivdb.com/?skill/2167/Stardust</a>
						<br />
							Cette attaque cible un joueur al&eacute;atoirement (hors MT) avec une marque rouge ou jaune sur la tete. 
							Quand la marque est partie un meteore astral (rouge) ou ombral (jaune) tombe au sol causant des dommages li&eacute; a la proximit&eacute;. 
							Plus vous etes loin, moins vous prennez de dommage. 
							Restez dedans et c'est une mort certaine. 
							Les meteores ne peuvent pas etre depos&eacute;s proches des uns des autres, un minimum de 8 yalms est requis ou les deux meteores exploserons causant un wipe.
						<br />
						<br />
					
					Et maintenant comment faire avec eux :
					<br />
					<br />
					<img src="http://i.imgur.com/N3X9aiF.jpg" class="img" />
					<br />
						Habituellement nous avons le tank exactement sur la <span style="color:red">Marque A Rouge</span>, et comme ca les cac peuvent aller aussi bien a gauche qu'a droite de la marque A. 
						Les distances se tiendrons &eacute;parpill&eacute;s dans le cercle exterieur entre la <span style="color:yellow">Marque B Jaune</span> et la <span style="color:blue">Marque C bleu</span>. 
						Si la marque ou le tank est a des roches des deux cot&eacutes il devrait bouger vers une autre marque de son choix pendant le saut quand le boss n'est pas ciblable. 
					<br />
					<br />
						De cette mani&eacute;re nous sommes sur que nous aurons toujours deux meteores de chaque cote de la marque.
					<br />
					<br />
						Pour la phase 1 visez d'avoir seulement 4 meteores !
					<br />
					<br />
					
					<strong>Char de fer (Iron Chariot)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2009/Iron-Chariot" target="_blank">http://xivdb.com/?skill/2009/Iron-Chariot</a>
						<br />
							Nael Deus Darnus saute sur une cible al&eacute;atoire et utilise Char de fer (Iron Chariot), une attaque AOE a mi-distance qui repousse.
							Apr&eacute;s l'utilisation de l'attaque Nael resaute sur le MT causant 4-6k dommage. Ce skill est appel&eacute; <a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a>. 
						<br />
						<br />
							Tout le monde a besoin d'etre sur de ne pas se tenir au milieu de la map pour qu'elle soit libre pour se pacquer pour le Rayon thermo&iuml;onique (Thermionic Beam) apr&eacute;s le Chariot. 
						<br />
						<br />
						
					<strong>Rayon thermo&iuml;onique (Thermionic Beam)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>
						<br />
							Un joueur al&eacute;atoire est marqu&eacute; avec une <span style="color:red">grosse marque rouge </span> sur sa tete (except&eacute; le MT) auquel tout le monde doit se paquet (normalement au centre de la map) pour que les dommages (17k) puissent etre divis&eacute; sur le raid (les pets partagent &eacute;galement les dommages pris).
							Une fois la marque rouge disparu du haut de votre tete, ca va instantanement exploser.
						<br />
						<br />
					
					<strong>Fonte du rapace  (Raven Dive)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2013/Raven-Dive" target="_blank">http://xivdb.com/?skill/2013/Raven-Dive</a>
						<br />
							Ceci est cast&eacute; juste apr&eacute;s Char de fer (Iron Chariot) et le boss va sauter sur le plus haut en aggro (ca devrait etre le MT) faisant des dommages mod&eacute;r&eacute;s.
							Attention ca ressemble a <a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a> mais ca ne l'est pas !
						<br />
						<br />
					
					<strong>Dynamo lunaire (Lunar Dynamo)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a>
						<br />
							Nael Deus Darnus fait une grosse AOE faisant 4k+ si un joueur est touch&eacute;. 
							Les safes spots sont a l'exterieur de l'AOE ou a moins de 2 yalms de Nael.
							&ecirc;tre touch&eacute; par le Dynamo lunaire (Lunar Dynamo) aura pour effet de healer Nael autant que vous aurez perdu de vie. A comprendre qu'avec le check DPS il faut absoluement &eacute;viter cela. 
						<br />
						<br />
					
					<strong>Rayon m&eacute;t&eacute;ore  (Meteor Stream)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a>
						<br />
							Met une marque blanc/rose sur 4 joueurs al&eacute;atoire dans le groupe, Nael s'envole dans les airs et plonge sur les cibles. 
							Si 2 joueurs ou plus restent proches des uns des autres ils prennent aussi tous les dommages de ces membres cibl&eacute;s par le/les Rayon(s) m&eacute;t&eacute;ore (Meteor Stream). 
						<br />
						<br />						
						A RETENIR : NE RESTEZ PAS EN PACK !!!!
						<br />
						<br />
					
					<strong>Chute de Dalamud  (Dalamud Dive)</strong>
						<br />
						<a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a>
						<br />
							Ce skill sera toujours utilis&eacute; apr&egrave;s <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a>, Nael sautera sur le joueur le plus haut en aggro (cela devrait &ecirc;tre le MT) caussant environ 5-6k dommage.
						<br />
						<br />
					
					<strong>Timings:</strong>
					<br />
					<pre class="prettyprint linenums" >
						<ol class="linenums" style="text-align:left;"><li class="L0"><span class="typ">Fight</span> <span class="pln">start</span> <span class="lit">00</span><span class="pun">:</span><span class="lit">00</span></li><li class="L1"><span class="typ">Serre du rapace (Ravensclaw)</span> <span class="pln"></span><span class="lit">00</span><span class="pun">:</span><span class="lit">06</span></li><li class="L2"><span class="typ">Serre du rapace (Ravensclaw)</span> <span class="pln"></span><span class="lit">00</span><span class="pun">:</span><span class="lit">17</span></li><li class="L3"><span class="typ">Poussi&egrave;re d'&eacute;toile  (Stardust)</span> <span class="pln"></span><span class="lit">00</span><span class="pun">:</span><span class="lit">19</span></li><li class="L4"><span class="typ">Bec du rapace (Ravensbeak)</span> <span class="pln"></span><span class="lit">00</span><span class="pun">:</span><span class="lit">28</span></li><li class="L5"><span class="typ">Red</span> <span class="pln">fragment hits</span> <span class="lit">00</span><span class="pun">:</span><span class="lit">31</span></li><li class="L6"><span class="typ">Bec du rapace (Ravensbeak)</span> <span class="pln">hits</span> <span class="lit">00</span><span class="pun">:</span><span class="lit">31</span></li><li class="L7"><span class="typ">Raven</span> <span class="pln"></span><span class="typ">Dive</span> <span class="pln">party</span> <span class="lit">00</span><span class="pun">:</span><span class="lit">37</span></li><li class="L8"><span class="typ">Iron</span> <span class="pln"></span><span class="typ">Chariot</span> <span class="pln"></span> <span class="lit">00</span><span class="pun">:</span><span class="lit">38</span></li><li class="L9"><span class="typ">Thermionic</span> <span class="pln"></span> <span class="typ">Beam</span> <span class="pln"> </span> <span class="lit">00</span><span class="pun">:</span><span class="lit">43</span></li><li class="L0"><span class="typ">Raven</span> <span class="str">'s Ascent 00:43</span> </li><li class="L1"><span class="str">Fonte du rapace  (Raven Dive) 00:45</span></li><li class="L2"><span class="str"></span> </li><li class="L3"><span class="str">Serre du rapace (Ravensclaw) 00:50</span></li><li class="L4"><span class="str">Poussi&egrave;re d'&eacute;toile  (Stardust) 00:57</span> </li><li class="L5"><span class="str">Serre du rapace (Ravensclaw) 01:05</span></li><li class="L6"><span class="str">Dynamo lunaire (Lunar Dynamo) 01:08</span> </li><li class="L7"><span class="str">Yellow fragment hits 01:09</span></li><li class="L8"><span class="str">Dynamo lunaire (Lunar Dynamo) hits 01:11</span></li><li class="L9"><span class="str">Rayon m&eacute;t&eacute;ore  (Meteor Stream) 01:14</span></li><li class="L0"><span class="str">Dalamut Dive 01:16</span></li><li class="L1"><span class="str"></span></li><li class="L2"><span class="str">Bec du rapace (Ravensbeak) 01:22</span></li><li class="L3"><span class="str">Blight hits 01:25</span></li><li class="L4"><span class="str">Serre du rapace (Ravensclaw) 01:32</span></li><li class="L5"><span class="str">Poussi&egrave;re d'&eacute;toile  (Stardust) 01:34</span></li><li class="L6"><span class="str">Raven'</span> <span class="pln">s</span> <span class="typ">Ascent</span> <span class="pln"></span> <span class="lit">01</span> <span class="pun">:</span> <span class="lit">37</span> </li><li class="L7"><span class="typ">Red</span> <span class="pln">fragment hits </span> <span class="lit">01</span> <span class="pun">:</span> <span class="lit">46</span></li><li class="L8"><span class="typ">Meteor</span> <span class="pln"></span> <span class="typ">Stream</span> <span class="pln"></span> <span class="lit">01</span> <span class="pun">:</span> <span class="lit">49</span> </li><li class="L9"><span class="typ">Meteor</span> <span class="pln"></span> <span class="typ">Stream</span> <span class="pln"></span> <span class="lit">01</span> <span class="pun">:</span> <span class="lit">54</span> </li><li class="L0"><span class="typ">Dalamut</span> <span class="pln"></span> <span class="typ">Dive</span> <span class="pln"></span> <span class="lit">01</span> <span class="pun">:</span> <span class="lit">57</span> </li><li class="L1"><span class="pln"></span> </li><li class="L2"><span class="typ">Serre du rapace (Ravensclaw)</span> <span class="pln"></span> <span class="lit">02</span> <span class="pun">:</span> <span class="lit">02</span> </li><li class="L3"><span class="typ">Bec du rapace (Ravensbeak)</span> <span class="pln"></span> <span class="lit">02</span> <span class="pun">:</span> <span class="lit">08</span> </li><li class="L4"><span class="typ">Blight</span> <span class="pln"></span> <span class="lit">02</span> <span class="pun">:</span> <span class="lit">12</span> </li><li class="L5"><span class="typ">Poussi&egrave;re d'&eacute;toile  (Stardust)</span> <span class="pln"></span> <span class="lit">02</span> <span class="pun">:</span> <span class="lit">14</span> </li><li class="L6"><span class="typ">Serre du rapace (Ravensclaw)</span> <span class="pln"></span> <span class="lit">02</span> <span class="pun">:</span> <span class="lit">23</span> </li><li class="L7"><span class="typ">Raven</span> <span class="str">'s Ascent 02:24</span> </li><li class="L8"><span class="str">Yellow fragment hits 02:26</span> </li><li class="L9"><span class="str">Fonte du rapace  (Raven Dive) party 02:28</span> </li><li class="L0"><span class="str">Char de fer (Iron Chariot) 02:30</span> </li><li class="L1"><span class="str">Rayon thermo&iuml;onique  (Thermionic Beam) 02:35</span></li><li class="L2"><span class="str">Fonte du rapace  (Raven Dive) 02:37</span> </li><li class="L3"><span class="str"></span></li><li class="L4"><span class="str">Try to change Phase before the next Poussi&egrave;re d'&eacute;toile  (Stardust)</span> </li><li class="L5"><span class="str"></span></li><li class="L6"><span class="str">Serre du rapace (Ravensclaw) 02:46</span> </li><li class="L7"><span class="str">Poussi&egrave;re d'&eacute;toile  (Stardust) 02:49</span></li><li class="L8"><span class="str">Bec du rapace (Ravensbeak) 02:57</span> </li><li class="L9"><span class="str">Blight hits 02:59</span></li><li class="L0"><span class="str">Red fragment hits 03:00</span> </li><li class="L1"><span class="str"></span></li><li class="L2"><span class="str">Dynamo lunaire (Lunar Dynamo) hits 03:05</span> </li><li class="L3"><span class="str">Rayon m&eacute;t&eacute;ore  (Meteor Stream) 03:07</span></li><li class="L4"><span class="str">Raven'</span> <span class="pln">s </span> <span class="typ">Ascent</span> <span class="pln"></span> <span class="lit">03</span> <span class="pun">:</span> <span class="lit">09</span> </li><li class="L5"><span class="pln">ETC</span> <span class="pun">...</span></li></ol>
					</pre>
					<br />
					
					<strong>Quand est-ce que je place mes CDs en Tank ?</strong> 
						<br />
						<br />
							Si vous faite du Solo tank dans la premi&egrave;re phase cela devrait &ecirc;tre comme cela :
						<br />
							<ol>
								<li>
									Utilisez <a href="http://xivdb.com/?skill/10/Rampart" target="_blank">http://xivdb.com/?skill/10/Rampart</a> quelques secondes apr&egrave;s le premier <a href="http://xivdb.com/?skill/2167/Stardust" target="_blank">http://xivdb.com/?skill/2167/Stardust</a>, comme &ccedil;a c'est up pour les deux <a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a> et <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a>.
								</li>
								<li>
									Utilisez <a href="http://xivdb.com/?skill/32/Foresight" target="_blank">http://xivdb.com/?skill/32/Foresight</a> quelques secondes apr&egrave;s le premier <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> et le boss est de nouveau ciblable, comme &ccedil;a c'est up pour les deux<a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a> et <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> .
								</li>
								<li>
									Utilisez <a href="http://xivdb.com/?skill/10/Rampart" target="_blank">http://xivdb.com/?skill/10/Rampart</a> quelques secondes apr&egrave;s les &quot;double dives&quot;, comme &ccedil;a c'est up pour les deux <a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a> et <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> puis utilisez <a href="http://xivdb.com/?skill/17/Sentinel" target="_blank">http://xivdb.com/?skill/17/Sentinel</a> quand <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> rest 5sec.
								</li>
								<li>
									Utilisez <a href="http://xivdb.com/?skill/30/Hallowed-Ground" target="_blank">http://xivdb.com/?skill/30/Hallowed-Ground</a> quand <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> reste 5sec.
								</li>
							</ol>
						<br />
						
					<strong>Conseil pour healer:</strong>
						<br />
							<em>Au pull:</em>
						<br />
							SCH: Concentr&eacute; + les 5 DoTs (<a href="http://xivdb.com/?skill/179/Shadow-Flare" target="_blank">http://xivdb.com/?skill/179/Shadow-Flare</a>, <a href="http://xivdb.com/?skill/178/Bio-II" target="_blank">http://xivdb.com/?skill/178/Bio-II</a>, <a href="http://xivdb.com/?skill/168/Miasma" target="_blank">http://xivdb.com/?skill/168/Miasma</a>, <a href="http://xivdb.com/?skill/164/Bio" target="_blank">http://xivdb.com/?skill/164/Bio</a>, <a href="http://xivdb.com/?skill/121/Aero" target="_blank">http://xivdb.com/?skill/121/Aero</a>), utilisez les trois charges pour <a href="http://xivdb.com/?skill/167/Energy-Drain" target="_blank">http://xivdb.com/?skill/167/Energy-Drain</a>.
						<br />
							WHM: Solo heal les 20 premi&egrave;re secondes, rien de bien folichon. 
						<br />
						<br />
							<em>Apr&egrave;s:</em>
						<br />
							SCH: <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> avant <a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a>, <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> avant <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> et <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> avant <a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a> sur le tank apr&egrave;s <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a>. 
							Possible de DPS durant <a href="http://xivdb.com/?skill/2167/Stardust" target="_blank">http://xivdb.com/?skill/2167/Stardust</a> &amp; <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a>. 
							Pas besoin de <a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a> sur le premier <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>. (<a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a> ne sera plus efficace sur les plongeons)
						<br />
							WHM: <a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> avant <a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a> &amp; <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a>, il est temps pour <a href="http://xivdb.com/?skill/135/Cure-II" target="_blank">http://xivdb.com/?skill/135/Cure-II</a> viens juste apr&egrave;s <a href="http://xivdb.com/?skill/2006/Ravensbeak" target="_blank">http://xivdb.com/?skill/2006/Ravensbeak</a> et <a href="http://xivdb.com/?status/458/Raven-Blight" target="_blank">http://xivdb.com/?status/458/Raven-Blight</a> <a href="http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/133/Medica-II</a> <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a> et double <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a> seulement.
						<br />
						<br />
						
				<h1 style="text-align:center;">Phase 2</h1>
					La phase 2 va commencer a 65% de la vie de Nael, celui-ci va sauter au milieu et caster un bouclier autour de lui le rendant impossible &agrave; cibler. 
					Apr&egrave;s &ccedil;a il va faire pop 3 icones vertes sur la t&ecirc;te de 3 joueurs al&eacute;atoires (MT inclu), et ces joueurs vont devoir se placer loin des autres m&eacute;t&eacute;ores.
					<br />
					Tous les 3 m&eacute;t&eacute;ores tomberons en m&ecirc;me temps faisant environ 600 de dommage si vous arrivez &agrave; les &eacute;viter proprement. Ils vont faire pop 3 golem de Dalamud aux endroits o&ugrave; les m&eacute;t&eacute;ores sont tomb&eacute;s et vous avez 65 secondes pour tuer les 3 golems. 
					<br />
					<br />
					
					<strong style="color:red">Golem de Dalamud Rouge - 
						<a href="http://xivdb.com/?status/460/Aggressive-Stance" target="_blank">http://xivdb.com/?status/460/Aggressive-Stance</a>
					</strong>
						<br />
						<a href="http://xivdb.com/?skill/1683/Earthen-Heart" target="_blank">http://xivdb.com/?skill/1683/Earthen-Heart</a> 
						-&gt; Cette attaque a 2.5sec de temps de cast, elle fait environ 3k de dommage et cr&eacute;e une zone de feu bleu sur le sol qui applique un debuff qui cause des dommages (pour environ 1k dommage) sur le joueur. 
						<br />
						<a href="http://xivdb.com/?skill/2033/Heavy-Strike" target="_blank">http://xivdb.com/?skill/2033/Heavy-Strike</a> 
						-&gt; cr&eacute;e une AOE &agrave; 270&ordm;comme l'attaque d'ADS sur le tour 2 elle a 3 aire d'effet mais sans le repoussement. Elle fait environ 4k de dommage par aire d'effet. Vous pouvez facilement l'&eacute;viter en restant derri&egrave;re le golem. 
						<br />
						<br />
					
					<strong style="color:blue">Golem de Dalamud Bleu - 
						<a href="http://xivdb.com/?status/461/Subversive-Stance" target="_blank">http://xivdb.com/?status/461/Subversive-Stance</a>	
					</strong>
						<br />
						<a href="http://xivdb.com/?skill/2038/Magnetism" target="_blank">http://xivdb.com/?skill/2038/Magnetism</a> 
						-&gt; Cette attaque a un cast de 2 sec et va attirer en zone les joueurs et m&eacute;t&eacute;ores dans une zone de 10 yalms. 
						<br />
						<a href="http://xivdb.com/?skill/2037/Earthshock" target="_blank">http://xivdb.com/?skill/2037/Earthshock</a> 
						-&gt; Cette attaque a un cast de 3sec et c'est une large AOE (englobe tout le monde) qui fait 2k de dommage &agrave; tous les joueurs et applique un debuff qu'on ne peut pas enlever : 
						<a href="http://xivdb.com/?skill/308/Paralyze" target="_blank">http://xivdb.com/?skill/308/Paralyze</a>. 
						Il DOIT &ecirc;tre interompu, en g&eacute;n&eacute;ral silence par un barde. 
						<br />
						<br />
					
					<strong style="color:green;">Golem de Dalamud Vert - 
						<a href="http://xivdb.com/?status/459/Normal-Stance" target="_blank">http://xivdb.com/?status/459/Normal-Stance</a>
					</strong>
						<br />
						<a href="http://xivdb.com/?skill/2031/Demolish" target="_blank">http://xivdb.com/?skill/2031/Demolish</a> 
						-&gt; Cette attaque a un temps de cast de 2 sec et fait 3k de dommage sur tous les joueurs du raid. 
						<br />
						<a href="http://xivdb.com/?skill/1446/Boulder-Clap" target="_blank">http://xivdb.com/?skill/1446/Boulder-Clap</a> 
						-&gt; C'est une attaque en conne frontale qui fait environ 3k de dommage sur un tank. 
						<br />
						<a href="http://xivdb.com/?skill/443/Stone-Skull" target="_blank">http://xivdb.com/?skill/443/Stone-Skull</a> 
						-&gt; Attaque normale qui fait environ 700 de dommage sur le tank. 
						<br />
						<br />
					
					DPS distance et m&eacute;l&eacute;e devrons focus le Golem Bleu d&eacute;s qu'il pop (Attention avec l'aggro des healers !), ammenez le pr&egrave;s de 2 m&eacute;t&eacute;ores et nourrissez le avec les deux m&eacute;t&eacute;ores.
					<br />
					<br />
					Apr&egrave;s environ 30sec les golems vont changer de couleur et si le Golem Vert est vivent utilisez le focus sur lui jusqu'&agrave; ce qu'il meurt. 
					<br />
					<br />
					Soyez sur que s'il y a un golem bleu apr&egrave;s l'&eacute;change le barde le focus pour pouvoir silence le <a href="http://xivdb.com/?skill/2037/Earthshock" target="_blank">http://xivdb.com/?skill/2037/Earthshock</a>.
					<br />
					<br />
					Si le Golem Rouge est vivant faite attention a proprement &eacute;viter <a href="http://xivdb.com/?skill/1683/Earthen-Heart" target="_blank">http://xivdb.com/?skill/1683/Earthen-Heart</a> .
					<br />
					<br />
					<br />
					<br />
					
					Nourrire un Golem avec un m&eacute;t&eacute;ore rouge lui donne un stack de 
					<a href="http://xivdb.com/?status/443/Damage-Up" target="_blank">http://xivdb.com/?status/443/Damage-Up</a>
					, et nourrire un golem avec un m&eacute;t&eacute;ore jaune lui donne un stack de 
					<a href="http://xivdb.com/?skill/402/Haste" target="_blank">http://xivdb.com/?skill/402/Haste</a>.
					<br />
					<br />
					
					Un Golem peut &ecirc;tre nourrit au maximum de 3 m&eacute;t&eacute;ores, s'il en mange 4 il se transforme en un Golem g&eacute;ant et c'est un wipe.
					<br />
					
					Soyez sur que les Golem restent loin des uns des autres parce que s'ils sont trop proches ils vont fusionner en un golem G&eacute;ant et c'est encore un wipe. 
					<br />
					
					Une fois les 3 golems morts un set de 6 marques de m&eacute;t&eacute;orites vont pop sur des joueurs al&eacute;atoirement. 
					Voil&agrave; comment les g&eacute;rer :
					<br />
					<br />
					<img src="http://i.imgur.com/fKmNXiT.jpg" class="img" />
					<br />
					Tout le monde se stack pr&egrave;s du A (l&agrave; o&ugrave; le golem avec la marque verte devrais &ecirc;tre plac&eacute;) et nous allons courrir autour de A &agrave; B &agrave; C, pr&eacute;venez de cela sur Mumble/Team Speack.
					<br />
					Sur un try parfait le joueur qui a la marque sur A va en 1, le joueur qui a la marque en B va en 2, le joueur qui a la marque en C va en 3. 
					Recommencez pour 4, 5 et 6.
					<br />
					<br />
					
					Pour comprendre exactement vous pouvez regarder &ccedil;a :
					<br />
					<br />
						<a href="https://www.youtube.com/watch?v=-YxGEuGOPpM#t=243" target="_blank">VIDEO ICI</a>
					<br />
					<br />
					
					Puisque nous ne devons pas d&eacute;pendre d'un try parfait et que les joueurs peuvent avoir un maximum de 3 marques de m&eacute;t&eacute;ores voici les pires sc&eacute;narios possibles:
					<br />
					<br />
					
					Un joueur peut avoir 1, 3, 5 ou 2, 4, 6 ou 1, 3, 6.
					<br />
					<br />
					Et ici vous pouvez voir comment g&eacute;rer cela pendant que vous courrez de A &agrave; B &agrave; C : 
					<br />
					<br />
					
					<img src="http://i.imgur.com/7mLoK4b.png" class="img" />
					
					<br />
					<br />
					
					Apr&egrave;s avoir plac&eacute; toutes les m&eacute;t&eacute;ores rouges et jaunes proprement, placez les 3 m&eacute;t&eacute;ores vertes encore une fois sur les marques vertes et faites avec comme avant. 
					<br />
					<br />
					
					Apr&egrave;s 65 secondes Nael va caster 
					<a href="http://xivdb.com/?skill/2024/Megaflare" target="_blank">http://xivdb.com/?skill/2024/Megaflare</a> 
					faisant environ 9k+ de dommage sur le raid donc soyez sur que tout le monde ai
					<a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> + <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> + <a href="http://xivdb.com/?skill/188/Sacred-Soil" target="_blank">http://xivdb.com/?skill/188/Sacred-Soil</a> + <a href="http://xivdb.com/?skill/804/Fey-Covenant" target="_blank">http://xivdb.com/?skill/804/Fey-Covenant</a> + <a href="http://xivdb.com/?skill/150035/Fey-Illumination" target="_blank">http://xivdb.com/?skill/150035/Fey-Illumination</a>
					
					<br />
					<br />
					
					<strong>Healing Tips:</strong>
						<br />
						<em>1er Golems:</em>
						<br />
							SCH: 
							<a href="http://xivdb.com/?skill/122/Cleric-Stance" target="_blank">http://xivdb.com/?skill/122/Cleric-Stance</a>
							sur <a href="http://xivdb.com/?skill/179/Shadow-Flare" target="_blank">http://xivdb.com/?skill/179/Shadow-Flare</a>
							avant que les golems n'apparaissent, puis 3 DoT sur les trois golems et utilisation de <a href="http://xivdb.com/?skill/167/Energy-Drain" target="_blank">http://xivdb.com/?skill/167/Energy-Drain</a>.
							<br />
							Puis <a href="http://xivdb.com/?skill/150/Swiftcast" target="_blank">http://xivdb.com/?skill/150/Swiftcast</a> &gt; Eos, 
							et <a href="http://xivdb.com/?skill/150008/Obey" target="_blank">http://xivdb.com/?skill/150008/Obey</a>.
							<br />
							Soignez le MT apr&egrave;s que les couleurs des golems aient chang&eacute;es.
							<br />
							<br />
							WHM: 
							<a href="http://xivdb.com/?status/159/Divine-Seal" target="_blank">http://xivdb.com/?status/159/Divine-Seal</a> + <a href="http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/133/Medica-II</a> 
							avant la premi&egrave;re marque, 
							<a href="http://xivdb.com/?skill/124/Medica" target="_blank">http://xivdb.com/?skill/124/Medica</a> 
							entre le 4&egrave;me et 5&egrave;me symbole de m&eacute;t&eacute;ore pour &ecirc;tre safe.
							<br />
							<br />
						<em>6 Meteors:</em>
						<br />
							SCH: 
							<a href="http://xivdb.com/?skill/1160/Rouse" target="_blank">http://xivdb.com/?skill/1160/Rouse</a> + <a href="http://xivdb.com/?skill/150033/Whispering-Dawn" target="_blank">http://xivdb.com/?skill/150033/Whispering-Dawn</a>, <a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a>
							avant que la premi&egrave;re marque n'apparaisse. 
							<br />
							<br />
							WHM: 
							<a href="http://xivdb.com/?skill/138/Divine-Seal" target="_blank">http://xivdb.com/?skill/138/Divine-Seal</a> + <a href="http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/133/Medica-II</a>
							avant la premi&egrave;re marque.
							<br />
							<br />
						<em>2&egrave;me golems:</em>
							<br />
							M&ecirc;me que les premiers golems sauf que le WHM cette fois DOIT utiliser
							<a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a>
							sur tout le monde le temps que le SCH solo heal le MT s'il y a besoin.
							<br />
							<br />
						<em>Megafission:</em>
							<br />
							SCH: 
							<a href="http://xivdb.com/?skill/805/Fey-Illumination" target="_blank">http://xivdb.com/?skill/805/Fey-Illumination</a>.
							Puis <a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a> &gt; <a href="http://xivdb.com/?skill/804/Fey-Covenant" target="_blank">http://xivdb.com/?skill/804/Fey-Covenant</a> &gt; <a href="http://xivdb.com/?skill/1160/Rouse" target="_blank">http://xivdb.com/?skill/1160/Rouse</a> &gt; <a href="http://xivdb.com/?skill/188/Sacred-Soil" target="_blank">http://xivdb.com/?skill/188/Sacred-Soil</a>.
							Il est temps d'utiliser <a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a> avec <a href="http://xivdb.com/?skill/2024/Megaflare" target="_blank">http://xivdb.com/?skill/2024/Megaflare</a>.
						<br />
							WHM: 
							Regardez la hate sur Nael et utilisez 
							<a href="http://xivdb.com/?skill/130/Shroud-of-Saints" target="_blank">http://xivdb.com/?skill/130/Shroud-of-Saints</a>
							si elle est haute.
							Mettez toute l'&eacute;quipe sous
							<a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a>,
							puis juste attendez pour utiliser en temps <a href="http://xivdb.com/?skill/131/Cure-III" target="_blank">http://xivdb.com/?skill/131/Cure-III</a>
							pour le <a href="http://xivdb.com/?skill/2024/Megaflare" target="_blank">http://xivdb.com/?skill/2024/Megaflare</a>. 
							<br />
							<br />
							
			<h1 style="text-align:center;">Phase 3</h1>
				<br />
				Après le <a href="http://xivdb.com/?skill/2024/Megaflare" target="_blank">http://xivdb.com/?skill/2024/Megaflare</a> 
				la phase 3 va commencer en ayant Nael utilisant
				<a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a> 
				sur le premier de la liste d'aggro, lequel devrait être le MT, donc restez loin du MT après le changement de phase.
				<br />
				<br />
				
				<strong>Heavens Fall</strong>
					<br />
					<a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a> 
					-&gt; It drops a HUGE Allagan Tower in the middle of the Arena that knock-backs everyone out dealing damage proportionally to where your standing, if you are in the middle it will insta kill you. Since you cannot touch the wall of the arena make sure that the knockback wont kill you, by knocking you back out of the arena limits.  <a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a> will also deal a Yellow Pulsing Move in a special Pattern after the knockback, if you want to see how many patterns and how to deal with it, check it <a href="https://www.youtube.com/watch?v=-YxGEuGOPpM#t=367" target="_blank">HERE</a><br /><br /><strong>The Ghost of Meracydia</strong><br /><a href="http://xivdb.com/?monster/2629/the-ghost-of-Meracydia" target="_blank">http://xivdb.com/?monster/2629/the-ghost-of-Meracydia</a> will spawn after the First <a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a> and they Hit really really HARD, casting <a href="http://xivdb.com/?skill/2194/Tail-Whip" target="_blank">http://xivdb.com/?skill/2194/Tail-Whip</a> -&gt; which deals around 5k to 6k damage, Auto-Attacks that deal around 2k to 3k damage, and they also spit a Fire aoe on the floor that ticks for around 1.5k damage, so make sure to Kill it as fast as possible. Tank it near boss for cleave damage (Bane), and do not use any burst skills until 50% health. Once <a href="http://xivdb.com/?skill/2041/Binding-Chain" target="_blank">http://xivdb.com/?skill/2041/Binding-Chain</a> starts, it will stop doing any damage/skills until <a href="http://xivdb.com/?skill/2041/Binding-Chain" target="_blank">http://xivdb.com/?skill/2041/Binding-Chain</a> finishes, while doing this he also applies <a href="http://xivdb.com/?status/463/Garrote" target="_blank">http://xivdb.com/?status/463/Garrote</a> debuffs on chained players, therefore you make sure to pop a CD or two and burst him down.<br />After it dies it will explode in a huge aoe, so stay out of it. Nael Deus Darnus also casts <a href="http://xivdb.com/?status/462/Garrote-Twist" target="_blank">http://xivdb.com/?status/462/Garrote-Twist</a> on a random player. <br />3 White circles will appear under the <a href="http://xivdb.com/?monster/2629/the-ghost-of-Meracydia" target="_blank">http://xivdb.com/?monster/2629/the-ghost-of-Meracydia</a> corpse, you must stand in one to remove <a href="http://xivdb.com/?status/463/Garrote" target="_blank">http://xivdb.com/?status/463/Garrote</a> &amp; <a href="http://xivdb.com/?status/462/Garrote-Twist" target="_blank">http://xivdb.com/?status/462/Garrote-Twist</a>. After stepping in, in once of these white circles they will disapier after being used to remove Garrote Debuffs. Make sure you are fast Dispelling your <a href="http://xivdb.com/?status/463/Garrote" target="_blank">http://xivdb.com/?status/463/Garrote</a> + <a href="http://xivdb.com/?status/462/Garrote-Twist" target="_blank">http://xivdb.com/?status/462/Garrote-Twist</a>, since the white circles will only stay up for a small period of time.<br /><br /><strong>Garrote</strong><br /><a href="http://xivdb.com/?status/463/Garrote" target="_blank">http://xivdb.com/?status/463/Garrote</a><br />Garrote does no damage, but its a stacking debuff that if it reaches 9 stacks it will one shot you<br /><br /><strong>Garrote Twist</strong><br /><a href="http://xivdb.com/?status/462/Garrote-Twist" target="_blank">http://xivdb.com/?status/462/Garrote-Twist</a><br />Garrote Twist last for around 60 seconds and it applies <a href="http://xivdb.com/?status/463/Garrote" target="_blank">http://xivdb.com/?status/463/Garrote</a> debuffs on player that has it<br /><br />
					<strong>Super Nova</strong><br /><a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a><br />It shoots 2 Black Holes to random players besides the MT, and it deal negligible damage when casted, but if someone steps in a Black Hole after being casted, it will deal a lot of damage, and it will apply a slowing debuff on whoever steps on it. TLDR: DO NOT STEP ON IT, AND MOVE OUT OF IT<br /><br /><strong>Healing Tips:</strong><br />SCH: Can open with <a href="http://xivdb.com/?skill/122/Cleric-Stance" target="_blank">http://xivdb.com/?skill/122/Cleric-Stance</a> on, x-pot + 5 dots, then MT healing. Safe to switch to clerics and apply 4 dots AFTER the double claw and with <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> up. <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> the offtank before drake pops. Help aoe heal occasionally.<br />WHM: Time <a href="http://xivdb.com/?skill/135/Cure-II" target="_blank">http://xivdb.com/?skill/135/Cure-II</a> on <a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a>, <a href="http://xivdb.com/?skill/138/Divine-Seal+http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/138/Divine-Seal+http://xivdb.com/?skill/133/Medica-II</a> <a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a>, if add will spawn after <a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a> <a href="http://xivdb.com/?skill/120/Cure" target="_blank">http://xivdb.com/?skill/120/Cure</a> tank once, <a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> OT, <a href="http://xivdb.com/?skill/137/Regen" target="_blank">http://xivdb.com/?skill/137/Regen</a> MT, <a href="http://xivdb.com/?skill/137/Regen" target="_blank">http://xivdb.com/?skill/137/Regen</a> OT then heal OT through add<br /><br /><strong>NOTE:</strong><br />So that the Phase transition to Phase 4 happens smoothly and without a hitch, you need to ensure that you have enough dps to Push the boss to @47%, while melee LB3 the 2nd <a href="http://xivdb.com/?monster/2629/the-ghost-of-Meracydia" target="_blank">http://xivdb.com/?monster/2629/the-ghost-of-Meracydia</a>. You do NOT want a 3rd <a href="http://xivdb.com/?skill/2107/Heavensfall" target="_blank">http://xivdb.com/?skill/2107/Heavensfall</a> to happen on the Phase Transition.<br /><br />
				
			<h1 style="text-align:center;">Phase 4</h1>
				<br />Once <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a> is casted by Nael Deus Darnus and it symbolizes the start of Phase 4.<br /><br />Nael will lose several abilities from Phase 1 but to compensate he will be casting the following new abilities:<br /><br /><strong>Bahamut's Claw</strong><br /><a href="http://xivdb.com/?skill/2161/Bahamut%27s-Claw" target="_blank">http://xivdb.com/?skill/2161/Bahamut%27s-Claw</a><br />It will hit the Tank 5 times for Massive damage, therefore proper defensive cooldowns are needed, or you can provoke in between the 5 hits to split the damage between both Tanks.<br /><br /><strong>Bahamut's Favor</strong><br /><a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a><br />Casts a buff of <a href="http://xivdb.com/?status/443/Damage-Up" target="_blank">http://xivdb.com/?status/443/Damage-Up</a> on himself, increasing his damage, and by proxy its a kind of soft enrage. More <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a> Phases equals more damage dealt by Nael Deus Darnus. <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a> also spawns *randomly* 3 dragons on the outside of the arena called Fireclaw, Iceclaw and Thunderclaw. These 3 dragons cast the following skills:<br /><br /><strong>Iceball</strong><br /><a href="http://xivdb.com/?skill/2044/Iceball" target="_blank">http://xivdb.com/?skill/2044/Iceball</a><br />is casted by Iceclaw Dragon every 2 seconds @ a random party member, deals around 200 damage and applies the following debuff <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> lowering your resistance to further <a href="http://xivdb.com/?skill/2044/Iceball" target="_blank">http://xivdb.com/?skill/2044/Iceball</a>, therefore instead of taking 200 damage with <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> debuff on you will will take around 8000 damage.<br /><a href="http://xivdb.com/?skill/2044/Iceball" target="_blank">http://xivdb.com/?skill/2044/Iceball</a> is never casted twice on the same player, and it goes through all your party before casting it on you again.<br />You have around 16 seconds to deal with your <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> debuff, and the best way to get rid of your debuff is to get hit by a <a href="http://xivdb.com/?skill/2130/Fireball" target="_blank">http://xivdb.com/?skill/2130/Fireball</a><br /><br /><strong>Fireball</strong><br /><a href="http://xivdb.com/?skill/2130/Fireball" target="_blank">http://xivdb.com/?skill/2130/Fireball</a><br />Fireclaw will place a line on a random player signalizing that he will be casting <a href="http://xivdb.com/?skill/2130/Fireball" target="_blank">http://xivdb.com/?skill/2130/Fireball</a> on that player within a few seconds blasting a small fire AOE spell dealing around 1000 damage to that player &amp; everyone in a 2-3 yalm radius, applying <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> debuff, which works exactly like <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a>. <br /><br />IF you have <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> you need <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> to remove <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a>, and if you have <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> you need <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> to remove <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> debuff.<br /><br /><strong>Thunderstruck</strong><br /><a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a><br />Is casted every 10 seconds and after 5 seconds following its application it will explode dealing around 4000+ damage to anyone near you, and in addition it applies a <a href="http://xivdb.com/?skill/1916/Paralyze-III" target="_blank">http://xivdb.com/?skill/1916/Paralyze-III</a> which is undispellable. The damage and the Paralyze do not affect the player afflicted with <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a>, therefore that play only need to make sure to be away from his party members before he explodes.<br /><br />Timings:<br /><pre class="prettyprint linenums">Fire OUT
Thunder
Dynamo lunaire (Lunar Dynamo)
Fire IN
Thunder
Fire OUT
Thunder
Chariot
Super Nova
Thermionic
Fire IN
Thunder
</pre>
<br />Due to <a href="http://xivdb.com/?skill/2044/Iceball" target="_blank">http://xivdb.com/?skill/2044/Iceball</a> / <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> RNG, you may need to stand together with the player that moves out of the stacking party on Fire OUT, so that you can avoid getting a 2nd stack of <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a>.<br /><br />You can see <a href="http://www.youtube.com/watch?feature=player_detailpage&v=AJoZ0tk70rk#t=469" target="_blank">HERE</a> exactly how we deal with <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a>, <a href="http://xivdb.com/?status/465/Icebitten" target="_blank">http://xivdb.com/?status/465/Icebitten</a> &amp; <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> debuffs.<br /><br />You will notice that <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a> will be casted while <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> is happening, therefore the best way to avoide the player hitting the whole party, is by having the person afflicted with <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a> to stay behind the boss, and everyone else stacks in the front together with the MT, by Proxy avoiding both <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> &amp; <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a> Combo.<br /><br /><strong>Iron Chariot</strong><br /><a href="http://xivdb.com/?skill/2009/Iron-Chariot" target="_blank">http://xivdb.com/?skill/2009/Iron-Chariot</a><br />Deal with this mechanic like you did on Phase 1 and you should be fine<br /><br /><strong>Super Nova</strong><br /><a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a><br />After dodging <a href="http://xivdb.com/?skill/2009/Iron-Chariot" target="_blank">http://xivdb.com/?skill/2009/Iron-Chariot</a>, make sure nobody, is near the assigned spot to stack for <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>. <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> do exactly the same thing has in Phase 3 but you just need to make sure that the stacking spot for <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a> is free of <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a>.<br />Best way to deal with this is to wait for for <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> one and two to be casted, away from the stacking spot, and then move in before the 3rd is casted, ensuring a free <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> stacking spot.<br /><br /><strong>Rayon thermo&iuml;onique  (Thermionic Beam)</strong><br /><a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a><br />Does exactly the same like on Phase 1, but with the only difference that the RED Mark above your head will disappear 1 sec faster then what your used to on Phase 1. You deal with this by waiting for <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> number 1 and number 2 and then run to stack on a predefined spot while <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> after Nova 2 is casted, so that the whole raid can stack properly <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> free.<br /><br />After <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>, <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a> will be casted, and everyone besides the <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a> afflicted player stays stacked, since its a fire IN Phase. If you got <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a> make sure to run out of the stack, so that you can avoid being one shotted.<br /><br /><strong>Divebomb</strong><br /><em>&quot;The modified divebomb guide below was originally written by Ticdup of Encore, and the picture bellow was updated from the Original picture made by Hax Etc of Encore&quot;</em><br /><br /><img src="http://i.imgur.com/bQGIkiP.png" class="bbcode" /><br /><br />North is indicated by 'N' on the chart.<br /><br />The formations are fixed, but which dragons are where will vary. More importantly since there are only three fixed formations, the two dragons who dive first is known and makes placing 1st and 2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> easier.<br /><br />The green triangles are the two dragons which dive first, and the yellow will be the second diver. The Red circle is where the first <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> should be placed. <br /><br /><a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> consists of two phases: The first is when two of the three dragons flying outside of the arena dive together toward the <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> marker, and the second phase features a single dive by the remaining dragon toward the second <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> marker. The goal is to reduce the amount of arena that is covered by the dives for each phase (ideally keeping the dives away from the center and kept on the edges of the arena). Furthermore, odd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> will have a <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a> after each phase (stream after the double dragon drive and stream again after the single dragon dive), and even <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> will only have a <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> with the second phase's solo dragon dive.<br /><br />Leading up to <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> is the pattern of a three <a href="http://xivdb.com/?skill/2016/Super-Nova" target="_blank">http://xivdb.com/?skill/2016/Super-Nova</a> followed by a <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a> with a <a href="http://xivdb.com/?status/464/Firescorched" target="_blank">http://xivdb.com/?status/464/Firescorched</a>, a <a href="http://xivdb.com/?status/466/Thunderstruck" target="_blank">http://xivdb.com/?status/466/Thunderstruck</a>, then a <a href="http://xivdb.com/?skill/2161/Bahamut%27s-Claw" target="_blank">http://xivdb.com/?skill/2161/Bahamut%27s-Claw</a>. After claw, the  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> marker will appear. Knowing this pattern, and prior to the  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> marker appearing, have someone in the party scan the arena for the dragon formation and place a waypoint corresponding to the Red circle on the chart. After claw finishes, the person with the  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> should head toward the marked position while the rest of the party goes away from the  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> location. Rayon m&eacute;t&eacute;ore  (Meteor Stream) (On odd divebombs) will rain upon on the party during the two dragon dives, so spread out to prevent people from taking multiple hits from it.<br /><br />A second <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> indicator will appear. Similar to the first  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> phase, this needs to be placed in such a way to have the dragons dive cover the least amount of the arena. The 'good enough' simple algorithm for this is to have the second  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> person go NW; unless there is a dragon there, then go North instead. After the second  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> phase, for odd  <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> you will have another <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a> (so stay spread out) or you will have a <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> for even <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a>.<br /><br />For the second phase of the even <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a>, the <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> will have to be planned for. Since <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> follows a jump, you should position the group centrally such that person with the 2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> indicator can sprint to join the group (I believe sprint is a must) and dodge both the single dragon dive and <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a>. Another option would be to position the group as far as possible from the person with the 2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a>, which would leave the 2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> person a small crevice of safety between the dragons dive and the range of <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> (which, if positioned correctly, will not cover the entire arena).<br /><br />Divebombs Timings:<br /><br />1st <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a><br />2 dragon dive<br /><a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a><br />1 dragon dive<br /><a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a><br /><br />2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a>:
<br /><a href="http://xivdb.com/?skill/2009/Iron-Chariot" target="_blank">http://xivdb.com/?skill/2009/Iron-Chariot</a><br />2 dragon dive<br />Boss jumps<br />1 dragon dive &amp; <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> (Make sure that the person with the 2nd Divebombs mark, pops sprint after the divebomb mark disappears, so that he can position himself for <a href="http://xivdb.com/?skill/2011/Lunar-Dynamo" target="_blank">http://xivdb.com/?skill/2011/Lunar-Dynamo</a> without getting hit.)<br /><br />3rd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a>:<br />2 dragon dive<br /><a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a><br />1 dragon dive<br /><a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a><br /><br />Handle both <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a> &amp; <a href="http://xivdb.com/?skill/2012/Dalamud-Dive" target="_blank">http://xivdb.com/?skill/2012/Dalamud-Dive</a> the same way you did it on Phase 1<br /><br /><strong>Healing Tips:</strong><br /><a href="http://xivdb.com/?skill/169/Virus" target="_blank">http://xivdb.com/?skill/169/Virus</a> always right after <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a> cast. 1 player is enough for all of them.<br /><br />SCH: spam <a href="http://xivdb.com/?skill/185/Adloquium" target="_blank">http://xivdb.com/?skill/185/Adloquium</a> &amp; <a href="http://xivdb.com/?skill/189/Lustrate" target="_blank">http://xivdb.com/?skill/189/Lustrate</a> as needed on mt during claws. Try to land a <a href="http://xivdb.com/?skill/186/Succor" target="_blank">http://xivdb.com/?skill/186/Succor</a> on group before 3rd fire, so it will last until <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>. Put <a href="http://xivdb.com/?skill/188/Sacred-Soil" target="_blank">http://xivdb.com/?skill/188/Sacred-Soil</a> and pet in the middle of the area for the <a href="http://xivdb.com/?skill/2015/Thermionic-Beam" target="_blank">http://xivdb.com/?skill/2015/Thermionic-Beam</a>. Safe to DPS immediately after 2nd <a href="http://xivdb.com/?skill/1456/Divebomb" target="_blank">http://xivdb.com/?skill/1456/Divebomb</a> goes off for about 10-15 seconds before next <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a>.<br />WHM: <a href="http://xivdb.com/?skill/129/Stoneskin" target="_blank">http://xivdb.com/?skill/129/Stoneskin</a> MT or both tanks during <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a>. Spam <a href="http://xivdb.com/?skill/135/Cure-II" target="_blank">http://xivdb.com/?skill/135/Cure-II</a> &amp; <a href="http://xivdb.com/?skill/140/Benediction" target="_blank">http://xivdb.com/?skill/140/Benediction</a> on MT as needed during claws, mp should not be an issue so it's nice to have <a href="http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/133/Medica-II</a> ticking almost always. For <a href="http://xivdb.com/?skill/2014/Meteor-Stream" target="_blank">http://xivdb.com/?skill/2014/Meteor-Stream</a> time <a href="http://xivdb.com/?skill/138/Divine-Seal" target="_blank">http://xivdb.com/?skill/138/Divine-Seal</a> -&gt; <a href="http://xivdb.com/?skill/133/Medica-II" target="_blank">http://xivdb.com/?skill/133/Medica-II</a> -&gt; <a href="http://xivdb.com/?skill/124/Medica" target="_blank">http://xivdb.com/?skill/124/Medica</a> -&gt; <a href="http://xivdb.com/?skill/124/Medica" target="_blank">http://xivdb.com/?skill/124/Medica</a> to max hp healed between the two dives.<br /><br />Once your through this phase Nael Deus Darnus will cast again <a href="http://xivdb.com/?skill/2022/Bahamut%27s-Favor" target="_blank">http://xivdb.com/?skill/2022/Bahamut%27s-Favor</a>, and its a repeat of Phase 4 until the boss is dead. If your dps is too low or too many players died during this fight, you will reach the Hard Enrage Timer and Nael Deus Darnus will cast a 30k damage <a href="http://xivdb.com/?skill/2024/Megaflare" target="_blank">http://xivdb.com/?skill/2024/Megaflare</a>, GG.<br /><br />I wish everyone good luck and i hope this guide will help you out in getting T9 down.</div>

</div>

	</div>
	<?php 
		include'footer.html';
	?>
	
</body>
</html>