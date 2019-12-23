package sk.dblayer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;
public class DBConnection {
		public static String DBDriver = "";
		public static String DBUrl = "";
		public static String DBUser = "";
		public static String DBPassword = "";
		public Connection con;
		Statement stmt;
		
		static
		{
			try {
				DBDriver = "com.mysql.jdbc.Driver";
				DBUrl = "jdbc:mysql://127.0.0.1:3306/student_jsp?autoReconnect=true";
				DBUser = "root";
				DBPassword = "SKmysql@123";
				Class.forName(DBDriver);
						
			} 
			catch (Exception er) {
				System.out.println("ERROR [Driver loading Error] : " + er);
			}
		}
		public int executeNonQuery(String strQuery)
		{
	            int Result=0;
	                try
	                {
	                getConnection();
			stmt = con.createStatement();
			Result = stmt.executeUpdate(strQuery);
	                con.close();
	                stmt.close();
	                }
	                catch(SQLException er)
	                {
	                Result=-1;
	                System.out.println("ERROR[DBConnection.java:getConnection():46] [Connection error] : " + er.getMessage());	
	                }
	                
	                return Result;
	     }
	        
	        public ResultSet executeQuery(String strQuery)
	        {
	          ResultSet rsData=null;
	        
	                try
	                {
	                getConnection();
			stmt = con.createStatement();
			rsData = stmt.executeQuery(strQuery);
	                }
	                catch(SQLException er)
	                {
	              
	                System.out.println("ERROR[DBConnection.java:getConnection():46] [Connection error] : " + er.getMessage());	
	                }
	               return rsData;
	        }
		public void getConnection()
		{
	                try
	                {
	                con = DriverManager.getConnection(DBUrl, DBUser,	DBPassword);
	                }
	                catch(Exception er)
	                {
	                System.out.println("ERROR[DBConnection.java:getConnection():46] [Connection error] : " + er.getMessage());	
	                }

		}
		
	}