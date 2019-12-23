<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	table{border:1px solid blue; border-radius:5px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String name;
String gender;
String address;
String country;
%>
<%
name = request.getParameter("nm");
gender = request.getParameter("gender");
address = request.getParameter("addr");
country = request.getParameter("country");
%>
<table border="1">
	<tr>
		<td>Name</td><td><%=name %></td>
	</tr>
	<tr>
		<td>Gender</td><td><%=gender %></td>
	</tr>
	<tr>
		<td>Address</td><td><%=address %></td>
	</tr>
	<tr>
		<td>Country</td><td><%=country %></td>
	</tr>
</table>
</body>
</html>