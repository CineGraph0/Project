<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <style>
      table{ height: 100%; width: 100%;}
    </style>
    <body>
    <h2>Tablets</h2>
      <div id = "tablet" style="width: 100%;">  
        <table border="1">
          <tr bgcolor="#d3d3d3">
            <th style="text-align:left">Type</th>
            <th style="text-align:left">Name</th>
            <th style="text-align:left">RAM</th>
            <th style="text-align:left">Processor</th>
            <th style="text-align:left">Resolution</th>
            <th style="text-align:left">HDD</th>
            <th style="text-align:left">Price</th>
          </tr>
          <xsl:for-each select="products/tablets/tablet">
          <tr>
            <td><xsl:value-of select="type"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="ram"/></td>
            <td><xsl:value-of select="processor"/></td>
            <td><xsl:value-of select="resolution"/></td>
            <td><xsl:value-of select="hdd"/></td>
            <td><xsl:value-of select="price"/></td>
          </tr>
          </xsl:for-each>
        </table>
      </div>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>