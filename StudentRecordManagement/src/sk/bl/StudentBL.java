package sk.bl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import sk.dto.*;
import sk.dl.*;

public class StudentBL {
	
	
	public static int addStudent(StudentDTO student)
	{
		int result=0;
	
	
		try
		{
		
			student.setTotal(student.getMark1()+student.getMark2()+student.getMark3());
			if(student.getMark1()<50 || student.getMark2()<50 ||student.getMark3()<50 )
			{
				student.setResult("FAIL");
			}
			else
			{
				student.setResult("PASS");
			}
			//System.out.println(student.getResult());
			result =StudentDL.addStudent(student);
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** StudentBL:addStudent "+e.getMessage());
		}
		
	return result;
	}
	
	public static ArrayList<StudentDTO> getStudents()
	{
		ArrayList<StudentDTO> students=null;
		
		try
		{
			  students = StudentDL.getStudents();
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentBL:getStudents "+e.getMessage());
		}
		
	return students;
	}
	
	public static StudentDTO getStudent(int student_id)
	{
		StudentDTO student=null;
		
		try
		{
			  student = StudentDL.getStudent(student_id);
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentBL:getStudent "+e.getMessage());
		}
		
	return student;
	}
	
	
	public static int deleteStudent(int student_id)
	{
		int result=0;
		
		
		try
		{
			result=StudentDL.deleteStudent(student_id);
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentBL:deleteStudent "+e.getMessage());
		}
		
	return result;
	}

	public static int updateStudent(StudentDTO student)
	{
		int result=0;
			
		try
		{
			student.setTotal(student.getMark1()+student.getMark2()+student.getMark3());
			if(student.getMark1()<50 || student.getMark2()<50 ||student.getMark3()<50 )
			{
				student.setResult("FAIL");
			}
			else
			{
				student.setResult("PASS");
			}
			
			 result = StudentDL.updateStudent(student);
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentBL:updateStudent "+e.getMessage());
		}
		
	return result;
	}
	
}
