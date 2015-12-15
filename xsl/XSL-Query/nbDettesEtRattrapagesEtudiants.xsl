<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    	<h1>Nombre de dettes et de rattrapages par étudiant</h1>
    	<table class="table table-hover table-bordered">
        <tr><th>Nom</th><th>Prenom</th><th>nb Dettes</th><th>nb Rattrapages</th></tr>
    		<xsl:apply-templates select="//etudiant"/>
    	</table>
    </html>
  </xsl:template>

  <xsl:template match="//etudiant">
    <tr>
      <td><xsl:value-of select="./nom"/></td>
      <td><xsl:value-of select="./prenom"/></td>
      <td><xsl:value-of select="./nbDettes"/></td>
      <td><xsl:value-of select="nbRattrapages"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
