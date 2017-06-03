<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"></xsl:output>
<xsl:template match="laFontaine">
<laFontaine>
<fables><xsl:apply-templates select="fables/fable"></xsl:apply-templates></fables>
<animaux><xsl:apply-templates select="animaux/animal"></xsl:apply-templates></animaux>
</laFontaine>
</xsl:template>
<xsl:template match="fable">
<fable>
<xsl:attribute name="livre"><xsl:value-of select="@livre"></xsl:value-of></xsl:attribute>
<xsl:attribute name="numero"><xsl:value-of select="@numero"></xsl:value-of></xsl:attribute>
<xsl:attribute name="titre"><xsl:value-of select="@titre"></xsl:value-of></xsl:attribute>
</fable>
</xsl:template>
<xsl:template match="animal">
<animal>
<xsl:attribute name="anid"><xsl:value-of select="@anid"></xsl:value-of></xsl:attribute>
<xsl:attribute name="nom"><xsl:value-of select="@nom"></xsl:value-of></xsl:attribute>
<xsl:variable name="idA" select="@anid"></xsl:variable>
<xsl:for-each select="//fable[ref/@aniref=$idA]">
<ref>
<xsl:attribute name="livre"><xsl:value-of select="@livre"></xsl:value-of></xsl:attribute>
<xsl:attribute name="numero"><xsl:value-of select="@numero"></xsl:value-of></xsl:attribute>
</ref>
</xsl:for-each>
</animal>
</xsl:template>
</xsl:stylesheet>