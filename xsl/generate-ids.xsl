<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:abv="http://ossetic-studies.org/ns/abaevdict"
    xmlns:xml="http://www.w3.org/XML/1998/namespace"
    exclude-result-prefixes="xs tei"
    version="3.0">
    <xsl:template name="start">
        <xsl:for-each select="collection('../entries?select=*.xml;recurse=yes')">
            <xsl:result-document href="{document-uri()}" method="xml">
                <xsl:apply-templates mode="inFile"/>
<!--                <xsl:message><xsl:value-of select="document-uri()"/></xsl:message>-->
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
    

    <xsl:template match="node() | @*" mode="inFile">
        <xsl:copy>
            <xsl:apply-templates mode="inFile" select="node() | @*"/>
        </xsl:copy>
    </xsl:template>    
    
    <xsl:template match="tei:mentioned[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">mentioned_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:sense[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">sense_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>
    </xsl:template>    

    <xsl:template match="abv:exampleGrp[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">exampleGrp_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="abv:example[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">example_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="tei:re[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">re_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>
    </xsl:template>    
    
    <xsl:template match="tei:form[not(@xml:id)]" mode="inFile">
        <xsl:copy>
            <xsl:attribute name="xml:id">form_<xsl:value-of select="generate-id(.)"/></xsl:attribute>
            <xsl:apply-templates select="@*" mode="inFile"/>
            <xsl:apply-templates mode="inFile"/>
        </xsl:copy>        
    </xsl:template>
</xsl:stylesheet>