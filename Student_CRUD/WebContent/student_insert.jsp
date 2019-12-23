<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1" import="sk.student.StudentBean,sk.student.StudentHandler"%> 
<%!
    String student_id,student_name,result;
    int mark1,mark2,mark3,total,output;
  
    %>
    
    <%
        student_id = request.getParameter("student_id");
       	student_name = request.getParameter("student_name");
        mark1 = Integer.parseInt(request.getParameter("mark1"));
        mark2 = Integer.parseInt(request.getParameter("mark2"));
        mark3 = Integer.parseInt(request.getParameter("mark3"));
        
         total =mark1 +mark2+mark3;
         result ="PASS";
         if(mark1<50 || mark2<50 || mark3 <50)
         {
         result="FAIL";
         }        
         
        StudentBean s1= new StudentBean();
        s1.setStudent_id(student_id);
        s1.setStudent_name(student_name);
        s1.setMark1(mark1);
        s1.setMark2(mark2);
        s1.setMark3(mark3);
        s1.setTotal(total);
        s1.setResult(result);
        
   StudentHandler sh= new StudentHandler();
    output=sh.student_insert(s1);
    
if(output>0)
{
out.print("Success");

response.sendRedirect("index.jsp");

}
else
{
out.print("Please Try again later");
}
%>