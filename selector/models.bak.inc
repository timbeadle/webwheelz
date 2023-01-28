<CFQUERY NAME="ModelList" DATASOURCE="wheels">
	SELECT * from cars
	WHERE Make = '#Url.Make#'
	AND Regular = 1
	ORDER BY ID Asc
</CFQUERY>

<script language="Javascript">

<!--

 if (document.images) {
<CFOUTPUT query="ModelList">
	img#ID#on = new Image();
	img#ID#on.src = "#make#/#model#on.jpg";
</CFOUTPUT>

<CFOUTPUT query="ModelList">
	img#ID#off = new Image();
	img#ID#off.src = "#make#/#model#.jpg";
</CFOUTPUT>

<CFOUTPUT query="ModelList">
	img#ID#hold = new Image();
	img#ID#hold.src = "#make#/#model#roll.gif";
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
		document["holder"].src = "../images/carmakes/#make#/#make#-hi.gif";
</CFOUTPUT>
	}
}

function statusbartext(message)	{
		window.status=message;
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

// -->
</script>

<!-- #BeginBehavior MM_swapImage1 --> 
<script language='JavaScript'>
  MM_preloadImages('../IMAGES/closeon.GIF');
</script>
<!-- #EndBehavior MM_swapImage1 --> 
<DIV class="nav">
<A HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"><IMG name="img1" SRC="../images/mainmenu.gif" height="41" width="100" border="0"></a>

<A HREF="selector.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"><IMG name="img2" SRC="../images/selector.gif" height="41" width="100" border="0"></a>

<A HREF="selector1.cfm" onMouseDown="imgActtoo('img6')" onMouseUp="imgInacttoo('img6')"><IMG name="img6" src="../images/makes.gif" width="100" height="41" border="0"></a>

<A HREF="../search/search.cfm" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')"><IMG name="img3" SRC="../images/search.gif" height="41" width="100" border="0"></A>

<A HREF="#" onMouseDown="imgActtoo('img4')" onMouseUp="imgInacttoo('img4')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"><IMG name="img4" SRC="../images/help.gif" height="41" width="100" border="0"></A>

<A HREF="#" onClick="openWin('../bts/behinds1mod.cfm')" onMouseDown="imgActtoo('img5')" onMouseUp="imgInacttoo('img5')"><IMG name="img5" SRC="../images/behind.gif" height="41" width="100" border="0"></A> 
</DIV>
<CFOUTPUT>
<DIV ID="holderimg" style="position: absolute; left: 790px; top: 458px; width: 200px; height: 200px; z-order: 30">
<IMG name="holder" src="../images/carmakes/#make#/#make#-hi.gif" width="120" height="120">
</DIV>
</CFOUTPUT>

<DIV class="choose" style="position: absolute; left: 420px">
<CFIF #Url.make# IS "Alfa Romeo">
	<CFOUTPUT>choose an #Url.make#</CFOUTPUT>
<CFELSEIF #Url.make# IS "Audi">
	<CFOUTPUT>choose an #Url.make#</CFOUTPUT>
<CFELSE>
	<CFOUTPUT>choose a #Url.make#</CFOUTPUT>
</cfif>
</DIV>

<DIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 620px;	top: 25px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-order: 30;">
<OL style="text-align: left;">
	<LI>Hold the mouse pointer over an image to see the car's description</LI>
	<LI>Click an image to go to the 3D preview!</LI>
</OL>
<CENTER>
    <A HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"><img  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"></a> 
  </CENTER> 
</DIV>

<CFIF #ModelList.RecordCount# LT 4>
<DIV style="position: absolute; left: 224px; top: 335px; width: 500px" align="center">
<CFELSEIF #ModelList.RecordCount# LT 7>
<DIV style="position: absolute; left: 224px; top: 290px; width: 500px" align="center">
<CFELSEIF #ModelList.RecordCount# LT 10>
<DIV style="position: absolute; left: 224px; top: 245px; width: 500px" align="center">
<CFELSE>
<DIV style="position: absolute; left: 224px; top: 200px; width: 500px" align="center">
</cfif>
<CFOUTPUT query="ModelList">
<!--#make#/#Replace(model," ","","ALL")#-->
<A HREF="selector2.cfm?make=#make#&model=#model#" onmouseover="imgAct('img#ID#');return true" onmouseout="imgInact('img#ID#')"><IMG name="img#ID#" src="#make#/#Model#.jpg" height="90" width="160" border="0" ALT="#make# #model#"></a>
</cfoutput>
</div></div></div></div>