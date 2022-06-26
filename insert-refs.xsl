<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:variable name="lookup" select="document('lookup-xr.xml')"/>
    
<!--    <xsl:variable name="random-doc" select="document('entries/abaev_lami.xml')"/>-->
    
    <xsl:key name="xr" match="table/entry" use="@xml:id"/>
  
    <!-- XSLT Template to copy anything -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:ref[@type = 'xr'][not(node())]">
        <xsl:variable name="target" select="@target"/>
<!--        <xsl:message><xsl:value-of select="$lookup"/></xsl:message>-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <tei:w><xsl:value-of select="$lookup//table/entry[@xml:id = substring($target, 2)]"/></tei:w>
        </xsl:copy>
<!--        <xsl:message><xsl:value-of select="$random-doc/key('xr','entry_lami')"/></xsl:message>-->
    </xsl:template>
</xsl:stylesheet>