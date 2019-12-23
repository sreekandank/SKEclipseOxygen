<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
ServletContext context = getServletContext();
String dirName =context.getRealPath("\\Document");
System.out.println("file path:"+dirName);
MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
int id=Integer.parseInt(multi.getParameter("img_id"));
String img=multi.getParameter("img");
String fname = multi.getFilesystemName("img");
String fPath = context.getRealPath("\\Document\\"+fname);
File f = new File(fPath);
FileInputStream fs = new FileInputStream(f);
String q = "insert into IMAGE_TEST(id,image,fname)values(?,?,?)";
PreparedStatement ps = con.prepareStatement(q);
ps.setInt(1,id);
ps.setBinaryStream(2,fs,fs.available());
ps.setString(3,fname);
status = ps.executeUpdate();
if(status>0)
{
	%>
	<script>
	alert("Success");
	window.location = "ImageForm.html";
	</script>
	<% 
}
else
{
	%>
	<script>
	alert("Faild!");
	window.location = "ImageForm.html";
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