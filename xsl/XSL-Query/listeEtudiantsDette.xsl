<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Etudiants ayant des dettes</h1>
    <ul>
        <xsl:apply-templates select="//etudiants"/>
    </ul>
  </html>
  </xsl:template>

  <xsl:template match="//etudiants">
      <xsl:for-each select="descendant::etudiant">
        <li><xsl:value-of select="."/></li>
      </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>