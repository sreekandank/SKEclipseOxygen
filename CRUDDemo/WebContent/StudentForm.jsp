<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function val()
{
	var rn = parseInt(document.frm.roll.value);
	if(document.frm.roll.value=="")
	{
		var elt1 = document.getElementById("sid1");
		elt1.innerHTML = "Roll No is required";
		return false;
	}
	else if(rn<=0 || rn>100)
	{
		var elt1 = document.getElementById("sid1");
		elt1.innerHTML="Roll Number Should be in the range 1 - 100";
		return false;
	}
	else
	{
		return true;
	}
}
</script>
</head>
<body>
<form name="frm" onsubmit="return val()" action="StudentInsert.jsp" method="post">
<table>
<tr>
<td>Roll No:</td>
<td><input type="text" name="roll"/><span id="sid1" style="color:red"></span></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="nm" required/></td>
</tr>
<tr>
<td>Department:</td>
<td><input type="text" name="dept" required/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Insert"/>
<input type="reset" value="Clear" onclick="return confirm('Do you want to clear the form?')"/>
</tr>
</table>
</form>
</body>
</html>