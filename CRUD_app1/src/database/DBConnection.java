package database;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","SKmysql@123");
		}
		catch(Exception e)
		{
			System.out.println("CONNECTION ERROR: at DBConnection.getConnection()"+e.getMessage());
		}
		return con;
	}

}
