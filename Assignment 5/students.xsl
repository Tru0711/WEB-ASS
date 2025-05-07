<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/students">
    <html>
      <head>
        <title>XPath Demo</title>
        <style>
          body { font-family: Arial; padding: 20px; }
          h2 { color: #333; }
          ul { list-style: none; padding: 0; }
          li { margin-bottom: 10px; background: #f0f0f0; padding: 8px; border-radius: 6px; }
        </style>
      </head>
      <body>
        <h2>1. All Students (XPath: /students/student)</h2>
        <ul>
          <xsl:for-each select="/students/student">
            <li><xsl:value-of select="name"/> (Age: <xsl:value-of select="age"/>)</li>
          </xsl:for-each>
        </ul>

        <h2>2. First Student Only (XPath: /students/student[1])</h2>
        <ul>
          <li>
            <xsl:value-of select="/students/student[1]/name"/> 
            (Age: <xsl:value-of select="/students/student[1]/age"/>)
          </li>
        </ul>

        <h2>3. Students Aged 22 (XPath: /students/student[age=22])</h2>
        <ul>
          <xsl:for-each select="/students/student[age=22]">
            <li><xsl:value-of select="name"/> (Age: <xsl:value-of select="age"/>)</li>
          </xsl:for-each>
        </ul>

        <h2>4. Names Only (XPath: /students/student/name)</h2>
        <ul>
          <xsl:for-each select="/students/student/name">
            <li><xsl:value-of select="."/></li>
          </xsl:for-each>
        </ul>

        <h2>5. Last Student (XPath: /students/student[last()])</h2>
        <ul>
          <li>
            <xsl:value-of select="/students/student[last()]/name"/>
            (Age: <xsl:value-of select="/students/student[last()]/age"/>)
          </li>
        </ul>

        <h2>6. Students Aged Greater Than 20 (XPath: /students/student[age &gt; 20])</h2>
        <ul>
          <xsl:for-each select="/students/student[age &gt; 20]">
            <li><xsl:value-of select="name"/> (Age: <xsl:value-of select="age"/>)</li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
