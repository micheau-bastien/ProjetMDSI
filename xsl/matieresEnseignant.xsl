<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    <h1>Matieres des enseignants</h1>
    <table>
      <xsl:apply-templates select="//enseignant"/>
    </table>
    </html>
  </xsl:template>

  <xsl:template match="//enseignant">
    <tr>  
      <th> <xsl:value-of select="./nom" /> </th>
      <xsl:for-each select="descendant::matiere">
          <td><xsl:value-of select="."/></td>
      </xsl:for-each>
    </tr>
  </xsl:template>
</xsl:stylesheet>