<?xml version="1.0" encoding="utf-8" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML>
<BODY>
<TABLE BORDER="0">
	<TR>
		<TD WIDTH="15%"><B><U>Last Name</U></B></TD>
		<TD WIDTH="15%"><B><U>First Name</U></B></TD>
		<TD WIDTH="15%"><B><U>Occupation</U></B></TD>
		<TD WIDTH="15%"><B><U>Contact Details</U></B></TD>
		<TD WIDTH="30%"></TD>
	</TR>
	<xsl:for-each select="PEOPLE_DETAILS/PERSON_DETAILS">
	<TR>
		<TD><B><xsl:value-of select="PERSON_LAST_NAME"/></B></TD>
		<TD><xsl:value-of select="PERSON_FIRST_NAME"/></TD>
		<TD><xsl:value-of select="OCCUPATION"/></TD>
		<TD><B>Address</B></TD>
		<TD><xsl:value-of select="CONTACT_DETAILS/ADDRESS_DETAILS/ADDRESS_LINE_1"/></TD>
	</TR>
		<xsl:for-each select="CONTACT_DETAILS/ADDRESS_DETAILS">
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><xsl:value-of select="ADDRESS_LINE_2"/></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><xsl:value-of select="SUBURB"/></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><xsl:value-of select="CITY"/></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><xsl:value-of select="COUNTRY"/></TD>
	</TR>
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><xsl:value-of select="POSTCODE"/></TD>
	</TR>
		</xsl:for-each>
		<xsl:for-each select="CONTACT_DETAILS/PHONE">
	<xsl:element name="TR">
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><B><xsl:value-of select="@TYPE"></xsl:value-of> Phone</B></TD>
		<TD><xsl:value-of select="text()"/></TD>
	</xsl:element>
		</xsl:for-each>
		<xsl:for-each select="CONTACT_DETAILS">
	<TR>
		<TD></TD>
		<TD></TD>
		<TD></TD>
		<TD><B>Email</B></TD>
		<TD><xsl:value-of select="EMAIL"/></TD>	
	</TR>
		</xsl:for-each>
	<TR HEIGHT="40">
	</TR>
	</xsl:for-each>
</TABLE>
</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
