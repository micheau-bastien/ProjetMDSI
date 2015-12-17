<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Liste des matieres par cursus</h1>
    <ul>
        <xsl:apply-templates select="//cursuses"/>
    </ul>
  </html>
  </xsl:template>

  <xsl:template match="//cursuses">
    <ul>
      <xsl:for-each select="descendant::cursus">
        <li>
          <xsl:value-of select="./nom"/>
           <ul>
            <xsl:for-each select="descendant::matiere/nom">
             <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
        </li>
      </xsl:for-each>
  </ul>
  </xsl:template>

</xsl:stylesheet>