<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>CFML Source Code for selector2.cfm</TITLE>
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
&LTHTML&GT
&LTHEAD&GT
&LTMETA HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/"&GT
	&LTTITLE&GTWheel Selector&LT/TITLE&GT
	&LTlink rel="stylesheet" type="text/css" href="../wheelz.css"&GT
&LTscript language="Javascript"&GT
&LT!--
 if (document.images) {
	img1on = new Image();
	img1on.src = "../images/mainmenuon.gif";
	img2on = new Image();
	img2on.src = "../images/selectoron.gif";
	img3on = new Image();
	img3on.src = "../images/makeson.gif";
	img4on = new Image();
	img4on.src = "../images/searchon.gif";
	img5on = new Image();
	img5on.src = "../images/helpon.gif";
	img6on = new Image();
	img6on.src = "../images/behindon.gif";
	img7on = new Image();
	img7on.src = "../images/currentmakeon.gif";

	img1off = new Image();
	img1off.src = "../images/mainmenu.gif";
	img2off = new Image();
	img2off.src = "../images/selector.gif";
	img3off = new Image();
	img3off.src = "../images/makes.gif";
	img4off = new Image();
	img4off.src = "../images/search.gif";
	img5off = new Image();
	img5off.src = "../images/help.gif";
	img6off = new Image();
	img6off.src = "../images/behind.gif";
	img7off = new Image();
	img7off.src = "../images/currentmake.gif";
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

// --&GT
&LT/script&GT
  &LTscript language="JavaScript"&GT
&LT!--
function MM_showHideLayers() { //v1.2
  var i, visStr, args, theObj;
  args = MM_showHideLayers.arguments;
  for (i=0; i&LT(args.length-2); i+=3) { //with arg triples (objNS,objIE,visStr)
    visStr   = args[i+2];
    if (navigator.appName == 'Netscape' && document.layers != null) {
      theObj = eval(args[i]);
      if (theObj) theObj.visibility = visStr;
    } else if (document.all != null) { //IE
      if (visStr == 'show') visStr = 'visible'; //convert vals
      if (visStr == 'hide') visStr = 'hidden';
      theObj = eval(args[i+1]);
      if (theObj) theObj.style.visibility = visStr;
  } }
}
//--&GT
&LT/script&GT
  &LTscript language="JavaScript"&GT
&LT!--
function MM_preloadImages() { //v1.2
  if (document.images) {
    var imgFiles = MM_preloadImages.arguments;
    var preloadArray = new Array();
    for (var i=0; i&LTimgFiles.length; i++) {
      preloadArray[i] = new Image;
      preloadArray[i].src = imgFiles[i];
    }
  }
}

function MM_swapImage() { //v1.2
  var i,j=0,objStr,obj,swapArray=new Array,oldArray=document.MM_swapImgData;
  for (i=0; i &LT (MM_swapImage.arguments.length-2); i+=3) {
    objStr = MM_swapImage.arguments[(navigator.appName == 'Netscape')?i:i+1];
    if ((objStr.indexOf('document.layers[')==0 && document.layers==null) ||
        (objStr.indexOf('document.all[')   ==0 && document.all   ==null))
      objStr = 'document'+objStr.substring(objStr.lastIndexOf('.'),objStr.length);
    obj = eval(objStr);
    if (obj != null) {
      swapArray[j++] = obj;
      swapArray[j++] = (oldArray==null || oldArray[j-1]!=obj)?obj.src:oldArray[j];
      obj.src = MM_swapImage.arguments[i+2];
  } }
  document.MM_swapImgData = swapArray; //used for restore
}
//--&GT
&LT/script&GT
  &LTscript language="JavaScript"&GT
&LT!--
function MM_swapImgRestore() { //v1.2
  if (document.MM_swapImgData != null)
    for (var i=0; i&LT(document.MM_swapImgData.length-1); i+=2)
      document.MM_swapImgData[i].src = document.MM_swapImgData[i+1];
}
//--&GT
&LT/script&GT

&LTSCRIPT language="Javascript"&GT
&LT!--Hide me from old stuff
function openWin(URL) {
bts = window.open(URL, "thewindow", "toolbar = no, width = 800, height = 450, status = no, scrollbars = yes, resize = no, menubar = no");
}

function closeWin(window_name) {
window.close(window_name);
}
//--&GT
&LT/script&GT
&LT/HEAD&GT

&LTBODY&GT
&LT!-- #BeginBehavior MM_swapImage1 --&GT 
&LTscript language='JavaScript'&GT
  MM_preloadImages('../IMAGES/closeon.GIF');
&LT/script&GT
&LT!-- #EndBehavior MM_swapImage1 --&GT
&LTCFQUERY NAME="carlist" DATASOURCE="wheels"&GT
	SELECT * from cars
	WHERE model = '#url.model#'
	AND make = '#url.make#'
&LT/CFQUERY&GT 
&LTDIV class="nav"&GT &LTA HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"&GT 
  &LTIMG name="img1" SRC="../images/mainmenu.gif" height="41" width="100" border="0"&GT 
  &LT/a&GT &LTA HREF="selector.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"&GT 
  &LTIMG name="img2" SRC="../images/selector.gif" height="41" width="100" border="0"&GT 
  &LT/a&GT &LTA HREF="selector1.cfm" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"&GT 
  &LTIMG name="img3" SRC="../images/makes.gif" height="41" width="100" border="0"&GT 
  &LT/a&GT &LTCFOUTPUT&GT &LTA HREF="selector1.cfm?make=#make#" onMouseDown="imgActtoo('img7')" onMouseUp="imgInacttoo('img7')"&GT 
  &LTimg name="img7" src="../images/currentmake.gif" width="100" height="41" border="0"&GT 
  &LT/a&GT &LT/CFOUTPUT&GT &LTA HREF="../search/search.cfm" onMouseDown="imgActtoo('img4')" onMouseUp="imgInacttoo('img4')"&GT 
  &LTIMG name="img4" src="../images/search.gif" width="100" height="41" border="0"&GT 
  &LT/a&GT &LTA HREF="#" onMouseDown="imgActtoo('img5')" onMouseUp="imgInacttoo('img5')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"&GT 
  &LTIMG name="img5" src="../images/help.gif" width="100" height="41" border="0"&GT 
  &LT/a&GT &LTA HREF="#" onMouseDown="imgActtoo('img6')" onMouseUp="imgInacttoo('img6')" onClick="openWin('../bts/behinds2.cfm');"&GT 
  &LTIMG name="img6" SRC="../images/behind.gif" width="100" height="41" border="0"&GT 
  &LT/a&GT &LT/DIV&GT

&LTDIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 500px;	top: 335px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-order: 300"&GT
&LTOL style="text-align: left;"&GT
&LTCFOUTPUT query="carlist"&GT
&LTCFIF #wfmodel# IS 'NO'&GT
	&LTLI&GTSorry, there isn't a 3D preview of your car at present&LT/LI&GT
	&LTLI&GTCome back again soon when we're sure to have added your car to the system.&LT/LI&GT
&LTCFElSE&GT
	&LTLI&GTUse the mouse to move wheels onto the car.&LT/LI&GT
	&LTLI&GTChange the view by clicking on the arrows.&LT/LI&GT
&LT/cfif&GT
&LT/cfoutput&GT
&LT/OL&GT
&LTCENTER&GT
    &LTA HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"&GT&LTimg  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"&GT&LT/a&GT 
  &LT/CENTER&GT 
&LT/DIV&GT

&LTDIV class="title"&GT
&LTCFOUTPUT query="carlist"&GT
	&LTIMG src="#make#/#Model#-hi.jpg" height="180" width="320" ALIGN="left" hspace="10"&GT
	&LTH2 align="center"&GT#Make# #Model#&LT/h2&GT
	&LTP class="comment"&GT#comment#&LT/P&GT
&LT/cfoutput&GT
&LT/DIV&GT
&LT/BODY&GT
&LT/HTML&GT

</pre>


</BODY>
</HTML>
