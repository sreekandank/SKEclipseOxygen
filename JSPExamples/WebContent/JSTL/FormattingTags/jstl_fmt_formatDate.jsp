<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="Date" value="<%=new java.util.Date()%>" />  
<p>  
Formatted Time :  
<fmt:formatDate type="time" value="${Date}" />  
</p>  
<p>  
Formatted Date :  
<fmt:formatDate type="date" value="${Date}" />  
</p>  
<p>  
Formatted Date and Time :  
<fmt:formatDate type="both" value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in short style :  
<fmt:formatDate type="both" dateStyle="short" timeStyle="short"  
value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in medium style :  
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"  
value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in long style :  
<fmt:formatDate type="both" dateStyle="long" timeStyle="long"  
value="${Date}" />  
</p>
</body>
</html>