<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Liste des enseignants par matieres</h1>
    <ul>
        <xsl:apply-templates select="//matieres"/>
    </ul>
  </html>
  </xsl:template>

  <xsl:template match="//matieres">
    <ul>
      <xsl:for-each select="descendant::matiereEnseignee">
        <li>
          <xsl:value-of select="./matiere"/>
          <ul>
            <xsl:for-each select="descendant::enseignant">
              <ul><xsl:value-of select="."/></ul>
          </xsl:for-each>
          </ul>
        </li>
      </xsl:for-each>
  </ul>
  </xsl:template>

</xsl:stylesheet>