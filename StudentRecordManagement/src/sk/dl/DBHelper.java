package sk.dl;
import java.sql.*;

public class DBHelper {
	
	
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");   
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    

		}
		catch(Exception e)
		{
			System.out.println("**Error** : DBHelper:getConnection " +e.getMessage());
			
		}
		return con;
	}
	public static void closeConnection()
	{
		
		
	}

}
