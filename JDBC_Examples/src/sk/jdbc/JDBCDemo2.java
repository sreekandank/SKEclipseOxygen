package sk.jdbc;
import java.sql.*;
import java.util.Scanner; 
public class JDBCDemo2
{
	public static void main(String args[])
	{  
		try
		{   
			Class.forName("oracle.jdbc.driver.OracleDriver");   
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sktestdb","sktestdb");    
			Statement stmt=con.createStatement();
			Scanner in = new Scanner(System.in);
			//char i;
			String i;
			do
			{
				System.out.println("1.Insert Record\n2.Update Record\n3.Delete Record\n4.Display Record");
				System.out.println("Enter your choice:");
				int ch = in.nextInt();
				switch(ch)
				{
					case 1:
					System.out.println("Roll No:");
					int rno = in.nextInt();
					in.nextLine();
					System.out.println("Name:");
					String name = in.nextLine();
					System.out.println("Branch:");
					String branch = in.nextLine();
					String query = "INSERT INTO stud_tab(rno,s_name,dept)VALUES("+rno+",'"+name+"','"+branch+"')";
					int status = stmt.executeUpdate(query);
					if(status > 0)
					{
						System.out.println("Inserted a record");
					}
					else
					{
						System.out.println("Faild! Try Again!");
					}
					break;
					case 2:
					System.out.println("Enter the Roll No:");
					int rn = in.nextInt();
					System.out.println("Enter the new data:");
					in.nextLine();
					System.out.println("Name:");
					name = in.nextLine();
					System.out.println("Branch:");
					branch = in.nextLine();
					query = "UPDATE stud_tab SET s_name='"+name+"',dept='"+branch+"' WHERE rno="+rn;
					status = stmt.executeUpdate(query);
					if(status > 0)
					{
						System.out.println("Updated Successfully!");
					}
					else
					{
						System.out.println("Faild! Try Again!");
					}
					break;
					case 3:
					System.out.println("Roll No:");
					rno = in.nextInt();
					query = "DELETE FROM stud_tab WHERE rno="+rno;
					status = stmt.executeUpdate(query);
					if(status > 0)
					{
						System.out.println("Record Deleted");
					}
					else
					{
						System.out.println("Faild! Try Again!");
					}
					break;
					case 4:
					ResultSet rs=stmt.executeQuery("select * from stud_tab ORDER BY rno");
					System.out.println("Roll No\tName\tBranch");
					while(rs.next())
					{
						System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));  
					} 
					break;
					default:
					System.out.println("Invalid Choice!");
					break;			
				}
				//System.out.println("Do you want to continue?y/n:");
				//i=in.next().charAt(0);
				System.out.println("Do you want to continue?yes/no:");
				i=in.next();
			}
			//while(i=='y'||i=='Y');
			while(i.equalsIgnoreCase("yes"));
			con.close();  
		}
		catch(Exception e)
		{ 
			System.out.println(e);
		}   
	}  
}