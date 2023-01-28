
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
  <script language="JavaScript">
<!--
function MM_swapImgRestore() { //v1.2
  if (document.MM_swapImgData != null)
    for (var i=0; i<(document.MM_swapImgData.length-1); i+=2)
      document.MM_swapImgData[i].src = document.MM_swapImgData[i+1];
}
//-->
</script>
<!-- #BeginBehavior MM_swapImage1 --> 
<script language="JavaScript">
  MM_preloadImages('../IMAGES/closeon.GIF');
</script>
<!-- #EndBehavior MM_swapImage1 --> 

<CFQUERY NAME="makelist" DATASOURCE="wheels">
	SELECT * from makes
	ORDER by Make
</CFQUERY>

<script language="Javascript">
<!--
 if (document.images) {
<CFOUTPUT query="makeList">
	img#ID#on = new Image();
	img#ID#on.src = "../images/carmakes/#make#/#make#on.gif";
</CFOUTPUT>

<CFOUTPUT query="makeList">
	img#ID#off = new Image();
	img#ID#off.src = "../images/carmakes/#make#/#make#.gif";
</CFOUTPUT>

<CFOUTPUT query="makeList">
	img#ID#hold = new Image();
	img#ID#hold.src = "../images/carmakes/#make#/#make#roll.gif";
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
		document["holder"].src = "../images/carmakes/blank.gif";
</CFOUTPUT>
	}
}

function statusbartext(message)	{
		window.status=message;
		}

// -->
</script>

<script language="Javascript">
<!--
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

<DIV class="choose" style="position: absolute; left: 494px; z-order: 25"> 
  <p align="right">choose a manufacturer</p>
</DIV>

<DIV class="nav">
<A HREF="../index.cfm" onmouseDown="imgActtoo('img1')"><IMG name="img1" SRC="../images/mainmenu.gif" height="41" width="100" border="0"></a>

<A HREF="selector.cfm" onmouseDown="imgActtoo('img2')"><IMG name="img2" SRC="../images/selector.gif" height="41" width="100" border="0"></a>

<A HREF="../search/search.cfm" onMouseDown="imgActtoo('img3')"><img name="img3" src="../images/search.gif" width="100" height="41" border="0"></A>

<A HREF="#" onmouseDown="imgActtoo('img4')" onmouseUp="imgInacttoo('img4')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"><IMG name="img4" SRC="../images/help.gif" height="41" width="100" border="0"></A>

<A HREF="#" onmouseDown="imgActtoo('img5');return true" onmouseUp="imgInacttoo('img5')" onClick="openWin('../bts/behinds1mak.cfm')"><IMG name="img5" SRC="../images/behind.gif" height="41" width="100" border="0"></A>
</DIV>

<DIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 450px;	top: 35px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-order: 300">
<OL style="text-align: left;">
	<LI>Hold the mouse pointer over a logo to see the manufacturer's name</LI>
	<LI>Click a logo to proceed to the cars!</LI>
</OL>
<CENTER>
  <A HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"><img  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"></a>
</CENTER> 
</DIV>

<DIV ID="holderimg" style="position: absolute; left: 600px; top: 590px; width: 200px; height: 50px; z-order: 25">
<IMG name="holder" src="../images/carmakes/blank.gif" width="260" height="50">
</DIV>

<DIV ID="logos" style="position: absolute; top: 200px; left: 212px; width: 600; z-order: 25">
<CENTER>
<CFOUTPUT query="makelist">
<A HREF="selector1.cfm?make=#make#" onmouseover="imgAct('img#ID#');statusbartext('#make#');return true" onmouseout="imgInact('img#ID#')"><IMG name="img#ID#" SRC="../images/carmakes/#make#/#Make#.gif" ALT="#Make#" HEIGHT="90" WIDTH="90" BORDER="0"></a>
</cfoutput>
</center>
</div>