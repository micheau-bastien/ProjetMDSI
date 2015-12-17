<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Liste des enseignants par matieres</h1>
    <div class="list-group">
        <xsl:apply-templates select="//matieres"/>
    </div>
  </html>
  </xsl:template>

  <xsl:template match="//matieres">
      <xsl:for-each select="descendant::matiereEnseignee">
        <a href="#" class="list-group-item">
          <h4><xsl:value-of select="./matiere"/></h4>
          <p style="margin-left:25px;">
            <xsl:for-each select="descendant::enseignant">
                <xsl:value-of select="."/><br/>
            </xsl:for-each>
          </p>
        </a>
      </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
