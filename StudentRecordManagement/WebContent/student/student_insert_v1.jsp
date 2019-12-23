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
                  <td height="33" align="center" valign="middle">
 				<%@ include file="../includes/menu.jsp" %>
                  
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle" style="font-family: Cambria, 'Hoefler Text', 'Liberation Serif', Times, 'Times New Roman', serif; font-weight: bold; font-size: large;">Student Details Insert</td>
                </tr>
                <tr>
                   <%!
                   int student_id,mark1,mark2,mark3;
                   String student_name,sMark1,sMark2,sMark3,sStudent_id;
                   String eStudent_name,eMark1,eMark2,eMark3,eStudent_id;
                   
                   boolean ErrorFlag=false;
                   boolean sErrorFlag=false;
                   String message="";
                 
                   StudentDTO student=null;
                   int result=0;
                   
                   %>
                   <%
                   if(request.getParameter("submit")!=null)
                   {
                	   
                	   message="";
                	   ErrorFlag=false;
                	   sErrorFlag=false;
                	   student_name="";sMark1="";sMark2="";sMark3="";sStudent_id="";
                	   eStudent_name="";eMark1="";eMark2="";eMark3="";eStudent_id="";
                	   
                	   
                	   try
                	    {
                		   
               		    	student_name=request.getParameter("txtStudentName");
               		    	sStudent_id=request.getParameter("txtStudentID");
               		    	sMark1=request.getParameter("txtMark1");
               		    	sMark2=request.getParameter("txtMark2");
               		    	sMark3=request.getParameter("txtMark3");
               		    	
               		    	if(student_name.equals(""))
               		    	{
               		    		eStudent_name="Name should not be empty";
               		    	   sErrorFlag=true;
               		    	}
		               		if(sStudent_id.equals(""))
		           		    {
		               			eStudent_id="Student ID should not be empty";
		               		   sErrorFlag=true;
		           		    }
           		    	
               		    	if(sMark1.equals(""))
               		    	{
               		    		eMark1="Mark 1 should not be empty";
               		    	   sErrorFlag=true;
               		    	}
               		    	if(sMark2.equals(""))
               		    	{
               		    		eMark2="Mark2 should not be empty";
               		    	   sErrorFlag=true;
               		    	}
               		    	if(sMark3.equals(""))
               		    	{
               		    		eMark3="Mark3 should not be empty";
               		    	   sErrorFlag=true;
               		    	}
                	    
               		    	if(!sErrorFlag)
               		    	{
                		    student_id= Integer.parseInt(sStudent_id);
                		    mark1= Integer.parseInt(sMark1);
                		    mark2= Integer.parseInt(sMark2);
                		    mark3= Integer.parseInt(sMark3);
                
                		  
                		    student = new StudentDTO();
                		    student.setStudent_ID(student_id);
                		    student.setStudent_Name(student_name);
                		    student.setMark1(mark1);
                		    student.setMark2(mark2);
                		    student.setMark3(mark3);
                		    
                		    
                		    
                		    if((mark1<0 || mark1 > 100 ))
                		    	
                		    {
                		    	ErrorFlag =true;
                		    	eMark1 ="Mark 1 should be between (1-100)";
                		    }
  							if((mark2<0 || mark2 > 100 ))
                		    	
                		    {
                		    	ErrorFlag =true;
                		    	eMark2 ="Mark 2 should be between (1-100)";
                		    }
							if((mark3<0 || mark3 > 100 ))
                		    	
                		    {
                		    	ErrorFlag =true;
                		    	eMark3 ="Mark 3 should be between (1-100)";
                		    }
                		    
                		    if(!ErrorFlag)
                		    {
                		    	 result= StudentBL.addStudent(student);
                 			    if(result>0)
                 			    {
                 			    	session.setAttribute("message", "student details added successfully!");
                 			    }
                 			    else
                 			    {
                 			      	session.setAttribute("message", "Please try again later!");
                 			    }
                 		    
                 		   response.sendRedirect("student_view_all.jsp");
                 		    	
                		    }
               		    }
                                               		    
                	    }
                	    catch(NumberFormatException e)
                	    {
                				eStudent_id = "id should be positive integer";
                	    }
                	   catch(Exception e)
               	  		{
               				System.out.println("**Error** Student: student_add_prcoess.jsp "+e.getMessage());
               				message = "error " +  e.getMessage();
               	   		}
                	    
                	   
                	   
                   }
                  else
                   {
                	   message="";
                	   ErrorFlag=false;
                	   sErrorFlag=false;
                	   student_name="";sMark1="";sMark2="";sMark3="";sStudent_id="";
                	   eStudent_name="";eMark1="";eMark2="";eMark3="";eStudent_id="";
                	   
                   }
                   
                   %>
                   
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                  <%=message %>
                  
                  </td>
                </tr>
                <tr>
                  <td height="33" align="center" valign="middle">
					  <form  method="post" onsubmit="return validate();" >
					    <table width="100%" border="0">
					      <tbody>
					        <tr>
					          <td width="11%" height="30">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="11%">&nbsp;</td>
					          <td width="17%" align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student ID</td>
					          <td width="1%">&nbsp;</td>
					          <td width="16%" align="left" valign="middle">
					            <input type="text" name="txtStudentID" id="txtStudentID" value='<%=sStudent_id%>'></td>
					          <td width="26%" align="left" valign="middle" style="color: #F70509" ><%=eStudent_id%></td>
					          <td width="2%">&nbsp;</td>
					          <td width="2%">&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Student Name					          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtStudentName" id="txtStudentName" value='<%=student_name%>'></td>
					          <td align="left" valign="middle" style="color: #F70509"><%=eStudent_name%></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	1				          </td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark1" value='<%=sMark1%>' id="txtMark1"></td>
					          <td align="left" valign="middle" style="color: #F70509"><%=eMark1%></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	2</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark2" value='<%=sMark2%>' id="txtMark2"></td>
					          <td align="left" valign="middle" style="color: #F70509"><%=eMark2%></td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          </tr>
					        <tr>
					          <td height="30">&nbsp;</td>
					          <td>&nbsp;</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle" style="font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif">Mark	3</td>
					          <td>&nbsp;</td>
					          <td align="left" valign="middle"><input type="text" name="txtMark3" id="txtMark3" value='<%=sMark3%>'></td>
					          <td align="left" valign="middle" style="color: #F70509"><%=eMark3%></td>
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
