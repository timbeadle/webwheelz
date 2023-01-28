
<SCRIPT LANGUAGE="JavaScript">
	if (navigator.appName == "Netscape") {
	document.write('<DIV ID="model"><IMG SRC="#make#/#model#side.gif" WIDTH=400 HEIGHT=113 BORDER=0></DIV>');
	document.write('<DIV ID="draggableItem1"><IMG NAME="draggableItem1" SRC="draggableItem1.gif" WIDTH=75 HEIGHT=90 BORDER=0></DIV>');
	document.write('<DIV ID="draggableItem2"><IMG NAME="draggableItem2" SRC="draggableItem2.gif" WIDTH=50 HEIGHT=55 BORDER=0></DIV>');

	}
	else {
document.write('<DIV ID=OuterDiv style="width:100%;height:380px; width: 600px; ">');
document.write('<IMG ID="model" SRC="#make#/#model#side.gif" WIDTH=400 HEIGHT=113 BORDER=0>');

document.write('<CFOUTPUT query="wheellist">');
	document.write('<IMG class="draggableItem#ID#" SRC="../images/wheels/#manuf##model#.gif" WIDTH=55 HEIGHT=55 BORDER=0>');
	document.write('<IMG class="draggableItem#ID#" SRC="../images/wheels/#manuf##model#.gif" WIDTH=55 HEIGHT=55 BORDER=0>');

	document.write('</DIV>');
	document.write('<SCRIPT FOR="model" EVENT="onmousedown">');
	document.write('event.cancelBubble=true');document.write('<\/SCRIPT>');
}

document.write('<DIV style="position: absolute; width: 20px; height: 60px; left: 636px; top: 600px;">');
document.write('<IMG src="../images/bigbracket.gif">');
document.write('</DIV>');
document.write('<DIV ID=Instruct style="position: absolute; width: 240px; height: 60px; left: 660px; top: 604px;">');
document.write('<CFOUTPUT query="wheellist" maxrows="1">');
document.write('<P>There are #evaluate(wheellist.RecordCount*2)# wheels in #wheellist.recordCount# different styles to the left. Just drag and drop them onto the car!</P>');
document.write('</CFOUTPUT>');
document.write('</DIV>');

</SCRIPT>
