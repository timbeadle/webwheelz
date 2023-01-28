<HTML>
<HEAD>	
<TITLE>WebWheelz Wheel Selector</TITLE>
<link rel="stylesheet" type="text/css" href="../wheelz.css">
<!--BGSOUND src="sounds/deep.wav" loop="-1"--->
<script language="Javascript">
<!--
 if (document.images) {
	img1on = new Image();
	img1on.src = "../images/smainmenuon.gif";
	img2on = new Image();
	img2on.src = "../images/helpon.gif";
	img3on = new Image();
	img3on.src = "../images/behindon.gif";

	img1off = new Image();
	img1off.src = "../images/smainmenu.gif";
	img2off = new Image();
	img2off.src = "../images/help.gif";
	img3off = new Image();
	img3off.src = "../images/behind.gif";
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

function openWin(URL) {
bts = window.open(URL, "thewindow", "toolbar = no, width = 800, height = 450, status = no, scrollbars = yes, resize = no, menubar = no");
}
// -->
</script>
  <script language="JavaScript">
<!--
function MM_showHideLayers() { //v1.2
  var i, visStr, args, theObj;
  args = MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) { //with arg triples (objNS,objIE,visStr)
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
//-->
</script>
  <script language="JavaScript">
<!--
function MM_preloadImages() { //v1.2
  if (document.images) {
    var imgFiles = MM_preloadImages.arguments;
    var preloadArray = new Array();
    for (var i=0; i<imgFiles.length; i++) {
      preloadArray[i] = new Image;
      preloadArray[i].src = imgFiles[i];
    }
  }
}

function MM_swapImage() { //v1.2
  var i,j=0,objStr,obj,swapArray=new Array,oldArray=document.MM_swapImgData;
  for (i=0; i < (MM_swapImage.arguments.length-2); i+=3) {
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
//-->
</script>
</HEAD>

<BODY>
<!-- #BeginBehavior MM_swapImage1 --> 
<script language='JavaScript'>
  MM_preloadImages('../IMAGES/closeon.GIF');
</script>
<!-- #EndBehavior MM_swapImage1 --> 
<DIV class="nav"> <A HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"><IMG name="img1" SRC="../images/smainmenu.gif" height="41" width="100" border="0"></a> 
  <A HREF="#" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"><IMG name="img2" SRC="../images/help.gif" height="41" width="100" border="0"></A> 
  <A HREF="#" onClick="openWin('../bts/behinds1mod.cfm')" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"><IMG name="img3" SRC="../images/behind.gif" height="41" width="100" border="0"></A> 
</DIV>

<DIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 620px;	top: 25px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-order: 30;">
<OL style="text-align: left;">
	<LI>Hold the mouse pointer over an image to see the car's description</LI>
	<LI>Click an image to go to the 3D preview!</LI>
</OL>
<CENTER>
    <A HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')"><img  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"></a> 
  </CENTER> 
</DIV>

<DIV style="position: absolute; left: 200px; top: 150px; width: 600px; z-order: 5">
<H2>Search</h2>

<CFFORM ACTION="results.cfm" NAME="search" METHOD="POST">
		<P>Manufacturer
		<BR><CFINPUT NAME="make" SIZE=30 REQUIRED="No" MESSAGE="Please enter a wheel make">
		<BR>Model
		<BR><CFINPUT NAME="model" SIZE=30 REQUIRED="No" MESSAGE="Please enter a wheel model"></P>
		<SELECT name="size">
				<OPTION VALUE="" selected>Choose a size
				<OPTION VALUE="13">13"
				<OPTION VALUE="14">14"
				<OPTION VALUE="15">15"
				<OPTION VALUE="16">16"
				<OPTION VALUE="17">17"
				<OPTION VALUE="18">18"
		</SELECT>
		<P><INPUT TYPE="submit" VALUE="Submit Search"></P>
		<P>
			<INPUT TYPE="reset" VALUE="Clear Entries">
		</P>
	</CFFORM>
</DIV>
</BODY>
</html>