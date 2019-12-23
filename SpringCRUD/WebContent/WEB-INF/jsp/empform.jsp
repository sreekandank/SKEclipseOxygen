<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
        <h1>Add New Employee</h1>  
       <form:form method="post" action="save">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Department :</td>    
          <td><form:input path="dept" /></td>  
         </tr>   
         <tr>    
          <td>Age :</td>    
          <td><form:input path="age" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Add" /></td>    
         </tr>    
        </table>    
       </form:form> 