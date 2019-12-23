<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
String query = "DELETE FROM stud_tab WHERE rno="+r;
PreparedStatement ps=con.prepareStatement(query);
int status = ps.executeUpdate();
if(status>0)
{
	%>
	<script>
		alert("Record Deleted Sucessfully!");
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