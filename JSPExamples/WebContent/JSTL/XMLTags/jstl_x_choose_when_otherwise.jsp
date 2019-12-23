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
<h3>Books Information:</h3>  
<c:set var="bookInfo">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Java:Developers Guide</name>  
  <author>Sreekandan K</author>  
  <price>700</price>  
</book> 
</books>  
</c:set>  
<x:parse xml="${bookInfo}" var="output"/>  
<x:choose>  
   <x:when select="$output//book[1]/author = 'Chetan'">  
      Book is written by Chetan  
   </x:when>  
   <x:when select="$output//book[2]/author = 'Sreekandan K'">  
      Book is written by Sreekandan K  
   </x:when>  
   <x:otherwise>  
      Unknown Author  
   </x:otherwise>  
</x:choose>
</body>
</html>