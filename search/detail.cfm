<HTML>
<HEAD>
<link rel="stylesheet" type="text/css" href="../wheelz.css">
<TITLE>Wheel detail</TITLE>

<CFQUERY NAME="GetDetails" DATASOURCE="Wheels">
	SELECT * FROM Wheels WHERE Manuf='#Url.make#' AND Model='#Url.model#' AND Size='#Url.Size#'
</CFQUERY>

</HEAD>

<BODY BGCOLOR="#FFFFFF">

<DIV style="position: absolute; left: 250px; top: 240px; width: 450px; overflow: auto">

<CFOUTPUT query="GetDetails">
<CFIF #image# is 1>
<IMG SRC="../images/wheels/#manuf# #model#.jpg" width="100" height="100" align="right"></cfif><H2>#Manuf# #Model# #Size#"</H2>
<PRE>
            <B>Price:</B> £#DecimalFormat(Cost)#
         <B>In Stock:</B> <CFIF #Available# IS '1'>Yes<CFELSE>No</cfif>
</pre>
Cost for four wheels: <B>£#DecimalFormat(evaluate(4*cost))#</b>
</CFOUTPUT>
<FORM action="search.cfm" method="post">
<INPUT type="button" value="Search Again" onMouseUp="window.location='search.cfm';">
<INPUT type="button" value="Back to Results" onMouseUp="history.go(-1);">
</form>
</DIV>
 </BODY>
 </HTML>
