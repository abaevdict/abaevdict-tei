<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    xmlns:saxon="http://saxon.sf.net/"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:param name="lookup-file"/>
    <xsl:param name="lang"/>
    
    <xsl:include href="generate-lookup.xsl"/>
    
    <xsl:template match="/">
        <xsl:call-template name="generate-lookup"/>
        
    </xsl:template>
</xsl:stylesheet>