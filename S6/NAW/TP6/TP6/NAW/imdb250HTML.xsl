<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="imdb250">
		<html>
			<head>
				<title>IMDB250 </title>
			</head>
			<body><table border = "1">
				<tbody>
					<tr>
						<th>Titre</th>
						<th>Année</th>
						<th>Note</th>
						<th>Votant</th>
					</tr>
					<xsl:apply-templates select="film">
					</xsl:apply-templates>
				</tbody>
			</table></body>
		</html>
	</xsl:template>
	<xsl:template match="film">
	<tr>
		<td><xsl:value-of select="titre"/></td>
		<td><xsl:value-of select="annee"/></td>
		<td><xsl:value-of select="note"/></td>
		<td><xsl:value-of select="votants"/></td>
	</tr>
	</xsl:template>
</xsl:stylesheet>
