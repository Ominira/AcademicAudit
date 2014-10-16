package com.auditsys.academic.helperbase;

import java.net.*;
import java.sql.*;
import java.util.*;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.auditsys.shared.helperbase.*;

/**
*@author Mustapha Taiwo
*/

public class AcademicHelper{
	
	private static String errorMsg = "";
	
	public static void setErrorMsg(String _errorMsg){
		_errorMsg = errorMsg;
	}
	public static String getErrorMsg(){
		return errorMsg;
	}
	
	public static String getLecturerLevel(String userId){
		String level ="";
		try{
			Connection con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT lect_level FROM lecturer_profile WHERE lect_id = ?";
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1,userId);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next())
				{
					level = rs.getString("lect_level");
				}
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AcademicHelper.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}
		
		return level;
	}
}