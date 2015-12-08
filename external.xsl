<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <style>
      table{ height: 100%; width: 100%;}
    </style>
    <body>
    <h2>External Hardware</h2>
    <table border="1">
      <tr bgcolor="#d3d3d3">
        <th style="text-align:left">Type</th>
        <th style="text-align:left">Name</th>
        <th style="text-align:left">Size</th>
        <th style="text-align:left">Format</th>
      </tr>
      <xsl:for-each select="products/externals/external">
      <tr>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="size"/></td>
        <td><xsl:value-of select="format"/></td>
      </tr>
      </xsl:for-each>
    </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>