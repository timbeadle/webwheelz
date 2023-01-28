<HTML>
<HEAD>
	<META HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/">
	<TITLE>WebWheelz Wheel Selector</TITLE>
	<link rel="stylesheet" type="text/css" href="wheelz.css">
<CFSET todays_date=DateFormat(Now(), "YYYY-MM-DD")>

<CFQUERY NAME="listwheels" datasource="wheels">
SELECT * FROM WHEELS
	WHERE date = { d '#todays_date#'}
ORDER BY manuf asc
</cfquery>

<CFQUERY name="listcars" datasource="wheels">
SELECT * FROM CARS
	WHERE wfmodel = 1
</cfquery>


<script language="Javascript">
<!--
 if (document.images) {
<CFOUTPUT query="listcars">
	img#ID#on = new Image();
	img#ID#on.src = "selector/#make#/#model#on.jpg";
</CFOUTPUT>

<CFOUTPUT query="listcars">
	img#ID#off = new Image();
	img#ID#off.src = "selector/#make#/#model#.jpg";
</CFOUTPUT>

<CFOUTPUT query="listcars">
	img#ID#hold = new Image();
	img#ID#hold.src = "selector/#make#/#model#roll.gif";
</CFOUTPUT>
}

function imgAct(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "on.src");
        document["holder"].src = eval(imgName + "hold.src");
	}
}

function imgInact(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "off.src");
<CFOUTPUT>
		document["holder"].src = "images/indexblank.gif";
</CFOUTPUT>
	}
}

// -->
</script>
<script language="Javascript">
<!--
 if (document.images) {
	img1on = new Image();
	img1on.src = "images/enterselectoron.gif";
	img2on = new Image();
	img2on.src = "images/entersearchon.gif";
	img3on = new Image();
	img3on.src = "images/exiton.gif";

	img1off = new Image();
	img1off.src = "images/enterselector.gif";
	img2off = new Image();
	img2off.src = "images/entersearch.gif";
	img3off = new Image();
	img3off.src = "images/exit.gif";
}

function imgActtoo(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "on.src");
	}
}

function imgInacttoo(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "off.src");
	}
}

// -->
</script>

</HEAD>
	
<BODY>
<DIV style="position: absolute; left: 400px; top: 140px; width: 500px; height: 600px; overflow: hidden">
<H1 class="red" style="font-family: Impact; font-size: 72pt">WebWheelz</h1>
</DIV>

<CFIF #listwheels.RecordCount# GT 0>
	<DIV style="background: white; border: solid; position: absolute; left: 150px; top: 550px; width: 400px; height: 100px; padding: 10px; overflow: auto">
		<DL>
			<DT>The following wheels have been added today:</DT>
			<CFOUTPUT query="listwheels">
				<DD style="font-family: Verdana; font-size: 10pt; font-style: normal">#Manuf# #Model# #Size#&quot;</DD>
			</cfoutput>
		</DL>
</DIV>
</cfif>

<DIV ID="instructions" style="background: white; position: absolute; border: solid; left: 380px; top: 280px; width: 274px; height: 258px; overflow: auto; padding: 10px">

<P style="font-size: 12pt; font-weight: bold">You have three options:</P>
<ol>
<li>Jump straight to the two cars which current have a 3D preview facility (left)
<li>Step through the Wheel Selector, choosing the make and model of car which you own (right)
<li>Search the wheel catalogue for suitable wheels for your car.
</ol>
</DIV>

<DIV style="background: #FF9900; border: solid; position: absolute; left: 150px; top: 150px; width: 200; padding: 10px">

<P align="center">
<B>Jump to the cars with 3D Previews</b></P>
<P align="center">
<CFOUTPUT query="listcars">
<A HREF="selector/selector2.cfm?make=#make#&model=#model#" onMouseOver="imgAct('img#ID#')" onMouseOut="imgInact('img#ID#')"><IMG name="img#ID#" SRC="selector/#make#/#model#.jpg" border="0" width="160" height="90" ALT="#make# #model#"></a>
</cfoutput>
<IMG name="holder" src="images/indexblank.gif" width="120" height="120">
</P>
</div>

<DIV style="position: absolute; left: 684px; top: 280px; width: 231px; height: 300px">
<P align="right"><A href="selector/selector.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"><img name="img1" src="images/enterselector.gif" width="231" height="95" border="0"></a>
<A HREF="search/search.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"><img name="img2" src="images/entersearch.gif" width="231" height="95" border="0"></a>
<A HREF="credits.htm" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"><img name="img3" src="images/exit.gif" width="231" height="95" border="0"></a></P>
</DIV>
</BODY>
</html>