<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
  <xsl:param name="lang"/>
  
    <!-- XSLT Template to copy anything -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
  
  <xsl:template match="tei:etym|abv:tr|tei:def|tei:note|tei:bibl">
    <xsl:choose>
<!--      <xsl:when test="lang($lang)"></xsl:when>-->
      <xsl:when test="@xml:lang = $lang"></xsl:when>
      <xsl:otherwise>
        <xsl:copy>
          <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  
  <xsl:template match="tei:biblScope[@xml:lang=$lang]"></xsl:template>
</xsl:stylesheet>