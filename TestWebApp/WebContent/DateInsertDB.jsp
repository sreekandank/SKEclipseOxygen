<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="sk.common.DateHelper"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
int status=0;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");   
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");
String dobStr = request.getParameter("dob");
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
Date dob = sdf.parse(dobStr);
String q = "insert into DATE_TEST(dob)values(?)";
PreparedStatement ps = con.prepareStatement(q);
ps.setDate(1,DateHelper.convertUtilDateToSqlDate(dob));
status = ps.executeUpdate();
if(status>0)
{
	%>
	<script>
	alert("Success");
	window.location = "DateForm.html";
	</script>
	<% 
}
else
{
	%>
	<script>
	alert("Faild!");
	window.location = "DateForm.html";
	</script>
	<% 
}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>