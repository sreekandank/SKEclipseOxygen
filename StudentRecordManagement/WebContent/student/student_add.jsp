<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sk.dto.*"%>
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
                  <td height="33" align="center" valign="middle">
 				<%@ include file="../includes/menu.jsp" %>
                  
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details Insert</td>
                </tr>
                <tr>
                   <%!
                   String student_name="";
                   String student_id="",mark1="",mark2="",mark3="";
                   String message="";
                   StudentDTO student=null;
                   
                   %>
                   
                   <% 
                  
                  if(session.getAttribute("message") !=null)
                  {
                	  System.out.println("message available");
                	  message=(String)session.getAttribute("message") ;
                	  session.removeAttribute("message");
                  }
                  else
                  {//session.removeAttribute("message");
                	  System.out.println("message not  available");
                	  message=""; 
                  }
                   if(session.getAttribute("data") !=null)
                   {
                	   System.out.println("data available");
                  	 student = ((StudentDTO)session.getAttribute("data") );

                  	
                  	student_id = ""+student.getStudent_ID();
                  	student_name = student.getStudent_Name();
                	mark1= ""+student.getMark1();
                    mark2= ""+student.getMark2();
                    mark3= ""+student.getMark3();
                    student=null;
                   // session.removeAttribute("message");
                  //  request.getSession().setAttribute("data",student);
                  session.removeAttribute("data");
                  }
                   else
                   {
                	   System.out.println("data Not available");
                	    student_name="";
                         student_id="";mark1="";mark2="";mark3="";
                         message="";
                       
                   }
                  %>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%=message %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form id="form1" name="form1" action="student_add_process.jsp" method="post" >
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtStudentID" id="txtStudentID" value='<%=student_id%>'></td>
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
					          <td align="left" valign="middle"><input type="text" name="txtStudentName" id="txtStudentName" value='<%=student_name%>'></td>
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
					          <td align="left" valign="middle"><input type="text" name="txtMark1" value='<%=mark1%>' id="txtMark1"></td>
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
					          <td align="left" valign="middle"><input type="text" name="txtMark2" value='<%=mark2%>' id="txtMark2"></td>
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
					          <td align="left" valign="middle"><input type="text" name="txtMark3" id="txtMark3" value='<%=mark3%>'></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="submit" name="submit" id="submit" value="Submit"></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
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
