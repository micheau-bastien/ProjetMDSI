<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Etudiants ayant plus de deux dettes</h1>
    <div class="list-group">
        <xsl:apply-templates select="//etudiants"/>
    </div>
  </html>
  </xsl:template>

  <xsl:template match="//etudiants">
      <xsl:for-each select="descendant::etudiant">
        <a href="#" class="list-group-item"><xsl:value-of select="."/></a>
      </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
