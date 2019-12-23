package dao;
import bean.user;
import database.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class UserDAO {
	public static int insert(user u)
	{
		int status=0;
		try
		{
			Connection con=DBConnection.getConnection();
			String sql="insert into register(name,password,email,sex,country)values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4,u.getSex());
			ps.setString(5, u.getCountry());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception at UserDAO.insert()"+e.getMessage());
		}

	 return status;
	}
	public static List<user> getAllRecords()
	{
		List<user> list=new ArrayList();
		try
		{
			Connection con=DBConnection.getConnection();
			String sql="select * from register";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				user u=new user();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception at UserDAO.getAllRecords()"+e.getMessage());
		}
		return list;
	}
	public static user getRecordById(int id)
	{
		user u=null;
		try
		{
			Connection con=DBConnection.getConnection();
			String sql="select * from register where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u=new user();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception at UserDAO.getRecordById()"+e.getMessage());
		}
		return u;
	}
	public static int update(user u)
	{
		int status=0;
		try
		{
			Connection con=DBConnection.getConnection();
			String sql="update register set name=?,password=?,email=?,sex=?,country=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			ps.setInt(6, u.getId());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Exception at UserDAO.update()"+e.getMessage());
		}
		return status;
	}
	public static int delete(user u)
	{
		int status=0;
		try
		{
			Connection con=DBConnection.getConnection();
			String sql="delete from register where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,u.getId());
			status=ps.executeUpdate();
		}
		catch(Exception e)
		{
			
		}
		return status;
	}

}
