<%@page import="sk.bl.StudentBL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="sk.*,sk.bl.*,sk.dto.*" %>
    <%!
    int student_id,mark1,mark2,mark3;
    String student_name;
    
    boolean ErrorFlag=false;
    String ErrorMessage="|";
  
    StudentDTO student=null;
    int result=0;
    %>
    
    <%
    try
    {
    
	    student_id= Integer.parseInt(request.getParameter("txtStudentID"));
	    mark1= Integer.parseInt(request.getParameter("txtMark1"));
	    mark2= Integer.parseInt(request.getParameter("txtMark2"));
	    mark3= Integer.parseInt(request.getParameter("txtMark3"));
	    student_name=request.getParameter("txtStudentName");
	  
	    student = new StudentDTO();
	    student.setStudent_ID(student_id);
	    student.setStudent_Name(student_name);
	    student.setMark1(mark1);
	    student.setMark2(mark2);
	    student.setMark3(mark3);
	    
	    System.out.println("ErrorFlag " +ErrorFlag);
	    
	    if((mark1<0 || mark1 > 100 ) || (mark2<0 || mark2 > 100 )||(mark3<0 || mark3 > 100 ) )
	    {
	    	System.out.println("mark1 " +mark1);
	    	System.out.println("mark2 " +mark2);
	    	System.out.println("mark3 " +mark3);
	    	ErrorFlag =true;
	    	ErrorMessage +=" Mark should be between (1-100) | ";
	    }
	    
	    if(student_name.equals(""))
	    {
	    	ErrorFlag =true;
	    	ErrorMessage +=" Name Should not be empty | ";
	    }
	    System.out.println("ErrorFlag " +ErrorFlag);
	    if(ErrorFlag)
	    {
	    	ErrorFlag=false;
			session.setAttribute("data", student);
			session.setAttribute("message", ErrorMessage);
			//response.sendRedirect("student_add.jsp");
			
			 RequestDispatcher rd=request.getRequestDispatcher("student_add.jsp");
			    rd.forward(request, response);
	    }
	    else
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
    catch(Exception e)
    {
		System.out.println("**Error** Student: student_add_prcoess.jsp "+e.getMessage());
		
		session.setAttribute("data", student);
		session.setAttribute("message", "Please enter a valid mark");
		response.sendRedirect("student_add.jsp");
    }
    
    %>
    
