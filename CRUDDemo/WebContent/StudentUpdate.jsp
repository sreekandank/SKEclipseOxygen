<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
int r = Integer.parseInt(request.getParameter("rno"));
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
String query = "select * from stud_tab where rno="+r;
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
<form action="StudentUpdateDB.jsp" method="post">
<table>
<tr>
<td>Roll No:</td>
<td><input type="text" name="roll" value="<%=rs.getInt(1)%>" required/></td>
</tr>
<tr>
<td>Name:</td>
<td><input type="text" name="nm" value="<%=rs.getString(2)%>" required/></td>
</tr>
<tr>
<td>Department:</td>
<td><input type="text" name="dept" value="<%=rs.getString(3)%>" required/></td>
</tr>
<tr>
<td></td><td><input type="submit" value="Save" onclick="return confirm('Are you sure')"/></td>
</tr>
</table>
</form>
<%
}
}
catch(Exception e)
{
	e.printStackTrace();
}
finally
{
	con.close();
}
%>
</body>
</html>