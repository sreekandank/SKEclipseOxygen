<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
int s = Integer.parseInt(request.getParameter("sal"));
String n = request.getParameter("nm");
String r = request.getParameter("role");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
String query = "INSERT INTO tbl_employee(emp_name,emp_role,basic_salary)VALUES(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1, n);
ps.setString(2, r);
ps.setInt(3, s);
int status = ps.executeUpdate();
if(status>0)
{
	%>
	<script>
		alert("Record Inserted Sucessfully!");
		window.location = "EmployeeHome.jsp";
	</script>
<%
}
else
{
	%>
	<script>
	alert("Faild! Try Again!");
	window.location = "EmployeeHome.jsp";
	</script>
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