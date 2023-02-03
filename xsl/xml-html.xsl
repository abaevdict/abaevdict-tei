<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    exclude-result-prefixes="xs tei"
    version="2.0">
  
    <xsl:output method="html" omit-xml-declaration="yes" indent="no"/>
    <xsl:strip-space elements="tei:TEI tei:teiHeader tei:fileDesc tei:titleStmt tei:form"/>
  
    <xsl:template match="processing-instruction('xml-stylesheet')"/>
  
    <xsl:template match="tei:TEI">
        <xsl:element name="html">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <xsl:element name="head">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:fileDesc">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:titleStmt">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:title">
        <xsl:element name="title">
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:publicationStmt"/>
  
    <xsl:template match="tei:sourceDesc"/>
    
    <xsl:template match="tei:encodingDesc"/>
    
    <xsl:template match="tei:text">
        <xsl:apply-templates/>
    </xsl:template>
    
    <!-- XSLT Template to copy anything -->
    <xsl:template match="node()">
        <xsl:element name="div">
            <xsl:attribute name="class" select="concat('abaev_',local-name())"/>
            <xsl:apply-templates/>
        </xsl:element>
<!--        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>-->
    </xsl:template>
    
    <xsl:template match="text()">
        <xsl:value-of select="."/>
    </xsl:template>
    
    <xsl:template match="tei:table | tei:tr | tei:td">
        <xsl:element name="{local-name()}">
            <xsl:attribute name="class" select="concat('abaev_',local-name())"></xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:form | tei:orth | tei:sense | tei:note | tei:def | abv:tr | abv:exampleGrp | abv:example | tei:quote">
        <xsl:element name="span">
            <xsl:attribute name="class" select="concat('abaev_',local-name())"/>
            <xsl:apply-templates/>
        </xsl:element>
<!--        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>-->
    </xsl:template>

</xsl:stylesheet>