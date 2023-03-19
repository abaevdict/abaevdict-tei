<?xml version="1.0" encoding="UTF-8"?>
<!-- This stylesheet removes erroneously generated English notes in Russian etymologies and vice versa -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
  
    <!-- XSLT Template to copy anything -->
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
  
  <xsl:template match="tei:etym[@xml:lang='ru']//tei:note[@xml:lang='en']"/>
  <xsl:template match="tei:etym[@xml:lang='ru']//tei:bibl[@xml:lang='en']"/>
  <xsl:template match="tei:etym[@xml:lang='ru']//tei:biblScope[@xml:lang='en']"/>
  <xsl:template match="tei:bibl[@xml:lang='ru']//tei:biblScope[@xml:lang='en']"/>
  
  <xsl:template match="tei:etym[@xml:lang='en']//tei:note[@xml:lang='ru']"/>
  <xsl:template match="tei:etym[@xml:lang='en']//tei:bibl[@xml:lang='ru']"/>
  <xsl:template match="tei:etym[@xml:lang='en']//tei:biblScope[@xml:lang='ru']"/>
  <xsl:template match="tei:bibl[@xml:lang='en']//tei:biblScope[@xml:lang='ru']"/>
  
</xsl:stylesheet>