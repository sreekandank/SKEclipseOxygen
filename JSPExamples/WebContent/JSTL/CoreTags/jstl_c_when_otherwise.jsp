<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="age" scope="session" value="${18}"/> 
<p>Your age is: <c:out value="${age}"/> </p>
<c:choose>
<c:when test="${age < 18}">  
<p>You are not eligible for voting</p>  
</c:when> 
<c:otherwise>  
<p>You are eligible for voting</p>  
</c:otherwise>   
</c:choose>  
</body>
</html>