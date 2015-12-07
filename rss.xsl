<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:yweather="http://xml.weather.yahoo.com/ns/rss/1.0" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/rss/channel">
<p>Sunrise <xsl:value-of select="yweather:astronomy/@sunrise"/>,
 Sunset <xsl:value-of select="yweather:astronomy/@sunset"/>
</p>
<xsl:value-of disable-output-escaping="yes" select="item/description"/>
</xsl:template>
</xsl:stylesheet>