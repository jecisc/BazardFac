<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="noeuds">
		<html>
			<head>
				<title>El Queneau</title>
			</head>
			<body>
				<xsl:apply-templates select="noeud"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="noeud">
		<p>
			<xsl:attribute name="id"><xsl:value-of select="@numero"/></xsl:attribute>
			<xsl:value-of select="texte"/>
		</p>
		<xsl:apply-templates select="aiguillage"/>
	</xsl:template>
	<xsl:template match="aiguillage">
		<xsl:for-each select="voie">
			<a>
				<xsl:attribute name="href">#<xsl:value-of select="cible"></xsl:value-of></xsl:attribute>
				<xsl:value-of select="condition"/>
			</a>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
