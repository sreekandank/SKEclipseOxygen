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
<h3>Book Information:</h3>  
<c:set var="xmltext">  
<books>  
<book>  
  <name>Three mistakes of my life</name>  
  <author>Chetan Bhagat</author>  
  <price>200</price>  
</book>  
<book>  
  <name>Tomorrow land</name>  
  <author>NUHA</author>  
  <price>2000</price>  
</book>
<book>  
  <name>Java:Developers Guide</name>  
  <author>Sreekandan K</author>  
  <price>700</price>  
</book>  
</books>  
</c:set>  
  
<c:import url="jstl_x_param_transformation.xsl" var="xslt"/>  
<x:transform xml="${xmltext}" xslt="${xslt}">  
   <x:param name="bgColor" value="yellow"/>  
</x:transform>
</body>  
</html>