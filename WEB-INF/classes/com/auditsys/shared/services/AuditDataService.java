package com.auditsys.shared.services;

import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.auditsys.shared.helperbase.*;
import com.auditsys.shared.helperbase.beans.*;
import com.auditsys.shared.helperbase.auditdata.*;

/**
* @author Mustapha Taiwo
*/

public class AuditDataService{
	
	private static String errorMsg = "";
	
	public AuditDataService(){

	}

	public static String getErrorMsg(){
		return errorMsg;
	}
	
	public static void setErrorMsg(String _errorMsg){
		_errorMsg = errorMsg;
	}

	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static ResultSet rs  = null;

	/*public static void closeAll(){
		if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
        if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
        if (con != null) try { con.close(); } catch (SQLException ignore) {}
	}*/
	
	public static String CheckAuditStatus(String userId){
		String status = "";
		try{
			con = DBHelper.createConnection();
			if(con!=null){
				String query = "SELECT * FROM stud_audit WHERE stud_id = ?";
				ps = con.prepareStatement(query);
				ps.setString(1,userId);
				rs = ps.executeQuery();
				
				while(rs.next()){
					status = rs.getString("audit_status");
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
		}

		return status;
	}

	public static boolean SaveData(String stud_id, String mentor_id, String gradsession,String extended_sem,int total_sem_taken, 
							      String spm_bm_result, String muet_result, String audit_status, String programType){
		boolean sent = false;
		String checkStatus = "";
		try 
		{
			String date = Calendar.getInstance().getTime().toString(); //audit application date
			con = DBHelper.createConnection();
			if(con != null){

				con.setAutoCommit(false);

				checkStatus = CheckAuditStatus(stud_id);
				
  				if(checkStatus == null || "".equals(checkStatus)){

					String query = "INSERT INTO stud_audit (stud_id, stud_mentor_id, session_graduate,extended_sem,total_sem_taken,"+
									"spm_bm_result,muet_result,audit_status,audit_app_date,program_type)"+
									"VALUES(?,?,?,?,?,?,?,?,?,?)";
					
					ps = con.prepareStatement(query);
					ps.setString(1,stud_id);
					ps.setString(2,mentor_id);
					ps.setString(3,gradsession);
					ps.setString(4,extended_sem);
					ps.setInt(5,total_sem_taken);
					ps.setString(6,spm_bm_result);
					ps.setString(7,muet_result);
					ps.setString(8,audit_status);
					ps.setString(9,date);
					ps.setString(10,programType);
				
				
					int rowsAffected = ps.executeUpdate();
				
					if(rowsAffected > 0){
						sent = true;
						con.commit();
						errorMsg = "";
					}
					else{
						errorMsg = "failed to save data";
					}
				}
				if("Pending".equalsIgnoreCase(checkStatus) && checkStatus != null){
					sent = false;
				}
				if(("Approved".equalsIgnoreCase(checkStatus) || "Approve".equalsIgnoreCase(checkStatus)) && checkStatus != null){
					sent = false;
				}
				if("Rejected".equalsIgnoreCase(checkStatus) && checkStatus != null){
					String updateQuery = "Update stud_audit SET stud_mentor_id= ?, session_graduate= ?,extended_sem= ?,"+
										 "total_sem_taken= ?,spm_bm_result= ?,muet_result= ?,"+
										 "audit_status= ?,audit_app_date = ?,program_type=? "+
										 "WHERE stud_id = ?";
										 
					ps = con.prepareStatement(updateQuery);
					ps.setString(1,mentor_id);
					ps.setString(2,gradsession);
					ps.setString(3,extended_sem);
					ps.setInt(4,total_sem_taken);
					ps.setString(5,spm_bm_result);
					ps.setString(6,muet_result);
					ps.setString(7,audit_status);
					ps.setString(8,date);
					ps.setString(9,programType);
					ps.setString(10,stud_id);
					
					int rowsAffected = ps.executeUpdate();
					if(rowsAffected > 0){
						sent = true;
						con.commit();
						errorMsg = "";
					}
					else{
						errorMsg = "failed to save data";
					}
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
		return sent;
	}

	public static boolean UpdateCECTRemark(String stud_id, List<String[]> audit_remark){
		boolean sent = false;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				//con.setAutoCommit(false);
				String query = "UPDATE stud_audit SET audit_cect_remark = ? WHERE stud_id = ?";
				ps = con.prepareStatement(query);
				ps.setString(1,"1");
				ps.setString(2,stud_id);

				int rowsAffected = ps.executeUpdate();

				if(rowsAffected > 0){
					sent = SaveRemark(audit_remark);
				}
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return sent;
	}

	private static boolean SaveRemark(List<String[]> dataList){
		boolean saved = false;

		if(!dataList.isEmpty() || !dataList.equals(Collections.emptyList())){
			
			try{
				con = DBHelper.createConnection();
				if(con != null){

					con.setAutoCommit(false); //important

					String insert = "INSERT INTO stud_cect_remark (stud_id, scr_course_id, scr_cect_result, scr_comments) VALUES(?,?,?,?)";

					ps = con.prepareStatement(insert);
					
					int indexAffected = 0;

					for(int i = 0; i < dataList.size(); i++){
						String[] data = dataList.get(i);

						ps.setString(1, data[0]);
						ps.setString(2, data[1]);
						ps.setString(3, data[2]);
						ps.setString(4, data[3]);

						ps.addBatch();
					}

					int[] rowsAffected = ps.executeBatch();

						if(rowsAffected.length > 0){
							indexAffected++;
					}
					/*Iterator<String[]> itr = dataList.iterator();

					String[] auditData = new String[]{};
					while(itr.hasNext()){
						auditData = itr.next();
						ps.setString(1, auditData[0]);
						ps.setString(2, auditData[1]);
						ps.setString(3, auditData[2]);
						ps.setString(4, auditData[3]);
						ps.addBatch();
					}*/
					if(indexAffected > 0){
						saved = true;
						con.commit();
					}else{
						errorMsg = "failed to save remark data";
					}
				}
			}catch (SQLException ex){
				Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
				//con.rollback();
				errorMsg.concat("\n\n"+ex.getMessage());
			}finally{
			
			}	
		}
		return saved;
	}
	public static boolean UpdateStatus(String stud_id, String audit_status, String status_comment, int count){
		boolean sent = false;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "UPDATE stud_audit SET audit_status = ?, audit_status_comment = ? WHERE stud_id = ?";
				
				ps = con.prepareStatement(query);
				ps.setString(1,audit_status);
				ps.setString(2,status_comment);
				ps.setString(3,stud_id);
				
				int rowsAffected = ps.executeUpdate();
				
				if(rowsAffected > 0){
					if("Rejected".equalsIgnoreCase(audit_status)){
						sent = ResetApprovalCount(stud_id);
					}else if("Approved".equalsIgnoreCase(audit_status)){
						sent = ApproveAudit(count, stud_id);
					}
				}
				else{
					errorMsg.concat("Failed to update Data");
				}
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
	       	if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
	        if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return sent;
	}
	public static boolean ApproveAudit(int count, String stud_id){
		boolean sent = false;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "UPDATE stud_audit SET approval_count = ? WHERE stud_id = ?";
				
				ps = con.prepareStatement(query);
				ps.setInt(1, count);
				ps.setString(2, stud_id);
				
				int rowsAffected = ps.executeUpdate();
				
				if(rowsAffected > 0){
					sent = true;
				}
				else{
					errorMsg.concat("Failed to update Data");
				}
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			
		}
		return sent;
	}
	private static boolean ResetApprovalCount(String stud_id){
		boolean sent = false;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "UPDATE stud_audit SET approval_count = ? WHERE stud_id = ?";
				
				ps = con.prepareStatement(query);
				ps.setInt(1, 0);
				ps.setString(2, stud_id);
				
				int rowsAffected = ps.executeUpdate();
				
				if(rowsAffected > 0){
					sent = true;
				}
				else{
					errorMsg.concat("Failed to update Data");
				}
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			
		}

		return sent;
	}

	public static int GetNumOfRequests(String academiclevel, String mentor_id)
	{
		int rowsAffected = 0;
		try{
			con = DBHelper.createConnection();
			if(con != null){

				String query = "";
				if("B".equalsIgnoreCase(academiclevel)){
					query = "SELECT COUNT(*) FROM stud_audit WHERE audit_status = 'Pending' AND stud_mentor_id = '"+ mentor_id + "'";
				}	
				if("A".equalsIgnoreCase(academiclevel)){
					query = "SELECT COUNT(*) FROM stud_audit WHERE audit_status = 'Pending' OR (audit_status = 'Approved' AND approval_count = 1)";
				}
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();
				ResultSetMetaData rsmd = rs.getMetaData();
				if (rs.next())
					rowsAffected = rs.getInt(1);
			}
		}
		catch (SQLException ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
		return rowsAffected;
	}

	public static int GetTotalCE(String stud_id){
		//CE - Credit Exempted
		int creditExempted = 0;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT sct_course_id FROM stud_course_trans,course_main WHERE sct_stud_id = ?"+
							   " AND stud_course_trans.sct_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();
				
				String course_id="";
				int credit = 0;
				while(rs.next()){
					if(!rs.getString("sct_course_id").toString().equals(""))
						credit += Integer.parseInt(rs.getString("sct_course_id").toString().substring(6,1));
				}
				
				creditExempted = credit;
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			
		}
		return creditExempted;
	}

	public static List<CourseTransBean> GetStudCECT(String stud_id){

		List<CourseTransBean> list = new ArrayList<CourseTransBean>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM stud_course_trans,course_main WHERE sct_stud_id = ?"+
							   " AND stud_course_trans.sct_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();
				
				while(rs.next()){
					CourseTransBean course = new CourseTransBean();
					course.setId(rs.getString("sct_stud_id"));
					course.setCourseId(rs.getString("sct_course_id"));
					course.setCourseName(rs.getString("course_name"));
					course.setCourseGrade(rs.getString("sct_grade"));
					course.setCourseGp(rs.getString("sct_grade_point"));
					course.setTransType(rs.getString("sct_type"));
					list.add(course);
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}
		finally{
			
		}
		return list;
	}
	
	public static List<AuditDataBean> RetrieveData(String stud_id){

		List<AuditDataBean> list = new ArrayList<AuditDataBean>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM stud_audit WHERE stud_id = ?";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();
				
				while(rs.next()){
					AuditDataBean adb = new AuditDataBean();
					adb.setId(rs.getString("stud_id"));
					adb.setGradSession(rs.getString("session_graduate"));
					adb.setExtSem(rs.getString("extended_sem"));
					adb.setTotalSem(rs.getInt("total_sem_taken"));
					adb.setSpmResult(rs.getString("spm_bm_result"));
					adb.setMuetResult(rs.getString("muet_result"));
					adb.setAuditStatus(rs.getString("audit_status"));
					adb.setApplicationDate(rs.getString("audit_app_date"));
					adb.setProgramType(rs.getString("program_type"));
					adb.setCectRemark(rs.getInt("audit_cect_remark"));
					adb.setApprovingPersonnel(rs.getString("audit_approved_by"));
					adb.setTotalCreditExempted(GetTotalCE(stud_id));
					list.add(adb);
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE,null,ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}finally{
			if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
            if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
		return list;
	}

	public static List<CourseRemarkedBean> GetCourseRemarked(String stud_id){
	
		List<CourseRemarkedBean> list = new ArrayList<CourseRemarkedBean>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM stud_cect_remark, course_main WHERE stud_id=? AND stud_cect_remark.scr_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();

				while (rs.next()){
					CourseRemarkedBean crb = new CourseRemarkedBean();
					crb.setId(rs.getString("stud_id"));
					crb.setCourseId(rs.getString("scr_course_id"));
					crb.setCourseName(rs.getString("course_desc_short"));
					crb.setCourseUnit(rs.getInt("course_credit_hours"));
					crb.setCourseStatus(rs.getString("course_status"));
					crb.setCectResult(rs.getString("scr_cect_result"));
					crb.setComments(rs.getString("scr_comments"));
					list.add(crb);
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}
		finally{
			if(rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return list;
	}

	public static List<RequestBean> RetrieveRequests(String academiclevel, String mentor_id){
		List <RequestBean> list = new ArrayList<RequestBean>();
		try{
			con = DBHelper.createConnection();
			if(con != null){

				String query = "";

				if("B".equalsIgnoreCase(academiclevel)){
					query = "SELECT stud_audit.stud_id AS ID, student_profile.stud_name AS Name, "+
							   "degree_main.degree_desc_eng AS Program, stud_audit.session_graduate AS gradsession, "+
							   "stud_audit.audit_app_date AS AppDate "+
							   "FROM stud_audit,student_profile,degree_main "+
							   "WHERE stud_audit.audit_status = 'Pending' AND stud_audit.stud_mentor_id = ? AND stud_audit.stud_id = student_profile.stud_id "+
							   "AND student_profile.stud_degree = degree_main.degree_id";
				}	
				if("A".equalsIgnoreCase(academiclevel)){
					query = "SELECT stud_audit.stud_id AS ID, student_profile.stud_name AS Name, "+
							   "degree_main.degree_desc_eng AS Program, stud_audit.session_graduate AS gradsession, "+
							   "stud_audit.audit_app_date AS AppDate "+
							   "FROM stud_audit,student_profile,degree_main "+
							   "WHERE (stud_audit.audit_status = 'Pending' OR (stud_audit.audit_status = 'Approved' AND stud_audit.approval_count = 1)) AND stud_audit.stud_id = student_profile.stud_id "+
							   "AND student_profile.stud_degree = degree_main.degree_id";
				}
				
				ps = con.prepareStatement(query);
				if("B".equalsIgnoreCase(academiclevel)){ps.setString(1,mentor_id);}
				rs = ps.executeQuery();
				
				while(rs.next()){
					RequestBean rqb = new RequestBean();

					rqb.setStudId(rs.getString("ID"));
					rqb.setStudName(rs.getString("Name"));
					rqb.setStudProgram(rs.getString("Program"));
					rqb.setStudGradSession(rs.getString("gradsession"));
					rqb.setApplicationDate(rs.getString("AppDate"));

					list.add(rqb);
				}
				
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg.concat("\n\n"+ex.getMessage());
		}
		finally{
			if(rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return list;
	}
}
