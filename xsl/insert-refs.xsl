<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:param name="lookup-file"/>
    <xsl:param name="biblio-file"/>
    <xsl:param name="bib-lang"/>
    
    <xsl:variable name="lookup" select="document($lookup-file)"/>
    <xsl:variable name="biblio" select="document($biblio-file)"/>
    
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
        <xsl:variable name="entry" select="$lookup//table/entry[@xml:id = substring($target, 2)]"/>
        <xsl:if test="not($entry)"><xsl:message>Cross-referenced entry <xsl:value-of select="$entry/@xml:id"/> not found! Lemma <xsl:value-of select="ancestor::entry/@xml:id"/></xsl:message></xsl:if>
<!--        <xsl:message><xsl:value-of select="$lookup"/></xsl:message>-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:if test="$entry/@n"><xsl:value-of xmlns:my="http://example.com/my" select="my:getN($entry/@n)"/></xsl:if><tei:w><xsl:value-of select="$entry"/></tei:w>
        </xsl:copy>
<!--        <xsl:message><xsl:value-of select="$random-doc/key('xr','entry_lami')"/></xsl:message>-->
    </xsl:template>
    
    <xsl:template match="tei:ref[@type = 'bibl'][not(node())]">
        <xsl:variable name="target" select="@target"/>
        <xsl:variable name="bibl" select="$biblio/tei:TEI/tei:text/tei:body/tei:div/tei:listBibl/tei:bibl[@xml:id = substring($target, 2)]"/>
        <xsl:if test="not($bibl)"><xsl:message>Cross-referenced bibitem <xsl:value-of select="$bibl/@xml:id"/> not found! Lemma <xsl:value-of select="ancestor::entry/@xml:id"/></xsl:message></xsl:if>
<!--        <xsl:message><xsl:value-of select="$lookup"/></xsl:message>-->
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:choose>
                <xsl:when test="$bibl/tei:abbr[not(@xml:lang)]">
                    <xsl:copy-of select="$bibl/tei:abbr"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:copy-of select="$bibl/tei:abbr[@xml:lang = $bib-lang]"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:copy>
<!--        <xsl:message><xsl:value-of select="$random-doc/key('xr','entry_lami')"/></xsl:message>-->
    </xsl:template>
    
    <xsl:template match="tei:oRef[not(node())]">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
            <xsl:copy-of select="ancestor::*[local-name() = 'entry' or local-name() = 're'][position() = 1]/tei:form[1]/tei:orth[1]/child::node()"/>            
        </xsl:copy>
    </xsl:template>
    
    <xsl:function xmlns:my="http://example.com/my" name="my:getN">
        <xsl:param name="n"/>
        <xsl:choose>
            <xsl:when test="$n = 1">¹</xsl:when>
            <xsl:when test="$n = 2">²</xsl:when>
            <xsl:when test="$n = 3">³</xsl:when>
            <xsl:when test="$n = 4">⁴</xsl:when>
            <xsl:when test="$n = 5">⁵</xsl:when>
            <xsl:when test="$n = 6">⁶</xsl:when>
            <xsl:when test="$n = 7">⁷</xsl:when>
            <xsl:when test="$n = 8">⁸</xsl:when>
            <xsl:when test="$n = 9">⁹</xsl:when>
        </xsl:choose>
    </xsl:function>
</xsl:stylesheet>