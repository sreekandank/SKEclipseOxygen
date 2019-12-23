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
<c:set var="mark" scope="session" value="${79}"/>  
<p>MARK : <c:out value="${mark}"/></p>  
<c:choose>  
    <c:when test="${mark>90 && mark<=100}">  
       Grade: S  
    </c:when>  
    <c:when test="${mark>70 && mark<=90}">  
        Grade: A  
    </c:when> 
    <c:when test="${mark>=50 && mark<=70}">  
        Grade: B  
    </c:when> 
    <c:otherwise>  
       Grade: C (FAIL)  
    </c:otherwise>  
</c:choose>  
</body>
</html>