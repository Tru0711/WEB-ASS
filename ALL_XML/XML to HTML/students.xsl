<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Students List</title>
                <style>
                  div{
                    background-color: pink;
                    border: 2px solid black;
                    border-radius:30px;
                    width : 700px;
                    padding: 50px;
                  }
                  
                </style>
            </head>
            <body>
                <h2>Students Information</h2>
                <div>
                <ul>
                    <xsl:for-each select="class/student">
                        <li>
                            <strong>Name : =&gt;</strong> <xsl:value-of select="name"/><br/>
                            <strong>Roll Number : </strong> <xsl:value-of select="rollN"/><br/>
                            <strong>Marks :</strong> <xsl:value-of select="mark"/><br/>
                            <strong>Enrollment ID : </strong> <xsl:value-of select="EnID"/>
                        </li><br/><br/>
                        
                    </xsl:for-each>
                </ul>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
