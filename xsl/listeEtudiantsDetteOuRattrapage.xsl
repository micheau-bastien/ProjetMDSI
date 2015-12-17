<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
    <h1>Etudiants ayant des dettes ou des rattrapages</h1>
    <div class="table-responsive" style="overflow: auto;">
      <table class="table table-hover table-bordered">
        <tr><th>Nom</th><th>Prenom</th></tr>
        <xsl:apply-templates select="//etudiant"/>
      </table>
    </div>
  </html>
  </xsl:template>

  <xsl:template match="//etudiant">
        <tr><td><xsl:value-of select="nom"/></td><td><xsl:value-of select="prenom"/></td></tr>
  </xsl:template>

</xsl:stylesheet>
