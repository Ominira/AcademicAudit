package com.auditsys.academic.services;

import java.sql.*;
import java.util.*;
import java.text.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.auditsys.shared.helperbase.*;

import com.auditsys.student.helperbase.*;
import com.auditsys.academic.helperbase.beans.*;

public class AcademicsDataService{

	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs = null;

	public static List<AcademicProfile> AcademicsDetails(String academicId){

		List<AcademicProfile> dataList = new ArrayList<>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM lecturer_profile WHERE lect_id = ?";
				ps = con.prepareStatement(query);
				ps.setString(1,academicId);
				rs =ps.executeQuery();

				while(rs.next()){
					AcademicProfile aProfile = new AcademicProfile();
					aProfile.setAcademicId(rs.getString("lect_id"));
					aProfile.setAcademicName(rs.getString("lect_name"));
					aProfile.setAcademicSex(rs.getString("lect_sex"));
					aProfile.setAcademicStatus(rs.getString("lect_status"));
					aProfile.setAcademicLevel(rs.getString("lect_level"));
					aProfile.setAcademicDept(rs.getString("lect_dept"));
					aProfile.setAcademicEmail(rs.getString("lect_email"));
					aProfile.setAcademicPhone(rs.getString("lect_hp_no"));
					dataList.add(aProfile);
				}
			}
		}
		catch (Exception ex) 
		{
			Logger.getLogger(AcademicsDataService.class.getName()).log(Level.SEVERE, null, ex);
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
			if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return dataList;
	}

	public static boolean UpdateAcademicsData(String lectId, String lectName, String lectSex, String lectLevel, String lectDept, String lectEmail, String lectHpNo){
		boolean update = false;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String updateQuery = "UPDATE lecturer_profile SET lect_name=?,lect_sex=?,lect_level=?,lect_dept=?,lect_email=?,lect_hp_no=? WHERE lect_id=?";
				ps = con.prepareStatement(updateQuery);
				ps.setString(1,lectName);
				ps.setString(2,lectSex);
				ps.setString(3,lectLevel);
				ps.setString(4,lectDept);
				ps.setString(5,lectEmail);
				ps.setString(6,lectHpNo);
				ps.setString(7,lectId);

				int rowsAffected = ps.executeUpdate();
				if(rowsAffected > 0){
					update = true;
				}else{
					update = false;
				}
			}
		}
		catch (Exception ex) {
			Logger.getLogger(AcademicsDataService.class.getName()).log(Level.SEVERE, null, ex);
		}
		finally{
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
			if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return update;
	}

	public static List<Academics> AcademicsList(){

		List<Academics> dataList = new ArrayList<>();

		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT lect_id, lect_name FROM lecturer_profile";
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();

				while(rs.next()){
					Academics acad = new Academics();
					acad.setAcademicId(rs.getString("lect_id"));
					acad.setAcademicName(rs.getString("lect_name"));
					dataList.add(acad);
				}
			}
		}
		catch (Exception ex) {
			Logger.getLogger(AcademicsDataService.class.getName()).log(Level.SEVERE, null, ex);
		}
		finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
			if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return dataList;
	}

	public static boolean UpdateAcademicsLogin(String lectId, String userId, String userPass){

		boolean update = false;

		try{
			con = DBHelper.createConnection();
			if(con != null){

				String query = "UPDATE users SET user_id=?,user_pass=? WHERE lect_id=?";
				ps = con.prepareStatement(query);
				ps.setString(1,userId);
				ps.setString(2,userPass);
				ps.setString(3,lectId);

				int rowsAffected = ps.executeUpdate();
				if(rowsAffected > 0){
					update = true;
				}else{
					update = false;
				}
			}
		}catch (Exception ex) {
			Logger.getLogger(AcademicsDataService.class.getName()).log(Level.SEVERE, null, ex);
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
		}

		return update;
	}
}