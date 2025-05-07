<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:text>Project Group Members&#10;=======================&#10;&#10;</xsl:text>
        <xsl:for-each select="projectGroup/member">
            <xsl:text>Name: </xsl:text><xsl:value-of select="name"/>
            <xsl:text>&#10;Role: </xsl:text><xsl:choose>
                <xsl:when test="role/lead">
                    <xsl:value-of select="role/lead"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="role"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>&#10;Email: </xsl:text><xsl:value-of select="email"/>
            <xsl:text>&#10;-----------------------&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>