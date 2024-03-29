<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Books Info:</h2>  
<c:import var="bookInfo" url="books.xml"/>  
  
<x:parse xml="${bookInfo}" var="output"/>  
<p><x:out select="$output/books/book[1]/name" />, <x:out select="$output/books/book[1]/author" /></p>  
<p><x:out select="$output/books/book[2]/name" />, <x:out select="$output/books/book[2]/author" /></p>
<p><x:out select="$output/books/book[3]/name" />, <x:out select="$output/books/book[3]/author" /></p>  
</body>
</html>