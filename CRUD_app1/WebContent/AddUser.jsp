<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="usr" class="bean.user"></jsp:useBean>
<jsp:setProperty property="*" name="usr"></jsp:setProperty>
<%
int status=UserDAO.insert(usr);
if(status>0){
	%>
	<script>
alert("Inserted Successfully");
window.location="UserForm.html";
</script>
<%
}
else
{
	%>
	<script>
alert("Failed..Try Again");
window.location="UserForm.html";
</script>
<%
}
%>
</body>
</html>