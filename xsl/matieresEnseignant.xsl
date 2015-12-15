<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <h1>Matieres des enseignants</h1>
    <div style="overflow: auto;">
      <table class="table table-hover table-bordered">
        <xsl:apply-templates select="//enseignant"/>
      </table>
    </div>
    </html>
  </xsl:template>

  <xsl:template match="//enseignant">
    <tr>
      <th> <xsl:value-of select="./nom" /> -  <xsl:value-of select="./prenom" /> </th>
      <xsl:for-each select="descendant::matiere">
          <td><xsl:value-of select="."/></td>
      </xsl:for-each>
    </tr>
  </xsl:template>
</xsl:stylesheet>
