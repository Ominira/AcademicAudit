package com.auditsys.student.services;

import java.sql.*;
import java.util.*;
import java.text.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.auditsys.shared.helperbase.*;

import com.auditsys.student.helperbase.*;
import com.auditsys.student.helperbase.beans.*;

/**
* @author Mustapha Taiwo
*/

public class StudentDataService{

	static DecimalFormat df = new DecimalFormat("0.00");
	
	private static String errorMsg = "";

	public StudentDataService(){

	}

	public static String getErrorMsg(){return errorMsg;}
	public static void setErrorMsg(String _errorMsg){ _errorMsg = errorMsg;}

	public static List<StudentProfile> getStudentDetails(String userid){
	
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<StudentProfile> dataList = new ArrayList<>();
		
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM student_profile, program, degree_main, lecturer_profile WHERE stud_id = ? AND "+
							   "program.prog_id = student_profile.stud_program AND "+
							   "student_profile.stud_degree = degree_main.degree_id AND " + 
							   "student_profile.stud_advisor = lecturer_profile.lect_id";
				ps = con.prepareStatement(query);
				ps.setString(1,userid);
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					StudentProfile sProfile = new StudentProfile();
					sProfile.setId(rs.getString("stud_id"));
					sProfile.setName(rs.getString("stud_name"));
					sProfile.setStatus(rs.getString("stud_status"));
					sProfile.setDegreeId(rs.getString("degree_id"));
					sProfile.setDegree(rs.getString("degree_desc_eng"));
					sProfile.setTotalDegreeUnits(rs.getInt("degree_tot_credit_hours"));
					sProfile.setDegreeDuration(rs.getString("degree_duration"));
					sProfile.setIc(rs.getString("stud_ic_cur"));
					sProfile.setSex(rs.getString("stud_sex"));
					sProfile.setAdvisor(rs.getString("lect_name"));
					sProfile.setEmail(rs.getString("stud_email"));
					sProfile.setProgram(rs.getString("prog_desc"));
					sProfile.setHp(rs.getString("stud_hp_no"));
					sProfile.setIntake(rs.getString("stud_intake"));
					sProfile.setTotalSem(getTotalSem(userid));
					sProfile.setCurrentCgpa(getCurrentCGPA(userid));
					sProfile.setCreditHoursTaken(getCreditHoursTaken(userid));
					dataList.add(sProfile);
				} 
			}
		}
		catch (Exception ex) 
		{
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}
		finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
		
		return dataList;
	}

	public static List<StudentAcadStatus> getStudAcadStatus(String stud_id){
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<StudentAcadStatus> dataList = new ArrayList<>();

		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM stud_acad_sts WHERE studsts_stud_id = ? "+
							   "ORDER BY (SELECT SUBSTRING(STUDSTS_SEM_ID,2,2))";
				ps = con.prepareStatement(query);
				ps.setString(1, stud_id);
				rs = ps.executeQuery();
				while (rs.next()){
					StudentAcadStatus sStats = new StudentAcadStatus();
					sStats.setId(rs.getString("STUDSTS_STUD_ID"));
					sStats.setSemId(rs.getString("STUDSTS_SEM_ID"));
					sStats.setStatus(rs.getString("STUDSTS_STS"));
					sStats.setGpa(rs.getString("STUDSTS_GPA"));
					sStats.setCgpa(rs.getString("STUDSTS_CGPA"));
					sStats.setTotalHour(rs.getString("STUDSTS_TOT_HR"));
					sStats.setCreditPoint(rs.getString("STUDSTS_POINT"));
					sStats.setCummulativeHour(rs.getString("STUDSTS_CUM_HR"));
					sStats.setCummulativePoint(rs.getString("STUDSTS_CUM_POINT"));
					dataList.add(sStats);
				}
			}
		}catch (Exception ex) {
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
		return dataList;
	} 

	public static List<CourseRegistered> getCourseRegistered(String stud_id){

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<CourseRegistered> dataList = new ArrayList<>();

		double total_grade = 0;
		int cum_hrs = 0;
		double cum_point = 0.0;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DBHelper.createConnection();
			if(con != null){
				String query =  "SELECT * FROM course_registration, course_main WHERE courseregis_stud_id = ?"+
							    "AND course_registration.courseregis_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();
				while(rs.next()){
					CourseRegistered sCourses = new CourseRegistered();
					sCourses.setId(rs.getInt("id"));
					sCourses.setSemId(rs.getString("courseregis_semester_id"));
					sCourses.setCourseId(rs.getString("courseregis_course_id"));
					sCourses.setDescription(rs.getString("course_desc_short"));
					sCourses.setGrade(rs.getString("courseregis_grade"));
					sCourses.setGradePoint(Double.parseDouble(rs.getString("courseregis_grade_point")));
					sCourses.setCreditHours(rs.getInt("course_credit_hours"));
					sCourses.setTotalGrade(Double.parseDouble(df.format(sCourses.getGradePoint() * sCourses.getCreditHours())));
					cum_point += sCourses.getTotalGrade();
					sCourses.setCummulativePoint(Double.parseDouble(df.format(cum_point)));
					cum_hrs += sCourses.getCreditHours();
					sCourses.setCummulativeHour(cum_hrs);
					dataList.add(sCourses);
				}
			}
		}catch (Exception ex){
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return dataList;
	}

	public static int getTotalSem(String stud_id){

		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT COUNT(*) FROM stud_acad_sts WHERE studsts_stud_id = ?";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);
				rs = ps.executeQuery();
				if(rs.next()){
					count = rs.getInt(1);
				}
			}
		}catch (Exception ex){
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}finally{
			
        }

        return count;
	}

	public static double getCurrentCGPA(String stud_id){
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		double current = 0.0;
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM course_registration, course_main WHERE courseregis_stud_id = ?"+
							   "AND course_registration.courseregis_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,stud_id);

				rs = ps.executeQuery();

				double gradePoint = 0.0;
				int creditUnit = 0;
				double totalGradePoint = 0.0;
				int cummulativeHours = 0;
				double cummulativePoints = 0.0;
				double cummulativePointAvg = 0.0;

				while(rs.next()){
					gradePoint = Double.parseDouble(rs.getString("courseregis_grade_point"));
					creditUnit = rs.getInt("course_credit_hours");

					totalGradePoint = gradePoint * creditUnit;

					cummulativePoints += totalGradePoint;
					cummulativeHours += creditUnit;
				}

				cummulativePointAvg = (cummulativePoints / cummulativeHours);
				current = Double.parseDouble(df.format(cummulativePointAvg));
			}
		}catch (Exception ex){
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}finally{
			
        }

        return current;
	}

	public static int getCreditHoursTaken(String userid){
		
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int taken  = 0;

		List<Integer> list = new ArrayList<>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT course_credit_hours, courseregis_stud_id  FROM course_main,course_registration WHERE"+
							   " course_registration.courseregis_stud_id = ? AND"+
							   " course_registration.courseregis_course_id = course_main.course_id";
				ps = con.prepareStatement(query);
				ps.setString(1,userid);
				rs = ps.executeQuery();

				while(rs.next()){
					list.add(rs.getInt("course_credit_hours"));
				}

				for(int i = 0; i < list.size(); i++){
					if(list.get(i) != null && list.get(i) != 0){
						taken += list.get(i);
					}
				}
			}
		}
		catch (Exception ex){
			Logger.getLogger(StudentDataService.class.getName()).log(Level.SEVERE, null, ex);
			errorMsg = ex.getMessage();
		}
		finally{
			
        }
        return taken;
	}
}
