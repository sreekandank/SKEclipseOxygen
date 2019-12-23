<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Designed For SQL Injection Demo</h3>
<p>
Input the value: 
<span style="color:red">500 or 1=1</span>
</p>
<form name="frm" action="SQLInjectionDemo.jsp" method="post">
<table>
<tr>
<td>Enter Roll No:</td>
<td><input type="text" name="roll"/></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Get Record"/>
</tr>
</table>
</form>
</body>
</html>