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
<c:out value="${fn:endsWith(msg,'Solutions')}"/><br/>
<c:out value="${fn:endsWith(msg,'solutions')}"/>
<c:if test="${fn:endsWith(msg,'Solutions')}">  
   <p>String ends with Solutions<p>  
</c:if>  
<c:if test="${fn:endsWith(msg,'solutions')}">   
   <p>String ends with solutions<p>  
</c:if>
</body>
</html>