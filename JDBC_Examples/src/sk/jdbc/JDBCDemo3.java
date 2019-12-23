package sk.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCDemo3 {
	public static void main(String args[])
	{
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");
			Statement stmt = con.createStatement();
			System.out.println("1.Insert record\n2.Update\n3.delete\n4.Display\n5.Exit");
			System.out.println("Enter Choice:");
			Scanner in = new Scanner(System.in);
			int ch = in.nextInt();
			switch(ch)
			{
				case 1:
					System.out.println("Roll No:");
					int rn = in.nextInt();
					System.out.println("Name:");
					String name = in.next();
					System.out.println("Brach:");
					String branch = in.next();
					String query = "INSERT INTO stud_tab(rno,s_name,dept)VALUES("+rn+",'"+name+"','"+branch+"')";
					int status = stmt.executeUpdate(query);
					if(status > 0)
					{
						System.out.println("Inserted Successfully!");
					}
					else
					{
						System.out.println("Failed! try again");
					}
					break;
				case 2:
					break;
				case 3:
					break;
				case 4:
					query = "SELECT * FROM stud_tab";
					System.out.println("Roll No\tName\tBranch");
					ResultSet rs = stmt.executeQuery(query);
					while(rs.next())
					{
						System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
					}
					break;
				case 5:
					break;
				default:
					System.out.println("Invalid Choice!");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			e.printStackTrace();
		}
	}

}
