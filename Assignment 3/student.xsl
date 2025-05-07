<?xml version="1.0" encoding="UTF-8"?>
<?xsl-output default="xslt_output" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Student Information</title>
        <style>
         body { 
           font-family: Arial, sans-serif; 
           } 
         table { 
           width: 70%; 
           margin: 20px auto; 
           border: 2px solid rgb(1, 1, 1);
          } 
         th, td { 
           border: 1px solid #ddd; 
           padding: 8px; 
          } 
        th { 
           background-color:rgb(223, 229, 224); 
           color: black; 
        }
h2 {
    text-align: center;
}

        </style>
      </head>
      <body>
        <h2>Student Information</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Roll Number</th>
            <th>Marks</th>
            <th>Enrollment ID</th>
          </tr>

          <xsl:for-each select="class/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="rollN"/></td>
              <td><xsl:value-of select="mark"/></td>
              <td><xsl:value-of select="EnID"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
