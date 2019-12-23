<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "sk.bl.*,sk.dto.*"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 15%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Login Form</h2>

<form action="" method="post">
  <div class="imgcontainer">
    <img src="../images/img_avatar2.png" alt="Avatar" class="avatar">
  </div>
  <div>
  <table>
  <tr>
                  <td height="33" align="center" valign="middle" style="color: #F70509">
                <%! String message=""; 
                String user_id,password;
                User user1=null;
                User user2=null;
                
                %>
                
                  <%
                  //System.out.println(request.getParameter("submit"));
                   if(request.getParameter("submit")!=null)
                   {
                	   message="";
                	   
                	  user_id=request.getParameter("txt_user_id");
                	  password=request.getParameter("txt_password");
                	  
                	  user1= new User();
                	  user1.setUser_ID(user_id);
                	  user1.setPassword(password);
                	  
                	  user2=UserBL.validateUser(user1);
                	 // out.println(user2.getSUser_ID());
                	  
                	  if(user2!=null)
                	  {
                		  session.setAttribute("user_name", user2.getSUser_Name());
                		  session.setAttribute("user_id", user2.getSUser_ID());
                		  
                		  response.sendRedirect("../student/student_view_all.jsp");
                		  
                		  
                	  
                	  }
                	  else
                	  {
                		  message="wrong user id or password";
                	  }
                	   
                   }
                  %>
                
                
                
                
                
                
                  <%= message   %>
                  
                  </td>
                </tr>
  
  </table>
  </div>

  <div class="container">
    <label for="uname"><b>User ID</b></label>
    <input type="text" placeholder="Enter User id" name="txt_user_id" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="txt_password" required>
        
    <input type="submit" value="login" name="submit">
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>
</html>