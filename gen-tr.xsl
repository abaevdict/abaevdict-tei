<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
    <!-- XSLT Template to copy anything, priority="-1" -->
    <xsl:template match="@* | node()" priority="-1">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="@* | node()" priority="-1" mode="other">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>    
    
<!--    <xsl:template match="tei:etym//tei:note" priority="1">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>-->
    
    <xsl:template match="tei:text//tei:note[@type != 'bibl' and @type != 'internal' and not(ancestor::tei:etym)]" priority="2">
        <xsl:copy>
            <xsl:attribute name="xml:lang">ru</xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
        <xsl:copy>
            <xsl:attribute name="xml:lang">en</xsl:attribute>
            <xsl:apply-templates select="@* | node()" mode="other"/>
        </xsl:copy>        
    </xsl:template>
    
    <xsl:template match="tei:text//(abv:tr | tei:etym | tei:def | tei:bibl[@xml:lang] | tei:biblScope[@xml:lang])">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="other"/>
        </xsl:copy>               
    </xsl:template>
    
    <xsl:template match="@xml:lang" mode="other">
        <xsl:attribute name="xml:lang">en</xsl:attribute>
    </xsl:template>
</xsl:stylesheet>