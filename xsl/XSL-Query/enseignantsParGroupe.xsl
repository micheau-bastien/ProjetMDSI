<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Liste des enseignants par groupe</h1>
    <ul>
        <xsl:apply-templates select="//enseignantGroupe"/>
    </ul>
  </html>
  </xsl:template>

  <xsl:template match="//enseignantGroupe">
    <ul>
      <xsl:for-each select="descendant::groupe">
        <li>
          <xsl:value-of select="."/>
          <ul>
            <xsl:for-each select="../enseignants/enseignant">
              <li><xsl:value-of select="."/></li>
          </xsl:for-each>
          </ul>
        </li>
      </xsl:for-each>
  </ul>
  </xsl:template>

</xsl:stylesheet>