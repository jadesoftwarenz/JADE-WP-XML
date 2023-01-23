<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<HTML>
<BODY>
<h3 align="center">Person records created for the following people:</h3>
<TABLE ALIGN="CENTER" BORDER="2">
	<TR>
		<TD><B>Last Name</B></TD>
		<TD><B>First Name</B></TD>
		<TD><B>Occupation</B></TD>
	</TR>
	<xsl:for-each select="PEOPLE_DETAILS/PERSON_DETAILS">
	<TR>
		<TD><xsl:value-of select="PERSON_LAST_NAME"/></TD>
		<TD><xsl:value-of select="PERSON_FIRST_NAME"/></TD>
		<TD><xsl:value-of select="OCCUPATION"/></TD>
	</TR>
	</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
