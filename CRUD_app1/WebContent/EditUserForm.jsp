<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.user,dao.UserDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
user u=UserDAO.getRecordById(id);
%>
<form action="EditUser.jsp" method="post">
<table>
<tr><td>ID:</td><td><input type="text" name="id" value="<%=u.getId()%>"></td></tr>
<tr><td>Name:</td><td><input type="text" name="name" value="<%=u.getName()%>"></td></tr>
<tr><td>Password:</td><td><input type="password" name="password" value="<%=u.getPassword()%>"></td></tr>
<tr><td>E-mail</td><td><input type="text" name="email" value="<%=u.getEmail()%>"></td></tr>
<tr><td>Sex:</td>
<td>
<input type="radio" name="sex" value="Male">Male
<input type="radio" name="sex" value="Female">Female
</td>
</tr>
<tr>
<td>Country:</td>
<td>
<select name="country">
<option>India</option>
<option>Nepal</option>
<option>Sri Lanka</option>
<option>UAE</option>
<option>USA</option>
</select>
</td>
</tr>
<tr><td colspan="2"><input type="submit" value="Edit User"></td></tr>
</table>
</form>
</body>
</html>