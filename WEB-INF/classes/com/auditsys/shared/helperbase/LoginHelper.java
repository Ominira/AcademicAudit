package com.auditsys.shared.helperbase;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.*;
import java.util.*;
import java.util.Calendar;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
* @author Mustapha Taiwo
*/

public class LoginHelper
{
	
	private static String userName;
	private static String password;
	private static int userLevel;
	private static String userId;
	
	private static String errorMsg;
	
	public LoginHelper()
	{
		userName = "";
		password = "";
		userLevel = 0;
		userId = "";
	}
	
	public static String getErrorMsg(){
		return errorMsg;
	}
	public static void setErrorMsg(String _errorMsg){
		_errorMsg = errorMsg;
	}
	
	public static String getUserName(){
		return userName;
	}
	public static void setUserName(String _userName){
		_userName = userName;
	}
	
	public static String getPassword(){
		return password;
	}
	public static void setPassword(String _password){
		_password = password;
	}
	
	public static int getUserLevel(){
		return userLevel;
	}
	public static void setUserLevel(int _userLevel){
		_userLevel = userLevel;
	}
	
	public static String getUserId(){
		return userId;
	}
	public static void setUserId(String _userId){
		_userId = userId;
	}
	
	public static boolean checkLogin(String user, String pass)
	{
		new LoginHelper();
		
		boolean itWorked = false;
		try{
			Connection con = DBHelper.createConnection();
			if(con != null)
			{
				String select = "SELECT * FROM users WHERE user_id = ? AND user_pass = ?";
				PreparedStatement ps = con.prepareStatement(select);
				ps.setString(1, user);
				ps.setString(2, pass);
				ResultSet rs = ps.executeQuery();
				
				while (rs.next()){
					userName = rs.getString("user_id");
					password = rs.getString("user_pass");
					userLevel = rs.getInt("user_level");
					
					if(getUserLevel() == 3) {
						userId = rs.getString("stud_id");
					}
					else if(getUserLevel() == 2) {
						userId = rs.getString("lect_id");
					}
				}
				if(getUserId() == "")
				{
					itWorked = false;
					con.close();
				}
				else{
					con.close();
					registerLoginTime(getPassword());
					itWorked = true;
				}
				
			}
		}
		catch (SQLException ex){
			Logger.getLogger(LoginHelper.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
			itWorked = false;
		}
		return itWorked;
	}
	private static void registerLoginTime(String password){
		try{
			Connection con = DBHelper.createConnection();
			
			if (con != null){
				String date = Calendar.getInstance().getTime().toString();
				InetAddress ip = InetAddress.getLocalHost();
				String ipAdd = ip.getHostAddress().toString();
				
				String update = "UPDATE users SET user_timestamp = ?, user_ip = ? WHERE user_pass = ? ";
				
				PreparedStatement ps = con.prepareStatement(update);
				ps.setString(1, date);
				ps.setString(2, ipAdd);
				ps.setString(3, password);
				int rowsAffected = ps.executeUpdate();
				
				if(rowsAffected > 0){
					con.close();
				}
				// else{System.out.println("time not registered");}
			}
			// else{
				// System.out.println("Couldn't make connection");
			// }
		} 
		catch (SQLException | UnknownHostException ex ) {
			Logger.getLogger(LoginHelper.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}
		
	}
}
