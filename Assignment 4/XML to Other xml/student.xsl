<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/class">
        <StudentsList>
            <xsl:apply-templates select="student"/>
        </StudentsList>
    </xsl:template>

    <xsl:template match="student">
        <StudentRecord>
            <FullName>
                <xsl:value-of select="name"/>
            </FullName>
            <RollNumber>
                <xsl:value-of select="rollN"/>
            </RollNumber>
            <Percentage>
                <xsl:value-of select="mark"/>
            </Percentage>
            <EnrollmentID>
                <xsl:value-of select="EnID"/>
            </EnrollmentID>
        </StudentRecord>
    </xsl:template>
</xsl:stylesheet>
