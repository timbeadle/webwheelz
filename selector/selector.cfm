<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<META HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/">
<HEAD>
	<link rel="stylesheet" type="text/css" href="../WHEELZ.CSS">
	<TITLE>WebWheelz Wheel Selector</TITLE>
<script language="Javascript">
 if (document.images) {
	img1on = new Image();
	img1on.src = "../images/mainmenuon.gif";
	img2on = new Image();
	img2on.src = "../images/searchon.gif";
	img3on = new Image();
	img3on.src = "../images/behindon.gif";

	img1off = new Image();
	img1off.src = "../images/mainmenu.gif";
	img2off = new Image();
	img2off.src = "../images/search.gif";
	img3off = new Image();
	img3off.src = "../images/behind.gif";
	}

function imgAct(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "on.src");
	}
}

function imgInact(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "off.src");
	}
}

// -->
</script>

<SCRIPT language="Javascript">
<!--Hide me from old stuff
function openWin(URL) {
bts = window.open(URL, "thewindow", "toolbar = no, width = 800, height = 450, status = no, scrollbars = yes, resize = no, menubar = no");
}

//-->
</script>

</HEAD>

<BODY>
<!--CFINCLUDE template="../toolbar.inc"--->
<DIV class="nav">
<A HREF="../index.cfm" onMouseDown="imgAct('img1');"><IMG name="img1" SRC="../images/mainmenu.gif" border="0" height="41" width="100"></a>

<A HREF="../search/search.cfm" onMouseDown="imgAct('img2')"><img name="img2" src="../images/search.gif" width="100" height="41" border="0"></A>

<A HREF="#" onClick="openWin('../bts/bts.cfm')" onmouseDown="imgAct('img3');return true" onmouseUp="imgInact('img3')"><IMG name="img3" SRC="../images/behind.gif" height="41" width="100" border="0"></A>
</DIV>
<DIV style="font-family: Trebuchet MS; font-size: 16pt; position: absolute; left: 250px; top: 225px; width: 524px; overflow: hidden; border: solid; background: white; padding: 20px">
<H1>Wheel Selector instructions:</h1>
<OL>
	<LI>Choose your make and model of car.
	<LI>If there is a 3D preview of your car, preview your car with various wheels fitted.
</OL>

<P ALIGN="right"><A HREF="selector1.cfm" class="off" onMouseOver="this.className='on';" onMouseOut="this.className='off';">Continue...</a></P>
</DIV>

</BODY>
</HTML>
