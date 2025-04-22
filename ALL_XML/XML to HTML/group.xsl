<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
     <html>
      <head>
       <title>Project Group Members</title>
       <style>
                    table { width: 100%%; border-collapse: collapse; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
       </style>
       </head>
     <body>
        <h2>Project Group Members</h2>
      <table>
         <tr>
           <th>Name</th>
           <th>Role</th>
           <th>Email</th>
         </tr>
     <xsl:for-each select="projectGroup/member">
        <tr>
           <td><xsl:value-of select="name"/></td>
           <td>
             <xsl:choose>
              <xsl:when test="role/lead">
                <xsl:value-of select="role/lead"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="role"/>
              </xsl:otherwise>
             </xsl:choose>
           </td>
           <td><xsl:value-of select="email"/></td>
       </tr>
     </xsl:for-each>
       </table>
     </body>
   </html>
 </xsl:template>
</xsl:stylesheet>
