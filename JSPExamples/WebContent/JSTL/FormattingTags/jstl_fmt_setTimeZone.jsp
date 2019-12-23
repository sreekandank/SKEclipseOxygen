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
<c:set var="date" value="<%=new java.util.Date()%>" />  
<p>
<b>Date and Time in Indian Standard Time(IST) Zone:</b> 
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long" />
</p>  
<fmt:setTimeZone value="GMT-10" />  
<p>
<b>Date and Time in GMT-10 time Zone: </b>
<fmt:formatDate value="${date}" type="both" timeStyle="long" dateStyle="long" /></p>
</body>
</html>