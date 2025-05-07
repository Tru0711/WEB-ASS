<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:text>Employees List&#10;===================&#10;&#10;</xsl:text>
        <xsl:for-each select="Employees/Emp">
            <xsl:text>Name: </xsl:text><xsl:value-of select="name"/>
            <xsl:text>&#10;Email: </xsl:text><xsl:value-of select="email"/>
            <xsl:text>&#10;Phone Number: </xsl:text><xsl:value-of select="phoneNo"/>
            <xsl:text>&#10;Gender: </xsl:text><xsl:value-of select="gender"/>
            <xsl:text>&#10;Job Title: </xsl:text><xsl:value-of select="jobTitle"/>
            <xsl:text>&#10;Date of Birth: </xsl:text><xsl:value-of select="DOB"/>
            <xsl:text>&#10;Salary: </xsl:text><xsl:value-of select="salary"/>
            <xsl:text>&#10;--------------------------&#10;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
