<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sk.dto.*,sk.bl.*,java.util.*" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Mark System</title>
</head>

<body>
<table width="100%" height="688" border="0">
  <tbody>
    <tr>
      <td height="684" align="center" valign="top"><table width="100%" border="0">
        <tbody>
          <tr>
            <td height="138" align="center" valign="middle" bgcolor="#E7BF09"><h1 style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-size: xx-large;">Student Information System</h1></td>
          </tr>
          <tr>
            <td height="530" align="center" valign="top"><table width="100%" border="0">
              <tbody>
               <tr>
                  <td height="33" align="left" valign="middle" style="color: #F70509">
                  <% 
                  
                  if(session.getAttribute("user_name") !=null)
                  {
                 	out.println("    Hello  "+ (String)session.getAttribute("user_name") );
                 
                  }
                  else
                  {
                	  response.sendRedirect("../authentication/login.jsp");
                	  
                  }
                  
                  %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
                  
                  <%@ include file="../includes/menu.jsp" %>
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details </td>
                </tr>
                
                <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <% 
                  
                  if(session.getAttribute("message") !=null)
                  {
                 	out.println( (String)session.getAttribute("message") );
                 	session.removeAttribute("message");
                  }
                  
                  %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" method="post">
					  <%
					  ArrayList<StudentDTO> students=StudentBL.getStudents();
							 if(students!=null && (students.size()>0))
							  {
								  
							  %>
							    <table width="80%" border="1" align="center" bordercolor="#E7BF09" >
							      <tbody style="">
							        <tr>
							          <td width="11%" height="33" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
							          <td width="16%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student Name </span></td>
							          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	1 </span></td>
							          <td width="12%" align="center" valign="middle" bgcolor="#E7BF09" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	2</td>
							          <td width="11%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	3</span></td>
							          <td width="20%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Total</span></td>
							          <td width="18%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Result</span></td>
							          <td width="20%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Edit</span></td>
							          <td width="18%" align="center" valign="middle" bgcolor="#E7BF09"><span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Delete</span></td>
							          
							          </tr>
							          <%
							          for(StudentDTO student : students)
									  {
									    %>
							        <tr>
							          <td height="30"><%=student.getStudent_ID()  %></td>
							          <td><%=student.getStudent_Name()  %></td>
							          <td><%=student.getMark1()  %></td>
							          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif"><%=student.getMark2()  %></td>
							          <td><%=student.getMark3()  %></td>
							          <td align="left" valign="middle"><%=student.getTotal()  %></td>
							          <td><%=student.getResult()  %></td>
							          <td align="left" valign="middle"><a href="student_edit.jsp?student_id=<%=student.getStudent_ID()%>">Edit</a></td>
							      
							                 <td align="left" valign="middle"><a href="student_delete.jsp?student_id=<%=student.getStudent_ID()%>" onclick="return confirm('Are you sure to delete?')">Delete</a></td>
							       
							          </tr>
							        <%
									  }
							  }
							          else
							          {
							        	  %>
							        	  <tr>
							        	    <td colspan="7" align="center" valign="middle" bgcolor="#E7BF09">
							        	    <span style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">
							        	    No Students details found </span></td>
							        </tr>
							        	  
							        	  <%
							          }
					        	  
					          
					        %>
					        </tbody>
					      </table>
						  
						  
                      </form></td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">&nbsp;</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
          <tr>
            <td align="center" valign="top"><table width="100%" border="0">
              <tbody>
                <tr>
                  <td align="center" valign="middle" bgcolor="#000000">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center" valign="middle" bgcolor="#E7BF09">concept solutions &copy;2018</td>
                </tr>
              </tbody>
            </table></td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>
