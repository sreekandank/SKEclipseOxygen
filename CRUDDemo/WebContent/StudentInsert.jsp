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
int r = Integer.parseInt(request.getParameter("roll"));
String n = request.getParameter("nm");
String d = request.getParameter("dept");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
String query = "INSERT INTO stud_tab(rno,s_name,dept)VALUES(?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1, r);
ps.setString(2, n);
ps.setString(3, d);
int status = ps.executeUpdate();
if(status>0)
{
	%>
	<script>
		alert("Record Inserted Sucessfully!");
		window.location = "StudentHome.jsp";
	</script>
<%
}
else
{
	%>
	<script>
	alert("Faild! Try Again!");
	window.location = "StudentHome.jsp";
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