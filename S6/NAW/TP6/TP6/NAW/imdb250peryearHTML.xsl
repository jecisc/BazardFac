<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="ans">
		<html>
			<head>
				<title>IMDB250 </title>
			</head>
			<body>
				<xsl:apply-templates select="annee">
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="annee">
	<xsl:variable name="anneeSelect"><xsl:value-of select="text()"/></xsl:variable>
	<h1><xsl:value-of select="$anneeSelect"/></h1>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
			<tbody>
				<tr>
					<td><xsl:value-of select="document('imdbXML.xml')/imdb250/film[annee=$anneeSelect]/titre"/></td>
					<td><xsl:value-of select="document('imdbXML.xml')/imdb250/film[annee=$anneeSelect]/note"/></td>
					<td><xsl:value-of select="document('imdbXML.xml')/imdb250/film[annee=$anneeSelect]/votants"/></td>
				</tr>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>
