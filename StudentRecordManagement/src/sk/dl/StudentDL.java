package sk.dl;
import sk.dto.*;

import java.sql.*;
import java.util.*;

public class StudentDL {
	
	
	public static int addStudent(StudentDTO student)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		try
		{
			con=DBHelper.getConnection();
			query = "INSERT INTO TBL_STUDENT(student_id,student_name,mark1,mark2,mark3,total,Result)VALUES(?,?,?,?,?,?,?)";
			
			ps=con.prepareStatement(query);
			ps.setInt(1, student.getStudent_ID());
			ps.setString(2, student.getStudent_Name());
			ps.setInt(3, student.getMark1());
			ps.setInt(4, student.getMark2());
			ps.setInt(5, student.getMark3());
			ps.setInt(6, student.getTotal());
			ps.setString(7, student.getResult());
			
			 result = ps.executeUpdate();
			    ps.close();
		        con.close();
			
		}
		catch(Exception e)
		{
			result=-1;
			System.out.println("**Error** StudentDL:addStudent "+e.getMessage());
		}
		
	return result;
	}
	
	public static int updateStudent(StudentDTO student)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		
		try
		{
			con=DBHelper.getConnection();
			query = "UPDATE tbl_student SET student_name=?,mark1=?,mark2=?,mark3=?,total=?,result=? WHERE student_id=?";
			ps=con.prepareStatement(query);
		
			ps.setString(1, student.getStudent_Name());
			ps.setInt(2, student.getMark1());
			ps.setInt(3, student.getMark2());
			ps.setInt(4, student.getMark3());
			ps.setInt(5, student.getTotal());
			ps.setString(6, student.getResult());
			ps.setInt(7, student.getStudent_ID());
			
			
			 result = ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentDL:updateStudent "+e.getMessage());
		}
		
	return result;
	}
	
	public static int deleteStudent(int student_id)
	{
		int result=0;
		String query;
		PreparedStatement ps=null;
		Connection con;
		
		try
		{
			con=DBHelper.getConnection();
			query = "delete from tbl_student where student_id=?";
			ps=con.prepareStatement(query);
			ps.setInt(1, student_id);
			 result = ps.executeUpdate();
			    ps.close();
		        con.close();
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentDL:deleteStudent "+e.getMessage());
		}
		
	return result;
	}

	public static StudentDTO getStudent(int student_id)
	{
		Connection con=null;
		Statement statement =null;
		ResultSet resultSet=null;
		StudentDTO student=null;
		
		try
		{
			
			
			String sql = "SELECT * FROM TBL_STUDENT WHERE STUDENT_ID="+student_id;
	        con=DBHelper.getConnection();
	        statement = con.createStatement();
	        resultSet = statement.executeQuery(sql);
	         if(resultSet.next()) {
	        	 student = new StudentDTO();
			        student.setStudent_ID(resultSet.getInt("STUDENT_ID"));
		            student.setStudent_Name(resultSet.getString("STUDENT_NAME"));
		            student.setMark1(resultSet.getInt("MARK1"));
		            student.setMark2(resultSet.getInt("MARK2"));
		            student.setMark3(resultSet.getInt("MARK3"));
		            student.setTotal(resultSet.getInt("TOTAL"));
		            student.setResult(resultSet.getString("RESULT"));
	         }
	         
	         return student;
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentDL:getStudent "+e.getMessage());
		}
		
	return student;
	}
	
	public static ArrayList<StudentDTO> getStudents()
	{
		ArrayList<StudentDTO> students=null;
		Connection con=null;
		  Statement statement =null;
		  ResultSet resultSet=null;
		  StudentDTO student=null;
		try
		{
			  students = new ArrayList<StudentDTO>();
		        String sql = "SELECT * FROM TBL_STUDENT ORDER BY STUDENT_ID DESC";
		        con=DBHelper.getConnection();
		        statement = con.createStatement();
		        resultSet = statement.executeQuery(sql);
		        while (resultSet.next()) {
		        	student = new StudentDTO();
		        
		            student.setStudent_ID(resultSet.getInt("STUDENT_ID"));
		            student.setStudent_Name(resultSet.getString("STUDENT_NAME"));
		            student.setMark1(resultSet.getInt("MARK1"));
		            student.setMark2(resultSet.getInt("MARK2"));
		            student.setMark3(resultSet.getInt("MARK3"));
		            student.setTotal(resultSet.getInt("TOTAL"));
		            student.setResult(resultSet.getString("RESULT"));
		            students.add(student);
		        }
		         
		        resultSet.close();
		        statement.close();
		        con.close();
		       
			
		}
		catch(Exception e)
		{
			System.out.println("**Error** StudentDL:getStudents "+e.getMessage());
		}
		
	return students;
	}
	
}

