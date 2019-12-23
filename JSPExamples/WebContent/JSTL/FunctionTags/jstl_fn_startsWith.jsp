<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="msg" value="Welcome to Concept Solutions"/> 
<c:out value="${fn:startsWith(msg,'Welcome')}"/><br/>
<c:out value="${fn:startsWith(msg,'welcome')}"/>
<c:if test="${fn:startsWith(msg,'Welcome')}">  
   <p>String starts with Welcome<p>  
</c:if>  
<c:if test="${fn:startsWith(msg,'welcome')}">   
   <p>String starts with welcome<p>  
</c:if>
</body>
</html>