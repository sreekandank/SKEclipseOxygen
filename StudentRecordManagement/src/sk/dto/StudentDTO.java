package sk.dto;

public class StudentDTO {
	
	int student_id,mark1,mark2,mark3,total;
	String student_name,result;
	
	public void setStudent_ID(int student_id )
	{	
		this.student_id=student_id;
	}
	public int getStudent_ID()
	{	
		return student_id;
	}
	
	public void setStudent_Name(String student_name )
	{	
		this.student_name=student_name;
	}
	public String getStudent_Name()
	{	
		return student_name;
	}
	
	public void setMark1(int mark1 )
	{	
		this.mark1=mark1;
	}
	public int getMark1()
	{	
		return mark1;
	}
	public void setMark2(int mark2 )
	{	
		this.mark2=mark2;
	}
	public int getMark2()
	{	
		return mark2;
	}
	
	public void setMark3(int mark3 )
	{	
		this.mark3=mark3;
	}
	public int getMark3()
	{	
		return mark3;
	}
	
	public void setTotal(int total )
	{	
		this.total=total;
	}
	public int getTotal()
	{	
		return total;
	}
	
	public void setResult(String result )
	{	
		this.result=result;
	}
	public String getResult()
	{	
		return result;
	}

}

