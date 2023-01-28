<HTML>
<CFQUERY name="car_result">
SELECT * FROM cars
	WHERE Model = '#Form.sel_model#'
</cfquery>
<HEAD>
	<TITLE><CFOUTPUT QUERY="car_result">#Manuf# #Model#</CFOUTPUT></TITLE>
</HEAD>

<BODY>



</BODY>
</HTML>
