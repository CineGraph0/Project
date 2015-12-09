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
          	td:nth-of-type(3):before { content: "RAM:"; }
          	td:nth-of-type(4):before { content: "Processor:"; }
          	td:nth-of-type(5):before { content: "Videocard:"; }
          	td:nth-of-type(6):before { content: "HDD:"; }
          	td:nth-of-type(7):before { content: "Price:"; }
          	

    </style>
     </head>
  <body>
  <h2>Computers</h2>
    <table border ="1">
      <tr bgcolor="#d3d3d3">
        <th style="text-align:left">Type</th>
        <th style="text-align:left">Name</th>
        <th style="text-align:left">RAM</th>
        <th style="text-align:left">Processor</th>
        <th style="text-align:left">Videocard</th>
        <th style="text-align:left">HDD</th>
        <th style="text-align:left">Price</th>
      </tr>
      <xsl:for-each select="products/computers/computer">
      <tr>
        <td><xsl:value-of select="type"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="ram"/></td>
        <td><xsl:value-of select="processor"/></td>
        <td><xsl:value-of select="videocard"/></td>
        <td><xsl:value-of select="hdd"/></td>
        <td><xsl:value-of select="price"/></td>
      </tr>
      </xsl:for-each>
    </table>
    
 <!--css from: https://css-tricks.com/responsive-data-tables/ 
 got the table format from w3schools. i used the same format for every xsl-->
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>