<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV="Refresh" CONTENT="180; URL=http://PC-0001/webwheelz/">
	<TITLE>Wheel Selector</TITLE>
	<link rel="stylesheet" type="text/css" href="../wheelz.css">
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
<DIV class="what">
what
</DIV>
<div class="car">
car
</DIV>
<DIV class="do">
do you drive?
</DIV>
<DIV ID="topline" style="position: absolute; left: 0px; top: 180px; z-index: 0">
<IMG src="../images/line.gif" width="792" height="2">
</DIV>

<DIV ID="bottomline" style="position: absolute; left: 232px; top: 567px; z-index: 40">
<IMG src="../images/line.gif" width="792" height="2">
</DIV>

		<CFIF #ParameterExists(Url.Make)# IS "Yes">
			<CFINCLUDE TEMPLATE="models.inc">
		<CFELSE>
			<CFINCLUDE TEMPLATE="makes.inc">
		</CFIF>
</BODY>
</HTML>