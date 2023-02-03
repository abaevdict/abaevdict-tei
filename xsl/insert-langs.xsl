<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="3.0">
    <xsl:param name="name-lang"/>
    
    <xsl:mode on-no-match="shallow-copy" />    
    
    <xsl:import href="lang-names.xsl"/>
    
    <xsl:template match="tei:lang[not(text())]">
        <xsl:variable name="lang-code" select="ancestor-or-self::*[attribute::xml:lang][1]/@xml:lang"/>
        <xsl:copy>
            <xsl:call-template name="lang-text">
                <xsl:with-param name="lang-code" select="$lang-code"/>
                <xsl:with-param name="name-lang" select="$name-lang"/>
            </xsl:call-template>
            <xsl:if test="parent::*/@extralang">
                <xsl:for-each select="tokenize(parent::*/@extralang, ' ')">
                    <xsl:text>, </xsl:text>
                    <xsl:call-template name="lang-text">
                        <xsl:with-param name="lang-code" select="."/>
                        <xsl:with-param name="name-lang" select="$name-lang"/>
                    </xsl:call-template>
                </xsl:for-each>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>