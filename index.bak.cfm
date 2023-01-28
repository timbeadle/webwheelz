<HTML>
<HEAD>
<META HTTP-EQUIV="Refresh" CONTENT="30; URL=http://PC-0001/webwheelz/">
<TITLE>WebWheelz Wheel Selector</TITLE>
<link rel="stylesheet" type="text/css" href="wheelz.css">
<!--BGSOUND SRC="sounds/letmein.wav" LOOP="-1"--->
<CFSET todays_date=DateFormat(Now(), "YYYY-MM-DD")>

<CFQUERY NAME="listwheels" datasource="wheels">
SELECT * FROM WHEELS
	WHERE date = { d '#todays_date#'}
ORDER BY manuf asc
</cfquery>


</HEAD>



<BODY>

<CFQUERY name="listcars" datasource="wheels">
SELECT * FROM CARS
	WHERE wfmodel = 1
</cfquery>

<CENTER>
<!--CFINCLUDE template="toolbar.inc"--->

<H1>WebWheelz</h1>

<DL>
<CFOUTPUT query="listwheels">
	<CFIF #listwheels.RecordCount# GT 0>
	<DT>The following wheels have been added to the WebWheelz system today:</DT>
	<DD style="font-family: Trebuchet MS; font-size: 12pt; font-style: normal">#Manuf# #Model# #Size#"</DD>
<CFELSE>
	<DT>No new wheels have been added today</DT>	
</cfif>
</cfoutput>
<CFOUTPUT query="listcars">
<P>#make# #model#</P>
</cfoutput>
</DD>
</DL>
<P><A href="selector/selector.cfm">Enter Wheel Selector</a></P>
<P><A HREF="search/search.cfm">Search Catalogue</a></P>
</center>
</BODY>
</html>