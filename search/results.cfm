<HTML>
<HEAD>
	<TITLE>WebWheelz Catalogue Search Results</TITLE>
	<LINK rel="Stylesheet" TYPE="text/css" HREF="../wheelz.css">
<script language="Javascript">
<!--
 if (document.images) {
	img1on = new Image();
	img1on.src = "../images/smainmenuon.gif";
	img2on = new Image();
	img2on.src = "../images/searchon.gif";
	img3on = new Image();
	img3on.src = "../images/helpon.gif";
	img4on = new Image();
	img4on.src = "../images/behindon.gif";

	img1off = new Image();
	img1off.src = "../images/smainmenu.gif";
	img2off = new Image();
	img2off.src = "../images/search.gif";
	img3off = new Image();
	img3off.src = "../images/help.gif";
	img4off = new Image();
	img4off.src = "../images/behind.gif";
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
  <script language="JavaScript">
<!--
function MM_swapImgRestore() { //v1.2
  if (document.MM_swapImgData != null)
    for (var i=0; i<(document.MM_swapImgData.length-1); i+=2)
      document.MM_swapImgData[i].src = document.MM_swapImgData[i+1];
}
//-->
</script>
</HEAD>

<CFQUERY NAME="GetWheelList" DATASOURCE="wheels">	
	SELECT * FROM Wheels WHERE 0=0
	<CFIF #make# is not "">		AND Manuf LIKE '#make#'		</CFIF>
	<CFIF #model# is not "">	AND Model = '#model#'		</CFIF>
	<CFIF #size# is not "">		AND Size = '#Size#'			</CFIF>
</CFQUERY>

<CFIF #ParameterExists(StartRow)# IS "No">
	<CFSET StartRow = 1>
<CFELSE>
	<CFSET StartRow = (StartRow + 10)>
</CFIF>

<BODY>
<!-- #BeginBehavior MM_swapImage1 --> 
<script language='JavaScript'>
  MM_preloadImages('../IMAGES/closeon.GIF');
</script>
<!-- #EndBehavior MM_swapImage1 --> 
<DIV style="position: absolute; left: 200px; top: 125px; width: 724px">
<H2>Search Results</h2>

<TABLE CELLSPACING="2" CELLPADDING="2" border="0">
<TR>
<TD colspan="6">
<CFIF #GetWheelList.RecordCount# IS 0>
	<CFOUTPUT>
    	Your search found no
		<CFIF #size# IS NOT ''>#size#&quot; </cfif>
		<CFIF #make# IS NOT ''>#form.make# </cfif>
		<CFIF #model# IS NOT ''>#form.model# </cfif>wheels. Please try again.
		<center>
			<FORM NAME="GoBack" ACTION="search.cfm" METHOD="POST">
				<INPUT TYPE="SUBMIT" VALUE="Search again...">
			</FORM>
		</center>
	</CFOUTPUT>
	
<CFELSEIF #GetWheelList.RecordCount# GT 1>
	<CFOUTPUT>
		<P>Your search found #GetWheelList.RecordCount# <CFIF #size# IS NOT ''>#size#&quot; </cfif>#make# #model# wheels:</P>
    </CFOUTPUT>
	
<CFELSE>
    <CFOUTPUT>
        <P>Your search found one <CFIF #size# IS NOT ''>#size#&quot; </cfif>#make# #model# wheel:</P>
    </CFOUTPUT>
</CFIF>
<CFIF (StartRow + 9) LT GetWheelList.RecordCount>
	<CFOUTPUT>
	<P><A HREF="results.cfm?StartRow=#StartRow#&Make=#URLEncodedFormat(Make)#&Model=#URLEncodedFormat(Model)#&Size=#URLEncodedFormat(Size)#">[ NEXT 10 RECORDS ]</A></P>
	</CFOUTPUT>
	<CFELSE><CFIF #GetWheelList.RecordCount# IS NOT 0><P>[ LAST PAGE ]</P></CFIF>
</CFIF>
</td>
</tr>
<CFIF #GetWheelList.RecordCount# IS NOT 0>
<TR>
	<TH width="80" align="left">Make</th>
	<th width="160" align="left">Model</th>
	<TH width="50">Size</th>
	<th width="50">Price</th>
	<th width="70">In Stock</th>
</tr>
</CFIF>
</TABLE>
</DIV>

<DIV ID="helptext" style="text-align: left; background: white; position: absolute;	left: 350px;	top: 300px;	width: 300px; border: solid; padding: 10px;	visibility: hidden; z-index: 300;">
<OL style="text-align: left;">
	<LI>Click on a wheel description to see the details.</LI>
</OL>
<CENTER>
    <A HREF="#" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','hide')" onMouseOver="MM_swapImage('document.layers[\'helptext\'].document.closebtn','document.closebtn','../IMAGES/closeon.GIF','MM_swapImage1')" onMouseOut="MM_swapImgRestore()"><img  name="closebtn" src="../images/close.gif" border="0" width="60" height="20"></a> 
  </CENTER> 
</DIV>

<DIV class="nav"> <A HREF="../index.cfm" onMouseDown="imgActtoo('img1')" onMouseUp="imgInacttoo('img1')"> 
  <IMG name="img1" SRC="../images/smainmenu.gif" height="41" width="100" border="0"> 
  </a> <a href="search.cfm" onMouseDown="imgActtoo('img2')" onMouseUp="imgInacttoo('img2')"> 
  <IMG name="img2" SRC="../images/search.gif" height="41" width="100" border="0"> 
  </a> <A HREF="#" onMouseDown="imgActtoo('img3')" onMouseUp="imgInacttoo('img3')" onClick="MM_showHideLayers('document.layers[\'helptext\']','document.all[\'helptext\']','show')"> 
  <IMG name="img3" SRC="../images/help.gif" height="41" width="100" border="0"> 
  </A> <A HREF="#" onClick="openWin('../bts/behinds1mod.cfm')" onMouseDown="imgActtoo('img4')" onMouseUp="imgInacttoo('img4')"> 
  <IMG name="img4" SRC="../images/behind.gif" height="41" width="100" border="0"> 
  </A> </DIV>


<CFIF #GetWheelList.RecordCount# IS NOT 0>
<DIV style="position: absolute; left: 200px; top: 240px; width: 714px; height: 368; overflow: auto">

<TABLE CELLSPACING="2" CELLPADDING="2" border="0">
<CFOUTPUT query="GetWheelList" maxrows="10">
<TR>
	<TD width="80">#Manuf#</td>
	<TD width="160"><A HREF="detail.cfm?make=#Manuf#&model=#model#&Size=#size#">#Model#</a></td>
	<TD width="50" align="center">#Size#&quot;</td>
	<TD width="50">£#DecimalFormat(Cost)#</td>
	<TD width="60" align="center">
		<CFIF #Available# IS '1'>
			<IMG SRC="../images/tick.gif" height="20" width="20">
		<CFELSE>
			<IMG SRC="../images/cross.gif" height="20" width="20">
		</cfif>
	</td>
</tr>
</cfoutput>
</table>
</DIV>
<DIV style="position: absolute; left: 200px; top: 620px; width: 724px">

<P style="font-family: Monospace">All prices include VAT at 17.5%</P>

</DIV>
</CFIF>
</BODY>
</HTML>