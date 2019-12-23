package sk.bl;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import sk.dl.DBHelper;
import sk.dl.UserDL;
import sk.dto.User;

public class UserBL {
	public static User validateUser(User user1)
	{
		User user2=null;
		
		try
		{
			user2=UserDL.validateUser(user1);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** UserBL:validateUser "+e.getMessage());
		}
		
	return user2;
	}


}
