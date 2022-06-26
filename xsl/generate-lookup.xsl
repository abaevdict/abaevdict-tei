<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    xmlns:expath-file="http://expath.org/ns/file"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:param name="dir"/>
    
    <xsl:variable name="entries" select="collection(concat($dir,'/entries'))"/>
    
    <xsl:template name="generate-lookup">
        <xsl:element name="table">
            <xsl:for-each select="$entries">
                <xsl:for-each select="tei:TEI/tei:text/tei:body/tei:entry">
                    <xsl:element name="entry">
<!--                        <xsl:message><xsl:value-of select="document-uri(/)"/></xsl:message>-->
                        <xsl:attribute name="xml:id" select="@xml:id"/>
                        <xsl:attribute name="filename" select="expath-file:name(document-uri(/))"/>
                        <xsl:if test="@n">
                            <xsl:attribute name="n" select="@n"/>
                        </xsl:if>
                        <xsl:value-of select="tei:form[1]/tei:orth[1]"/>
                    </xsl:element>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>