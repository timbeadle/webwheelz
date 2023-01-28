<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>CFML Source Code for selector.cfm</TITLE>
<SCRIPT language="Javascript">
<!--Hide me from old stuff
function closeWin(window_name) {
window.close(window_name);
}
//-->
</script>
</HEAD>

<BODY onBlur="closeWin('bts');">
<PRE>
&LT!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN"&GT

&LTHTML&GT
&LTMETA HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/"&GT
&LTHEAD&GT
	&LTlink rel="stylesheet" type="text/css" href="../WHEELZ.CSS"&GT
	&LTTITLE&GTWebWheelz Wheel Selector&LT/TITLE&GT
&LTscript language="Javascript"&GT
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

// --&GT
&LT/script&GT

&LTSCRIPT language="Javascript"&GT
&LT!--Hide me from old stuff
function openWin(URL) {
bts = window.open(URL, "thewindow", "toolbar = no, width = 800, height = 450, status = no, scrollbars = yes, resize = no, menubar = no");
}

//--&GT
&LT/script&GT

&LT/HEAD&GT

&LTBODY&GT
&LT!--CFINCLUDE template="../toolbar.inc"---&GT
&LTDIV class="nav"&GT
&LTA HREF="../index.cfm" onMouseDown="imgAct('img1');"&GT&LTIMG name="img1" SRC="../images/mainmenu.gif" border="0" height="41" width="100"&GT&LT/a&GT

&LTA HREF="../search/search.cfm" onMouseDown="imgAct('img2')"&GT&LTimg name="img2" src="../images/search.gif" width="100" height="41" border="0"&GT&LT/A&GT

&LTA HREF="#" onClick="openWin('../bts/behinds0.cfm')" onmouseDown="imgAct('img3');return true" onmouseUp="imgInact('img3')"&GT&LTIMG name="img3" SRC="../images/behind.gif" height="41" width="100" border="0"&GT&LT/A&GT
&LT/DIV&GT
&LTDIV style="font-family: Trebuchet MS; font-size: 16pt; position: absolute; left: 250px; top: 225px; width: 524px; overflow: hidden; border: solid; background: white; padding: 20px"&GT
&LTH1&GTWheel Selector instructions:&LT/h1&GT
&LTOL&GT
	&LTLI&GTChoose your make and model of car.
	&LTLI&GTIf there is a 3D preview of your car, you can see what your car looks like with various wheels fitted.
	&LTLI&GTCheck the price and stock availability and order online: it's as simple as that!
&LT/OL&GT

&LTP ALIGN="right"&GT&LTA HREF="selector1.cfm" class="off" onMouseOver="this.className='on';" onMouseOut="this.className='off';"&GTContinue...&LT/a&GT&LT/P&GT
&LT/DIV&GT

&LT/BODY&GT
&LT/HTML&GT

</pre>


</BODY>
</HTML>
