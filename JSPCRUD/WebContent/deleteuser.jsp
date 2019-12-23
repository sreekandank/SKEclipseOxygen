<%@page import="sk.DAO.UserDao"%>  
<jsp:useBean id="u" class="sk.UserBean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  