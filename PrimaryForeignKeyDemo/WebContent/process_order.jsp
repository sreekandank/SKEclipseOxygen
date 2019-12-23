<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection,java.sql.Statement,java.sql.DriverManager,java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int order_no=Integer.parseInt(request.getParameter("order_no"));
int cust_id=Integer.parseInt(request.getParameter("cid"));

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "SKmysql@123");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into cust_order(orderNo,cid)values("+order_no+","+cust_id+")");
	//String INSERT_QUERY = "INSERT INTO cust_order(orderNo,cid) values(?,(SELECT cid from customer where cid="+cust_id+"))";
	//PreparedStatement stmt=conn.prepareStatement(INSERT_QUERY);
	//stmt.setInt(1,order_no); 
	//int i=stmt.executeUpdate();
	out.println("Order Processed Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>