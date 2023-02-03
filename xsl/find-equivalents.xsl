<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    <!-- This template matches finds a <mentioned> node in the English etymology that matches the current <mentioned> node in the Russian etymology in its language and content 
        and references.the former in the latter's @corresp attribute. 
        
        In the (rare) event that more than one such node is found, they are -->
    <xsl:template match="//tei:etym[@xml:lang = 'ru']//tei:mentioned[not(@corresp)]">
        <xsl:call-template name="findCorresp">
            <xsl:with-param name="lang1">ru</xsl:with-param>
            <xsl:with-param name="lang2">en</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="//tei:etym[@xml:lang = 'en']//tei:mentioned[not(@corresp)]">
        <xsl:call-template name="findCorresp">
            <xsl:with-param name="lang1">en</xsl:with-param>
            <xsl:with-param name="lang2">ru</xsl:with-param>
        </xsl:call-template>
    </xsl:template>    
    
    <xsl:template name="findCorresp">
        <xsl:param name="lang1"/>
        <xsl:param name="lang2"/>
        
        <xsl:variable name="this_lang" select="@xml:lang"/>
        <!--        <xsl:variable name="cond">name() = 'w' or name() = 'm' or name() = 'c' or name() = 'cl' or name() = 'phr' or name() = 's'</xsl:variable>-->
        <xsl:variable name="this_w"
            select="*[name() = 'w' or name() = 'm' or name() = 'c' or name() = 'cl' or name() = 'phr' or name() = 's']"/>
        <!--        <xsl:message>-->
        <xsl:variable name="num">
            <xsl:number
                count="//tei:etym[@xml:lang = $lang1]//tei:mentioned[@xml:lang = $this_lang and *[name() = 'w' or name() = 'm' or name() = 'c' or name() = 'cl' or name() = 'phr' or name() = 's'] = $this_w]"
            />
        </xsl:variable>
        <!--</xsl:message>-->
        <!--        <xsl:message>
            <xsl:value-of select="$this_w"/>
        </xsl:message>-->
        <xsl:variable name="reference"
            select="//tei:etym[@xml:lang = $lang2]//tei:mentioned[*[name() = 'w' or name() = 'm' or name() = 'c' or name() = 'cl' or name() = 'phr' or name() = 's'] = $this_w and @xml:lang = $this_lang]/@xml:id"/>
        <xsl:copy>
            <xsl:if test="$reference">
                <xsl:attribute name="corresp">#<xsl:value-of select="$reference[number($num)]"
                    /></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>