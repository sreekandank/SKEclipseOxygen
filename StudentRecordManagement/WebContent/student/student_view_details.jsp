<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sk.dto.*,sk.bl.*"%>
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
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details </td>
                </tr>
                <tr>
                 <%! String message="";
                 int student_id;
                 StudentDTO student=null;
                 
                 %>
                   
                   <% 
                  
                  if(session.getAttribute("message") !=null)
                  {
                	  System.out.println("message available");
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
					  <form >
					  
					  <% 
					  student_id=Integer.parseInt(request.getParameter("sltStudentID"));
					 student= StudentBL.getStudent(student_id);
					 
					 if(student!=null)
					 {
					  
					  %>
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <%= student.getStudent_ID() %>
					            
					            </td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student Name					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
					               <%= student.getStudent_Name() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	1				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
					            <%= student.getMark1() %>
					           </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	2</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
					            <%= student.getMark2() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	3</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
							 <%= student.getMark3() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 
					          'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Total</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
							 <%= student.getTotal() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					          <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Result</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle">
							 <%= student.getResult() %>
					          </td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					          
					        </tbody>
					      </table>
						  <%
						 }
					 else
					 {
						%> 
						 <table width="100%" border="0">
					      <tbody>
					        <tr><td>
					        There is no such student
					        </td>
					        </tr>
					        </tbody>
					        </table>
						 <% 
					 }
						  %>
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
