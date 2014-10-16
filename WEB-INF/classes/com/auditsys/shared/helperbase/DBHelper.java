package com.auditsys.shared.helperbase;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
* @author Mustapha Taiwo
*/

public final class DBHelper{
	
	private static final String url = "jdbc:mysql://localhost:3306/db_faas?relaxAutoCommit=true";
	private static final String db_user = "";
	private static final String db_pass = "";
	
	private static Connection con = null;
	
	private static String error_msg = "";
	
	
	public static String getErrorMsg(){
		return error_msg;
	}
	public static void setErrorMsg(String val){
		error_msg = val;
	}
	
	public static Connection createConnection(){
		try{
		   con = DriverManager.getConnection(url, db_user, db_pass);
		}
		catch (SQLException ex){
			Logger.getLogger(DBHelper.class.getName()).log(Level.SEVERE,null,ex);
		}
		
		return con;
	}
	
	public static boolean addCourse(String id, String desc_short, String desc_long, String status, int credit_unit){
		
		boolean success = false;
		try{
			con = createConnection();
			if(con != null){
			
				String insert = "INSERT INTO course_main(course_id,course_desc_short,course_desc_long,course_status, course_credit_hours)"+
							    "VALUES(?,?,?,?,?)";
								
				PreparedStatement ps = con.prepareStatement(insert);
				ps.setString(1, id);
				ps.setString(2, desc_short);
				ps.setString(3, desc_long);
				ps.setString(4, status);
				ps.setInt(5, credit_unit);
				int rowsAffected = ps.executeUpdate();
				
				success = (rowsAffected > 0 ? true : false);
				con.close();
			}
		}
		catch(SQLException ex){
			Logger.getLogger(DBHelper.class.getName()).log(Level.SEVERE,null,ex);
			error_msg.concat(ex.getMessage());
		}
		
		return success;
	}
}