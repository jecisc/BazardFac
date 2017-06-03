<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="laFontaine">
		<xsl:apply-templates select="fables/fable"/>
		<xsl:apply-templates select="animaux/animal"/>
		<xsl:apply-templates select="fables/fable/ref"/>
	</xsl:template>
	<xsl:template match="fable">
	 INSERT INTO fable VALUES (<xsl:value-of select="@livre" />, <xsl:value-of select="@numero"/>, <xsl:value-of select="@titre" />);
</xsl:template>
	<xsl:template match="animal">
	INSERT INTO animalVALUES (<xsl:value-of select="@anid" />, <xsl:value-of select="@nom"/>);
</xsl:template>
	<xsl:template match="ref">
	INSERT INTO apparait VALUES (<xsl:value-of select="@aniref" />, <xsl:value-of select="../@livre"/>, <xsl:value-of select="../@numero" />);
</xsl:template>
</xsl:stylesheet>
