<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Enseignants par année</h1>
    <table class="table table-hover table-bordered">
        <xsl:apply-templates select="//enseignantAnnee"/>
    </table>
  </html>
  </xsl:template>

  <xsl:template match="//enseignantAnnee">
    <tr>
      <xsl:for-each select="descendant::annee">
        <th>
          <xsl:value-of select="."/></th>
            <xsl:for-each select="../enseignants/enseignant">
              <td><xsl:value-of select="."/></td>
          </xsl:for-each>
      </xsl:for-each>
  </tr>
  </xsl:template>

</xsl:stylesheet>

<!-- VERSION TABLEAU : >
<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Liste des enseignants par annee</h1>
    <ul>
        <xsl:apply-templates select="//enseignantAnnee"/>
    </ul>
  </html>
  </xsl:template>

  <xsl:template match="//enseignantAnnee">
    <ul>
      <xsl:for-each select="descendant::annee">
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
<!-->