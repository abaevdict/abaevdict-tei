<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:function name="abv:wordElement">
        <xsl:param name="context"/>
        <xsl:sequence select="$context/*[name() = 'w' or name() = 'm' or name() = 'c' or name() = 'cl' or name() = 'phr' or name() = 's']"/>
    </xsl:function>
    
    <xsl:function name="abv:isCyrillic">
        <xsl:param name="context"/>
        <!--<xsl:sequence select="$context/@xml:lang = 'ru' or starts-with($context/@xml:lang, 'ru-') or $context/@extralang = 'ru' or contains($context/@extralang,' ru') or contains($context/@extralang,'ru ') or 
$context/@xml:lang = 'bg' or starts-with($context/@xml:lang, 'bg-') or $context/@extralang = 'bg' or contains($context/@extralang,' bg') or contains($context/@extralang,'bg ') or 
$context/@xml:lang = 'uk' or starts-with($context/@xml:lang, 'uk-') or $context/@extralang = 'uk' or contains($context/@extralang,' uk') or contains($context/@extralang,'uk ') or 
$context/@xml:lang = 'be' or starts-with($context/@xml:lang, 'be-') or $context/@extralang = 'be' or contains($context/@extralang,' be') or contains($context/@extralang,'be ') or 
$context/@xml:lang = 'orv' or starts-with($context/@xml:lang, 'orv-') or $context/@extralang = 'orv' or contains($context/@extralang,' orv') or contains($context/@extralang,'orv ') or
$context/@xml:lang = 'cu' or starts-with($context/@xml:lang, 'cu-') or $context/@extralang = 'cu' or contains($context/@extralang,' cu') or contains($context/@extralang,'cu ') or
$context/@xml:lang = 'sla' or starts-with($context/@xml:lang, 'sla-') or $context/@extralang = 'sla' or contains($context/@extralang,' sla') or contains($context/@extralang,'orv ')"/>-->
        <xsl:sequence select="$context/@xml:lang = 'cu' or starts-with($context/@xml:lang, 'cu-') or $context/@extralang = 'cu' or contains($context/@extralang,' cu') or contains($context/@extralang,'cu ') or
$context/@xml:lang = 'sla' or starts-with($context/@xml:lang, 'sla-') or $context/@extralang = 'sla' or contains($context/@extralang,' sla') or contains($context/@extralang,'sla ') or
$context/@xml:lang = 'sr' or starts-with($context/@xml:lang, 'sr-') or $context/@extralang = 'sr' or contains($context/@extralang,' sr') or contains($context/@extralang,'sr ') or
$context/@xml:lang = 'kv' or starts-with($context/@xml:lang, 'kv-') or $context/@extralang = 'kv' or contains($context/@extralang,' kv') or contains($context/@extralang,'kv ')"/>
    </xsl:function>
    
    <xsl:template match="//tei:etym[@xml:lang = 'ru']//tei:mentioned[abv:wordElement(.) and abv:isCyrillic(.)][not(@corresp)]">
        <xsl:call-template name="findCorresp">
            <xsl:with-param name="lang1">ru</xsl:with-param>
            <xsl:with-param name="lang2">en</xsl:with-param>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="//tei:etym[@xml:lang = 'en']//tei:mentioned[abv:wordElement(.) and abv:isCyrillic(.)][not(@corresp)]">
        <xsl:call-template name="findCorresp">
            <xsl:with-param name="lang1">en</xsl:with-param>
            <xsl:with-param name="lang2">ru</xsl:with-param>
        </xsl:call-template>
    </xsl:template>    
    
    <xsl:template name="findCorresp">
        <xsl:param name="lang1"/>
        <xsl:param name="lang2"/>
        
        <xsl:variable name="this_lang" select="@xml:lang"/>
        <xsl:variable name="num">
            <xsl:number
                count="//tei:etym[@xml:lang = $lang1]//tei:mentioned[abv:wordElement(.) and @xml:lang = $this_lang and abv:isCyrillic(.)]"
            />
        </xsl:variable>
        
        <xsl:message>
            <xsl:value-of select="abv:wordElement(.)/text()"/>
            <xsl:value-of select="$num"/>
        </xsl:message>
        <xsl:variable name="reference"
            select="//tei:etym[@xml:lang = $lang2]//tei:mentioned[abv:wordElement(.) and @xml:lang = $this_lang and abv:isCyrillic(.)]/@xml:id"/>
        <xsl:copy>
            <xsl:if test="$reference">
                <xsl:attribute name="corresp">#<xsl:value-of select="$reference[number($num)]"
                    /></xsl:attribute>
            </xsl:if>
            <xsl:apply-templates select="node() | @*"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>