<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Temp</th>
      </tr>
      <xsl:for-each select="response/data/METAR">
      <xsl:if test="station_id='KMAF'">
        <tr>
          <td><xsl:value-of select="temp_c"/></td>
        </tr>
      </xsl:if>
      </xsl:for-each>
    </table>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

