<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="mydb" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost:3306/test"  
     user="root"  password="SKmysql@123"/>
<sql:update dataSource="${mydb}" var="count">  
INSERT INTO employee VALUES (1,'Gajra', 'Testing', 25);  
</sql:update>  
<sql:query dataSource="${mydb}" var="rs">  
SELECT * from employee;  
</sql:query>  
<table border="2" width="100%">
<caption>Employee Details</caption>  
<tr>  
<th>ID</th>  
<th>Name</th>  
<th>Department</th>  
<th>Age</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.name}"/></td>  
<td><c:out value="${table.dept}"/></td>  
<td><c:out value="${table.age}"/></td>  
</tr>  
</c:forEach>  
</table>
</body>
</html>