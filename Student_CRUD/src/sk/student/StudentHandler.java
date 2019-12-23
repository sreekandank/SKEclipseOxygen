package sk.student;
import sk.dblayer.DBConnection;
/**
 *
 * @author Sreekandan K
 */
public class StudentHandler {
    public int student_insert(StudentBean s)
    {
       String student_id,student_name,result;
       int mark1,mark2,mark3,total;
       int output=0;
       String sql;
        try
        {
            student_id= s.getStudent_id();
            student_name= s.getStudent_name();
            mark1 = s.getMark1();
            mark2 =s.getMark2();
            mark3 = s.getMark3();
            total=s.getTotal();
            result= s.getResult();
            
            sql="insert into student_mark values(";
            sql=sql + "'" + student_id + "',";
            sql=sql + "'" + student_name + "',";
            sql=sql  + mark1 + ",";
            sql=sql  + mark2 + ",";
            sql=sql  + mark3 + ",";
            sql=sql  + total + ",";
            sql=sql + "'" + result + "')"; 
            
            System.out.println(sql);
          
            DBConnection con = new DBConnection();
            con.getConnection();
            output =  con.executeNonQuery(sql);
        }
        catch(Exception e)
        {
        	output =-1;
        }
        
        return output;
        
    }
}
