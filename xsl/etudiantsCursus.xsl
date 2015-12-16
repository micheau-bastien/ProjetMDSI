<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/etudiants">
    <html>

    	<h1>Tableau des étudiants par cursus</h1>
    	<table class="table table-hover table-bordered">
    		<xsl:apply-templates select="//cursus"/>
    	</table>

    </html>
  </xsl:template>

  <xsl:template match="//cursus">
    <tr>
      <th><xsl:value-of select="../attribute::*"/>-<xsl:value-of select="attribute::*"/></th>
        <xsl:for-each select="descendant::etudiant">
          <td><xsl:value-of select="."/></td>
      </xsl:for-each>
    </tr>
  </xsl:template>
</xsl:stylesheet>
