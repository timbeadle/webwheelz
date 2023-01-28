<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<HTML>
<HEAD>
	<TITLE>CFML Source Code for selector1.cfm plus models.inc</TITLE>
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
&LTHEAD&GT
&LTMETA HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/"&GT
	&LTTITLE&GTWheel Selector&LT/TITLE&GT
	&LTlink rel="stylesheet" type="text/css" href="../wheelz.css"&GT
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
&LTDIV class="what"&GT
what
&LT/DIV&GT
&LTdiv class="car"&GT
car
&LT/DIV&GT
&LTDIV class="do"&GT
do you drive?
&LT/DIV&GT
&LTDIV ID="topline" style="position: absolute; left: 0px; top: 180px; z-order: 0"&GT
&LTIMG src="../images/line.gif" width="792" height="2"&GT
&LT/DIV&GT

&LTDIV ID="bottomline" style="position: absolute; left: 232px; top: 567px; z-order: 40"&GT
&LTIMG src="../images/line.gif" width="792" height="2"&GT
&LT/DIV&GT

		&LTCFIF #ParameterExists(Url.Make)# IS "Yes"&GT
			&LTCFINCLUDE TEMPLATE="models.inc"&GT
		&LTCFELSE&GT
			&LTCFINCLUDE TEMPLATE="makes.inc"&GT
		&LT/CFIF&GT
&LT/BODY&GT
&LT/HTML&GT


&LTCFQUERY NAME="ModelList" DATASOURCE="wheels"&GT
	SELECT * from cars
	WHERE Make = '#Url.Make#'
	AND Regular = 1
	ORDER BY ID Asc
&LT/CFQUERY&GT

&LTscript language="Javascript"&GT

&LT!--

 if (document.images) {
&LTCFOUTPUT query="ModelList"&GT
	img#ID#on = new Image();
	img#ID#on.src = "#make#/#model#on.jpg";
&LT/CFOUTPUT&GT

&LTCFOUTPUT query="ModelList"&GT
	img#ID#off = new Image();
	img#ID#off.src = "#make#/#model#.jpg";
&LT/CFOUTPUT&GT

&LTCFOUTPUT query="ModelList"&GT
	img#ID#hold = new Image();
	img#ID#hold.src = "#make#/#model#roll.gif";
&LT/CFOUTPUT&GT
}
/*
function imgAct(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "on.src");
        document["holder"].src = eval(imgName + "hold.src");
	}
}

function imgInact(imgName) {
	if (document.images) {
		document[imgName].src = eval(imgName + "off.src");
&LTCFOUTPUT&GT
		document["holder"].src = "../images/carmakes/#make#/#make#-hi.gif";
&LT/CFOUTPUT&GT
	}
}

function statusbartext(message)	{
		window.status=message;
		}
*/
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

&LTscript language="Javascript"&GT
&LT!--
 if (document.images) {
	img1on = new Image();
	img1on.src = "../images/mainmenuon.gif";
	img2on = new Image();
	img2on.src = "../images/selectoron.gif";
	img3on = new Image();
	img3on.src = "../images/searchon.gif";
	img4on = new Image();
	img4on.src = "../images/helpon.gif";
	img5on = new Image();
	img5on.src = "../images/behindon.gif";
	img6on = new Image();
	img6on.src = "../images/makeson.gif";

	img1off = new Image();
	img1off.src = "../images/mainmenu.gif";
	img2off = new Image();
	img2off.src = "../images/selector.gif";
	img3off = new Image();
	img3off.src = "../images/search.gif";
	img4off = new Image();
	img4off.src = "../images/help.gif";
	img5off = new Image();
	img5off.src = "../images/behind.gif";
	img6off = new Image();
	img6off.src = "../images/makes.gif";
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

&LT!-- #BeginBehavior MM_swapImage1 --&GT 
&LTscript language='JavaScript'&GT
  MM_preloadImages('../IMAGES/closeon.GIF');
&LT/script&GT
&LT!-- #EndBehavior MM_swapImage1 --&GT 
&LTDIV class="nav"&GT
&LTA HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"&GT&LTIMG name="img1" SRC="../images/mainmenu.gif" height="41" width="100" border="0"&GT&LT/a&GT

&LTA HREF="selector.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"&GT&LTIMG name="img2" SRC="../images/selector.gif" height="41" width="100" border="0"&GT&LT/a&GT

&LTA HREF="selector1.cfm" onMouseDown="imgActtoo('img6')" onMouseUp="imgInacttoo('img6')"&GT&LTIMG name="img6" src="../images/makes.gif" width="100" height="41" border="0"&GT&LT/a&GT

&LTA HREF="../search/search.cfm" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"&GT&LTIMG name="img3" SRC="../images/search.gif" height="41" width="100" border="0"&GT&LT/A&GT

&LTA HREF="#" onMouseDown="imgActtoo('img4')" onMouseUp="imgInacttoo('img4')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"&GT&LTIMG name="img4" SRC="../images/help.gif" height="41" width="100" border="0"&GT&LT/A&GT

&LTA HREF="#" onClick="openWin('../bts/behinds1.cfm')" onMouseDown="imgActtoo('img5')" onMouseUp="imgInacttoo('img5')"&GT&LTIMG name="img5" SRC="../images/behind.gif" height="41" width="100" border="0"&GT&LT/A&GT 
&LT/DIV&GT
&LTCFOUTPUT&GT
&LTDIV ID="holderimg" style="position: absolute; left: 790px; top: 458px; width: 200px; height: 200px; z-order: 30"&GT
&LTIMG name="holder" src="../images/carmakes/#make#/#make#-hi.gif" width="120" height="120"&GT
&LT/DIV&GT
&LT/CFOUTPUT&GT

&LTDIV class="choose" style="position: absolute; left: 420px"&GT
&LTCFIF #Url.make# IS "Alfa Romeo"&GT
	&LTCFOUTPUT&GTchoose an #Url.make#&LT/CFOUTPUT&GT
&LTCFELSEIF #Url.make# IS "Audi"&GT
	&LTCFOUTPUT&GTchoose an #Url.make#&LT/CFOUTPUT&GT
&LTCFELSE&GT
	&LTCFOUTPUT&GTchoose a #Url.make#&LT/CFOUTPUT&GT
&LT/cfif&GT
&LT/DIV&GT

&LTDIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 620px;	top: 25px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-order: 30;"&GT
&LTOL style="text-align: left;"&GT
	&LTLI&GTHold the mouse pointer over an image to see the car's description&LT/LI&GT
	&LTLI&GTClick an image to go to the 3D preview!&LT/LI&GT
&LT/OL&GT
&LTCENTER&GT
    &LTA HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"&GT&LTimg  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"&GT&LT/a&GT 
  &LT/CENTER&GT 
&LT/DIV&GT

&LTCFIF #ModelList.RecordCount# LT 4&GT
&LTDIV style="position: absolute; left: 224px; top: 335px; width: 500px" align="center"&GT
&LTCFELSEIF #ModelList.RecordCount# LT 7&GT
&LTDIV style="position: absolute; left: 224px; top: 290px; width: 500px" align="center"&GT
&LTCFELSEIF #ModelList.RecordCount# LT 10&GT
&LTDIV style="position: absolute; left: 224px; top: 245px; width: 500px" align="center"&GT
&LTCFELSE&GT
&LTDIV style="position: absolute; left: 224px; top: 200px; width: 500px" align="center"&GT
&LT/cfif&GT
&LTCFOUTPUT query="ModelList"&GT
&LT!--#make#/#Replace(model," ","","ALL")#--&GT
&LTA HREF="selector2.cfm?make=#make#&model=#model#" onmouseover="imgAct('img#ID#');return true" onmouseout="imgInact('img#ID#')"&GT&LTIMG name="img#ID#" src="#make#/#Model#.jpg" height="90" width="160" border="0" ALT="#make# #model#"&GT&LT/a&GT
&LT/cfoutput&GT
&LT/div&GT&LT/div&GT&LT/div&GT&LT/div&GT
</pre>


</BODY>
</HTML>
