<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
      <style>
          table { 
            width: 100%; 
            border-collapse: collapse; 
          }
  
          tr:nth-of-type(odd) { 
            background: #eee; 
          }
          th { 
            background: #333; 
            color: white; 
            font-weight: bold; 
          }
          td, th { 
            padding: 6px; 
            border: 1px solid #ccc; 
            text-align: left; 
          }
          
          @media 
          only screen and (max-width: 760px),
          (min-device-width: 768px) and (max-device-width: 1024px)  {
          
          	/* Force table to not be like tables anymore */
          	table, thead, tbody, th, td, tr { 
          		display: block; 
          	}
          	
          	/* Hide table headers (but not display: none;, for accessibility) */
          	thead tr { 
          		position: absolute;
          		top: -9999px;
          		left: -9999px;
          	}
          	
          	tr { border: 1px solid #ccc; }
          	
          	td { 
          		/* Behave  like a "row" */
          		border: none;
          		border-bottom: 1px solid #eee; 
          		position: relative;
          		padding-left: 50%; 
          	}
          	
          	td:before { 
          		/* Now like a table header */
          		position: absolute;
          		/* Top/left values mimic padding */
          		top: 6px;
          		left: 6px;
          		width: 45%; 
          		padding-right: 10px; 
          		white-space: nowrap;
          	}
          	
          		td:nth-of-type(1):before { content: "Type:"; }
            	td:nth-of-type(2):before { content: "Name:"; }
            	td:nth-of-type(3):before { content: "Size:"; }
            	td:nth-of-type(4):before { content: "Format:"; }
        </style>
     </head>
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