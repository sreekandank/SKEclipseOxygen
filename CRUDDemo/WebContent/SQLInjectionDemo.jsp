<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Designed For SQL Injection Demo</h3>
<%
Connection con=null;
String rn = request.getParameter("roll");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
String query = "select * from stud_tab where rno="+rn;
Statement stmt=con.createStatement();
ResultSet rs = stmt.executeQuery(query);
%>
<table border="1">
<tr><th>Roll No</th><th>Name</th><th>Department</th></tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
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
</body>
</html>