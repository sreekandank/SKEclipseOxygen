<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- 
If exception occurs in the current page, it will be redirected to the error page (page_isErrorPage.jsp).
--%> 
<%@ page errorPage="page_isErrorPage.jsp" %>  
<%= 100/0 %>    
</body>
</html>