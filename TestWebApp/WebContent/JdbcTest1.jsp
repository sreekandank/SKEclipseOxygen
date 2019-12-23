<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>Roll No</th><th>Name</th><th>Department</th>
</tr>
<%
try
{   
	Class.forName("oracle.jdbc.driver.OracleDriver");   
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");   
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from stud_tab ORDER BY rno"); 
	System.out.println("RollNo\t\tName\t\tDepartment");
	while(rs.next())
	{
%>
	  <tr>
	  <td><%=rs.getInt(1) %></td><td><%=rs.getString(2) %></td><td><%=rs.getString(3)%></td>
	  </tr>
<%
	} 
	con.close();  
}
catch(Exception e)
{ 
	System.out.println(e);
} 
%>
</table>
</body>
</html>