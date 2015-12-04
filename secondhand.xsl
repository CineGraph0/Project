<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <style>
      table{ height: 100%; width: 100%; margin-left:-10px;}
    </style>
    <body>
    <h2>Secondhand Computers</h2>
    <table border="1">
      <tr bgcolor="#d3d3d3">
        <th style="text-align:left">Type</th>
        <th style="text-align:left">Name</th>
        <th style="text-align:left">RAM</th>
        <th style="text-align:left">Price</th>
      </tr>
      <xsl:for-each select="products/secondhand">
      <tr>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="ram"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>