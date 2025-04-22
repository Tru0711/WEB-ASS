<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/projectGroup">
        <Team>
            <xsl:apply-templates select="member"/>
        </Team>
    </xsl:template>

    <xsl:template match="member">
        <TeamMember>
            <FullName>
                <xsl:value-of select="name"/>
            </FullName>
            <Position>
                <xsl:choose>
                    <xsl:when test="role/lead">
                        <xsl:value-of select="role/lead"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="role"/>
                    </xsl:otherwise>
                </xsl:choose>
            </Position>
            <ContactEmail>
                <xsl:value-of select="email"/>
            </ContactEmail>
        </TeamMember>
    </xsl:template>
</xsl:stylesheet>
