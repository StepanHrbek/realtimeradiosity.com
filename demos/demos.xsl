<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output indent="no" method="html" encoding="utf-8"/>

<xsl:template match="chapter">

<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tr style="background-color:#44aaff">
 <th>Demo<br/>Authors<br/>Release date</th>
 <th>Download binaries<br/>Source code<br/>Papers</th>
 <th>Technique</th>
 <th>Screenshot</th>
</tr>

<xsl:for-each select="demo">
 <tr align="center">
  <td style="background-color:#eeeeee">
    <b><xsl:value-of select="name"/></b>
    <br/>
    <xsl:for-each select="author">
      <xsl:value-of select="."/>
      <xsl:if test="not(position()=last())">, </xsl:if>
    </xsl:for-each>
    <br/>
    <xsl:value-of select="date"/>
  </td>
  <td>
    <xsl:for-each select="download">
      <a href="{@href}"><xsl:value-of select="@type"/></a>
      <xsl:if test="not(position()=last())"><br/></xsl:if>
    </xsl:for-each>
    <p/>
    <xsl:for-each select="doc">
      <a href="{@href}"><xsl:value-of select="@type"/></a>
      <xsl:if test="not(position()=last())"><br/></xsl:if>
    </xsl:for-each>
  </td>
  <td style="background-color:#eeeeee">
    <xsl:value-of select="technique"/> |
    <xsl:value-of select="technique-sub"/>
    <br/>Scene is <xsl:value-of select="scene"/><br/>Light is <xsl:value-of select="light"/><br/>
    <xsl:value-of select="notes"/>
  </td>
  <td>
    <xsl:if test="image[1]">
      <img src="{image[1]}" width="240" height="240" />
    </xsl:if>
  </td>
 </tr>
</xsl:for-each>

</table>

</xsl:template>

</xsl:stylesheet>
