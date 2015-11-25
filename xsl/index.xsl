<?xml version="1.0" encoding="iso-8859-1" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="XML/Etudiants.xml">
	<html>
		<head>

		</head>
		<body>
			<ul>
				<br/>
				<xsl:apply-templates select="//cursus" />
			</ul>
		</body>
	</html>
</xsl:template>

<xsl:template match="//cursus">
	<xsl:value-of select="." />
	<li><xsl:value-of select="//etudiant[cursus='IR-I']" /></li>
</xsl:template>

</xsl:stylesheet>