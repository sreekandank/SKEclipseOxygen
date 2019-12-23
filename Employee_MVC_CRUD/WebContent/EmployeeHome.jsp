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
<table border="1">
<tr><th>ID</th><th>Name</th><th>Role</th><th>Basic Salary</th><th>Actions</th></tr>
<%
Connection con=null;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
String query = "select * from tbl_employee ORDER BY emp_id";
PreparedStatement ps=con.prepareStatement(query);
ResultSet rs = ps.executeQuery();
while(rs.next())
{
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><a href="StudentUpdate.jsp?rno=<%=rs.getInt(1)%>">Update&nbsp;&nbsp;</a>
<a href="StudentDelete.jsp?rno=<%=rs.getInt(1)%>" onclick="return confirm('Are you sure?')">Delete</a></td>
</tr>	
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
</table>
<a href="EmployeeForm.jsp">Create New Record</a>
</body>
</html>