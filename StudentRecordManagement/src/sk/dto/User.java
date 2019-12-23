package sk.dto;

public class User {
	
	String user_id,user_name,password;
	
	public User()
	{}
	public User(String user_id,String user_name,String password)
	{
		this.user_id=user_id;
		this.user_name=user_name;
		this.password= password;
		
	}
	
	public void setUser_ID(String user_id )
	{	
		this.user_id=user_id;
	}
	public String getSUser_ID()
	{	
		return user_id;
	}
	
	public void setUser_Name(String user_name )
	{	
		this.user_name=user_name;
	}
	public String getSUser_Name()
	{	
		return user_name;
	}
	public void setPassword(String password )
	{	
		this.password=password;
	}
	public String getPassword()
	{	
		return password;
	}

}

