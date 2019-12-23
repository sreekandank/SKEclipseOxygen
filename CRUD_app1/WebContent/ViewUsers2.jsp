<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.user,dao.UserDAO,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Password</th><th>E-mail</th><th>Sex</th><th>Country</th>
<th>Edit</th><th>Delete</th>
</tr>
<%
List<user> list = UserDAO.getAllRecords();
Iterator<user> itr=list.iterator();
while(itr.hasNext())
{
	 user u = itr.next();
%>
<tr>
<td><%=u.getId()%></td><td><%=u.getName()%></td><td><%=u.getPassword()%></td>
<td><%=u.getEmail()%></td><td><%=u.getSex()%></td><td><%=u.getCountry()%></td>
<td><a href="EditUserForm.jsp?id=<%=u.getId()%>">Edit</a></td>
<td><a href="DeleteUser.jsp?id=<%=u.getId()%>">Delete</a></td>
</tr>
<%
}
%>
</table>
</body>
</html>