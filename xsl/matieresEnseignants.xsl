<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
    	<h1>Enseignants pour MDSI</h1>
    	<ul> 
    		<xsl:apply-templates select="//enseignant"/>
    	</ul>
    </html>
  </xsl:template>

  <xsl:template match="//enseignant">
      <xsl:for-each select="descendant::matiere">
        <xsl:if test=".='MDSI'">
      		<li><xsl:value-of select="../../nom"/></li>
        </xsl:if> 
  		</xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
