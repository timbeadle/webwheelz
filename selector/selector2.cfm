<!-- regular HTML opening tags, tells the browser it's dealing with HTML -->
<HTML>
<HEAD>
<!--
head tags surround stuff that goes in the head of the document: meta data, title of document,
JavaScripts (usually); though the scripts could go in the body it's better to put them in the
head so that no variables are parsed without first being declared
-->
	<TITLE>Wheel Selector</TITLE>
	<link rel="stylesheet" type="text/css" href="../wheelz.css">

<CFQUERY NAME="carlist" DATASOURCE="wheels">
	SELECT * from cars
	WHERE model = '#url.model#'
	AND make = '#url.make#'
</CFQUERY> 

<CFQUERY name="wheellist" datasource="wheels">
	SELECT * from wheels
	where Manuf = 'honda'
</cfquery>

<CFOUTPUT query="carlist">
	<CFSET wireframe="#wfmodel#">
</cfoutput>

<SCRIPT LANGUAGE="javascript">
//---------IE CLICK N DRAG CODE--------------------
var curElement;
function doMouseMove() {
	var newleft=0, newTop = 0
	if ((event.button==1) && (curElement!=null)) {
		// position object
        newleft=event.clientX-document.all.OuterDiv.offsetLeft-(curElement.offsetWidth/2)
        if (newleft<0) newleft=0
		curElement.style.pixelLeft= newleft
        newtop=event.clientY -document.all.OuterDiv.offsetTop-(curElement.offsetHeight/2)
        if (newtop<0) newtop=0
		curElement.style.pixelTop= newtop
        event.returnValue = false
		event.cancelBubble = true
	}
}

function doDragStart() {
	// Don't do default drag operation.
    if ("IMG"==event.srcElement.tagName)
		event.returnValue=false;
}

function doMouseDown() {
	if ((event.button==1) && (event.srcElement.tagName=="IMG"))
		curElement = event.srcElement
	}

	if (navigator.appName != "Netscape") {
		document.ondragstart = doDragStart;
		document.onmousedown = doMouseDown;
		document.onmousemove = doMouseMove;
		document.onmouseup = new Function("curElement=null")
	}


//--------NETSCAPE CLICK N DRAG CODE--------------------
		var oldX, oldY, objSelected="null";
		var totalDraggableItems=2;
		
function begindrag(e) {
		objSelected=getSelectedElement(e.pageX,e.pageY);
		if (objSelected != "null"){
				document.captureEvents(Event.MOUSEMOVE);
		   	 	document.onmousemove=drag;
				oldX=e.pageX;
				oldY=e.pageY;
	    		return false;
		}
	}

function enddrag(e) {
		document.onmousemove=0;
    	document.releaseEvents(Event.MOUSEMOVE);
		objSelected="null";
		return false;
}

function drag(e) {
		obj.offset(e.pageX - oldX, e.pageY - oldY);
    	oldX = e.pageX;
		oldY = e.pageY;
}

if (navigator.appName == "Netscape") {
	document.captureEvents(Event.MOUSEUP|Event.MOUSEDOWN);
	document.onmousedown=begindrag;
	document.onmouseup=enddrag;
}

function getSelectedElement(clickX,clickY){
	//for i through number of draggableItem
	//obj=draggableItem number
	//test if mouse has clicked within its borders
	for (var i=1; i<totalDraggableItems+1; i++){
		eval('obj=document.layers["draggableItem' +i+ '"]');
		if ( (clickX > obj.left) && (clickX < obj.left+obj.clip.width)
				 && (clickY > obj.top) && (clickY < obj.top+obj.clip.height)){			return obj;
				}
		}
		return ("null");
}

</SCRIPT>

<script language="Javascript">
<!--
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
  <script language="JavaScript">
<!--
function MM_swapImgRestore() { //v1.2
  if (document.MM_swapImgData != null)
    for (var i=0; i<(document.MM_swapImgData.length-1); i+=2)
      document.MM_swapImgData[i].src = document.MM_swapImgData[i+1];
}
//-->
</script>

<SCRIPT language="Javascript">
<!--Hide me from old stuff
function openWin(URL) {
bts = window.open(URL, "thewindow", "toolbar = no, width = 800, height = 450, status = no, scrollbars = yes, resize = no, menubar = no");
}

//-->
</script>
<STYLE TYPE="text/css">
#model {POSITION: absolute;  VISIBILITY: visible;  LEFT: 150; TOP: 538; Z-INDEX: 30; }
<CFOUTPUT query="wheellist">
.draggableItem#ID# {POSITION: absolute;  VISIBILITY: visible; LEFT: 570; TOP: 600; Z-INDEX: 40; }
</cfoutput>
</STYLE>

</HEAD>

<BODY>
<!-- #BeginBehavior MM_swapImage1 --> 
<script language="JavaScript">
  MM_preloadImages('../IMAGES/closeon.GIF');
</script>
<!-- #EndBehavior MM_swapImage1 -->

<DIV class="nav"> <A HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"> 
  <IMG name="img1" SRC="../images/mainmenu.gif" height="41" width="100" border="0"> 
  </a> <A HREF="selector.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"> 
  <IMG name="img2" SRC="../images/selector.gif" height="41" width="100" border="0"> 
  </a> <A HREF="selector1.cfm" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"> 
  <IMG name="img3" SRC="../images/makes.gif" height="41" width="100" border="0"> 
  </a> <CFOUTPUT>  <A HREF="selector1.cfm?make=#make#" onMouseDown="imgActtoo('img7')" onMouseUp="imgInacttoo('img7')">
  <img name="img7" src="../images/currentmake.gif" width="100" height="41" border="0"> 
  </a> </CFOUTPUT> <A HREF="../search/search.cfm" onMouseDown="imgActtoo('img4')" onMouseUp="imgInacttoo('img4')"> 
  <IMG name="img4" src="../images/search.gif" width="100" height="41" border="0"> 
  </a> <A HREF="#" onMouseDown="imgActtoo('img5')" onMouseUp="imgInacttoo('img5')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"> 
  <IMG name="img5" src="../images/help.gif" width="100" height="41" border="0"> 
  </a> <A HREF="#" onMouseDown="imgActtoo('img6')" onMouseUp="imgInacttoo('img6')" onClick="openWin('../bts/bts.htm#selector2');"> 
  <IMG name="img6" SRC="../images/behind.gif" width="100" height="41" border="0"> 
  </a> </DIV>

<DIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 500px;	top: 335px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-index: 30000">
<OL style="text-align: left;">
<CFOUTPUT query="carlist">
<CFIF #wfmodel# IS 'NO'>
	<LI>Sorry, there isn't a 3D preview of your car at present</LI>
	<LI>Come back again soon when we're sure to have added your car to the system.</LI>
<CFElSE>
	<LI>Use the mouse to move wheels onto the car.</LI>
	<LI>Change the view by clicking on the arrows.</LI>
</cfif>
</cfoutput>
</OL>
<CENTER>
    <A HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"><img  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"></a> 
  </CENTER> 
</DIV>

<CFOUTPUT query="carlist">
<DIV class="title">
	<CFIF #wfmodel# IS 0>
		<IMG src="#make#/#Model#-hi.jpg" height="180" width="320" ALIGN="left" hspace="10">
	<CFELSE>
		<IMG src="#make#/#Model#.jpg" height="90" width="160" ALIGN="left" hspace="10">
	</cfif>
	<H2 align="center">#Make# #Model#</h2>
	<CFIF #wfmodel# is 0><P class="comment">#comment#</P></cfif>
</DIV>
	<CFIF #wfmodel# IS 1>
		<DIV id="front34" style="position: absolute; left: 320px; top: 240px; width: 400px; height: 225px">
			<IMG src="#make#/#model#f34.jpg">
		</DIV>

		<DIV ID="rear34" style="position: absolute; left: 320px; top: 240px; width: 400px; height: 225px; visibility: hidden">
			<IMG SRC="#make#/#model#r34.jpg">
		</DIV>
		
<DIV ID="controls" style="position: absolute; left: 420px; top: 480px; width: 200px"> 
  <A HREF="JavaScript:MM_showHideLayers('document.layers[\'front34\']','document.all[\'front34\']','hide','document.layers[\'rear34\']','document.all[\'rear34\']','show')"><IMG SRC="../images/rotateccw.gif" border="0"></a><A HREF="JavaScript:MM_showHideLayers('document.layers[\'front34\']','document.all[\'front34\']','show','document.layers[\'rear34\']','document.all[\'rear34\']','hide')"><IMG SRC="../images/rotatecw.gif" border="0"></A> 
</DIV>
	</cfif>
</CFOUTPUT>

<!-- script for writing layers -->
<CFOUTPUT query="carlist">
	<CFIF #wfmodel# IS 1>
	<SCRIPT LANGUAGE="JavaScript">
	
document.write('<DIV ID=OuterDiv style="width:100%;height:380px; width: 600px; ">');
document.write('<IMG ID="model" SRC="#make#/#model#side.gif" WIDTH=400 HEIGHT=113 BORDER=0>');
	</CFIF>
</CFOUTPUT>


<CFOUTPUT query="wheellist">
<CFIF wireframe IS 1>
	document.write('<IMG class="draggableItem#ID#" SRC="../images/wheels/#manuf##model#.gif" WIDTH=55 HEIGHT=55 BORDER=0>');
	document.write('<IMG class="draggableItem#ID#" SRC="../images/wheels/#manuf##model#.gif" WIDTH=55 HEIGHT=55 BORDER=0>');
</cfif>
</CFOUTPUT>

<CFOUTPUT>
<CFIF wireframe IS 1>
	document.write('</DIV>');
	document.write('<SCRIPT FOR="model" EVENT="onmousedown">');
	document.write('event.cancelBubble=true');document.write('<\/SCRIPT>');
	document.write('<DIV style="position: absolute; width: 20px; height: 60px; left: 636px; top: 600px;">');
	document.write('<IMG src="../images/bigbracket.gif">');
	document.write('</DIV>');
	document.write('<DIV ID=Instruct style="position: absolute; width: 240px; height: 60px; left: 660px; top: 604px;">');
</CFIF>
</CFOUTPUT>

<CFOUTPUT query="wheellist" maxrows="1">
	<CFIF wireframe IS 1>
document.write('<P>There are #evaluate(wheellist.RecordCount*2)# wheels in #wheellist.recordCount# different styles to the left. Just drag and drop them onto the car!</P>');
document.write('</DIV>');

</SCRIPT>
</cfif>
</CFOUTPUT>
</BODY>
</HTML>
