<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
    <xsl:output method="text"/>
    
    <xsl:template match="tei:teiHeader"/>
    
    <xsl:template match="tei:text">
        <xsl:text>\begin{document}</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>\end{document}</xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:entry">
        <xsl:apply-templates/>
        <xsl:text>
            
            
        </xsl:text>
    </xsl:template>
    
    <xsl:template match="tei:form">
        <xsl:text>\textbf{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>