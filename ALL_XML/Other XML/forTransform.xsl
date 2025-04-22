<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <specialMenu>
      <xsl:for-each select="foodMenu/dish">
        <menuItem>
          <itemName><xsl:value-of select="dishName"/></itemName>
          <priceTag><xsl:value-of select="cost"/></priceTag>
        </menuItem>
      </xsl:for-each>
    </specialMenu>
  </xsl:template>

</xsl:stylesheet>
