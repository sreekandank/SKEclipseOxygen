<%@page import="sk.bl.StudentBL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
int student_id=0;
int result=0;
%>
<%
student_id=Integer.parseInt(request.getParameter("student_id"));

result=StudentBL.deleteStudent(student_id);

		if(result>0)
		 {
		 	session.setAttribute("message", "student details deleted  successfully!");
		 }
		 else
		 {
		   	session.setAttribute("message", "Please try again later!");
		 }

	response.sendRedirect("student_view_all.jsp");

%>

</body>
</html>