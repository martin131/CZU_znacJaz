<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
		[ 
		<xsl:for-each select="moviesInPocket/movies/movie[streamAvailable = 'true']"> 
			<xsl:sort select="name" order="descending"/>
			{
			"Jméno": "<xsl:value-of select="name"/>",
			"Rok": "<xsl:value-of select="year"/>",
			"Věkový limit": "<xsl:value-of select="ageLimit"/>"
			}<xsl:if test="position() != last()">,</xsl:if>
		</xsl:for-each>
		] 
	</xsl:template>
</xsl:stylesheet>