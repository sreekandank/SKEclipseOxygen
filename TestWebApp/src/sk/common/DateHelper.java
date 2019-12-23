package sk.common;

//import java.sql.Date;

public class DateHelper {
	public static java.sql.Date convertUtilDateToSqlDate(java.util.Date utilDate){
        if(utilDate != null) {
        	java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            return sqlDate;
        }
        return null;
    }
}
