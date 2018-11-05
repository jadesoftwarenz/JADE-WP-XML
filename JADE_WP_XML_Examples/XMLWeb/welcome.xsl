<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:template match="/">
<HTML>
<BODY>
<xsl:for-each select="USER">
<h1 align="center">Welcome, <xsl:value-of select="FIRSTNAME"/> <xsl:value-of select="LASTNAME"/></h1>
</xsl:for-each>
<br>
<h4 align="center">Please enter the parameters of your search</h4>
</br>

<form name="search" method="post" action="http://localhost/xmlweb/jadehttp.dll?XMLWhitePaper">
<input type="hidden" name="form" value="search">
<TABLE border="0" align="center">
<TR>
	<TD WIDTH="25%"></TD>
	<TD WIDTH="10%">First Name</TD>
	<TD><input type="text" name="firstname"></input></TD>
	<TD WIDTH="25%"></TD>
</TR>
<TR>
	<TD WIDTH="25%"></TD> 
	<TD>Last Name</TD>
	<TD><input type="text" name="lastname"></input></TD>
	<TD WIDTH="25%"></TD>
</TR>
<TR>
	<TD></TD>
	<TD>Create File</TD>
	<TD><input type="checkbox" name="createfile"></input></TD>
	<TD></TD>
</TR>
<TR>	<TD></TD>
	<TD>File Name</TD>
	<TD><input type="text" name="filename"></input></TD>
	<TD></TD>
</TR>
<TR>
	<TD></TD>
	<TD></TD>
	<TD><input type="submit" value="Person Search"></input></TD>
	<TD></TD>
</TR>

</TABLE>
</input>
</form>
<BR>
<h4 align="center">Please select a file to import</h4>
</BR>
<form name="import" method="post" action="http://localhost/xmlweb/jadehttp.dll?XMLWhitePaper">
<input type="hidden" name="form" value="import">
<TABLE border="0" align="center">
<TR>
	<TD WIDTH="25%"></TD>
	<TD WIDTH="10%">Import File</TD>
	<TD><input type="file" name="filename"></input></TD>
	<TD WIDTH="25%"></TD>
</TR>
<TR>
	<TD></TD>
	<TD></TD>
	<TD><input type="submit" value="Import"></input></TD>
	<TD></TD>
</TR>
</TABLE>
</input>
</form>	
<br>
</br>

</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
