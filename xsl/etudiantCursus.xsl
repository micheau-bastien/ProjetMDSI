<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/etudiants">
    <html>
      <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
      </head>
    <body>
    	<h1>Etudiants par Cursus</h1>
    	<ul>
        	<xsl:apply-templates select="//cursus"/>
    	</ul>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="//cursus">
    <li>
      <xsl:value-of select="../attribute::*"/>-<xsl:value-of select="attribute::*"/>
      <ul>
      	<xsl:for-each select="descendant::etudiant">
      		<li><xsl:value-of select="."/></li>
  		</xsl:for-each>
      </ul>
    </li>
  </xsl:template>

</xsl:stylesheet>