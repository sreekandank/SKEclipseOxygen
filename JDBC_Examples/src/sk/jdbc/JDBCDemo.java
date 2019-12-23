package sk.jdbc;
import java.sql.*; 
public class JDBCDemo
{
	public static void main(String args[])
	{  
		try
		{  
			//step1 load the driver class  
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			//step2 create  the connection object  
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");  
			//step3 create the statement object  
			Statement stmt=con.createStatement();  
			//step4 execute query  
			ResultSet rs=stmt.executeQuery("select * from stud_tab"); 
			System.out.println("RollNo\t\tName\t\tDepartment");
			while(rs.next())
			{
				System.out.println(rs.getInt(1)+"\t\t"+rs.getString(2)+"\t\t"+rs.getString(3));  
			}
			//step5 close the connection object  
			con.close();  
		}
		catch(Exception e)
		{ 
			System.out.println(e);
		}   
	}  
}
