<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sk.dto.*,sk.bl.*,java.util.*"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>


<script src="../includes/validation.js">
</script>


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
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details Insert</td>
                </tr>
                <tr>
                <%! String message="";
                	ArrayList<StudentDTO> students=null;
                %>
                   
                   <% 
                  
                  if(session.getAttribute("message") !=null)
                  {
                	  message=(String)session.getAttribute("message") ;
                	  session.removeAttribute("message");
                  }
                                  %>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%=message %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" action="student_view_details.jsp" method="post" >
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					          <%
					          
					          students=StudentBL.getStudents();
					          
					          if(students!=null)
					          {
					        	  
					         
					          %>
					          
					          
					            <select name="sltStudentID" id="sltStudentID" >
					            <%
					            for(StudentDTO student: students)
					            {
					            %>
					            <option value='<%=student.getStudent_ID() %>'>  <%= student.getStudent_Name() %>   </option>
					            
					            <%
					            }
					            %>
					       
					            </select></td>
					            
					            <%
					          }
					            %>
					          <td width="11%"><input type="submit" name="submit" id="submit" value="Go">  </td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					         
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
