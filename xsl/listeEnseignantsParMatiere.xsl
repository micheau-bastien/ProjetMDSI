<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
  	<h1>Liste des enseignants par matières</h1>
  	<table class="table table-hover table-bordered">
      	<xsl:apply-templates select="//matiere"/>
  	</table>
  </html>
  </xsl:template>

  <xsl:template match="//matiere">
    <tr>
      <th><xsl:value-of select="nom"/></th>
      	<xsl:for-each select="descendant::enseignant">
      		<td><xsl:value-of select="."/></td>
  		</xsl:for-each>
    </tr>
  </xsl:template>

</xsl:stylesheet>
