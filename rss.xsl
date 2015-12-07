<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
  <head>
    <title><xsl:value-of select="rss/channel/title"/> RSS Feed</title>
    <style type="text/css">
    @import url(rss.css);
    </style>
  </head>
  <body>
    <div id="content">
      <xsl:for-each select="rss/channel/item">
      <div class="article">
        <h2><a href="{link}" rel="bookmark"><xsl:value-of select="title"/></a></h2>
        <xsl:value-of select="description"/>
      </div>
      </xsl:for-each>
    </div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>



<!--<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
     <head>
        <style>
          
        </style>
     </head>
      ...
            
      <body onload="go_decoding();">
        ... Header section removed ...
        
        <div align="center">
          <div id="feedItems">
            <xsl:for-each select="/rss/channel/item">
              <div class="rssItem">
                <h2 class="rssTitle">
                   <a href="{link}"><xsl:value-of select="title" /></a>
                </h2>
                <div name="decodeable" class="rssDescription">
                  <xsl:value-of select="description" disable-output-escaping="yes" />
                </div>
              </div>            
            </xsl:for-each>
          </div>
        </div>        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>-->