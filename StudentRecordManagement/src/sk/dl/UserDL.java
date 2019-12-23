package sk.dl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import sk.dto.User;

public class UserDL {
	
	public static User validateUser(User user1)
	{
		Connection con=null;
		Statement statement =null;
		ResultSet resultSet=null;
		User user2=null;
		
		try
		{
			
			
			String sql = "SELECT * FROM TBL_USER WHERE USER_ID=? AND PASSWORD=?";
	        con=DBHelper.getConnection();
	       PreparedStatement ps=null;
	    	ps=con.prepareStatement(sql);
	
			ps.setString(1,user1.getSUser_ID());
			ps.setString(2,user1.getPassword());
			System.out.println(user1.getSUser_ID());
			System.out.println(user1.getPassword());
			  resultSet =ps.executeQuery();
		
	         if(resultSet.next()) {
	        	 
	        	 user2= new User();
	        	 user2.setUser_ID(resultSet.getString("USER_ID"));
	        	 user2.setUser_Name(resultSet.getString("USER_NAME"));
	        	 
	         }
	         
	        
		}
		catch(Exception e)
		{
			System.out.println("**Error** UserDL:validateUser "+e.getMessage());
		}
		
	return user2;
	}


}

