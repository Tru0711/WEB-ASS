<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    
    <xsl:template match="/Employees">
        <CompanyEmployees>
            <xsl:apply-templates select="Emp"/>
        </CompanyEmployees>
    </xsl:template>


    <xsl:template match="Emp">
        <Employee>
            <FullName>
                <xsl:value-of select="name"/>
            </FullName>
            <Email>
                <xsl:value-of select="email"/>
            </Email>
            <PhoneNumber>
                <xsl:value-of select="phoneNo"/>
            </PhoneNumber>
            <Gender>
                <xsl:value-of select="gender"/>
            </Gender>
            <Position>
                <xsl:value-of select="jobTitle"/>
            </Position>
            <DateOfBirth>
                <xsl:value-of select="DOB"/>
            </DateOfBirth>
            <Salary>
                <xsl:value-of select="salary"/>
            </Salary>
        </Employee>
    </xsl:template>
</xsl:stylesheet>
