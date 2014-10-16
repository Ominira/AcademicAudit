package com.auditsys.shared.services;

import java.sql.*;
import java.text.*;
import java.util.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.auditsys.shared.helperbase.*;
import com.auditsys.shared.helperbase.beans.*;

/**
* @author Mustapha Taiwo
*/

public class GeneralService{

	private static Connection con = null;
	private static ResultSet rs = null;
	private static PreparedStatement ps = null;

	public static List<GradesHelper> GetGrades(){
		List<GradesHelper> dataList = new ArrayList<>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT letter_grade, grade_point FROM grades ORDER BY id ASC";
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();

				while(rs.next()){
					GradesHelper grades = new GradesHelper();
					grades.setLetterGrade(rs.getString("letter_grade"));
					grades.setGradeValue(rs.getDouble("grade_point"));
					dataList.add(grades);
				}
			}
		}catch(Exception ex){
			Logger.getLogger(GeneralService.class.getName()).log(Level.SEVERE, null, ex);
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return dataList;
	}

	public static List<CourseHelper> GetCourses(){
		List<CourseHelper> dataList = new ArrayList<>();
		try{
			con = DBHelper.createConnection();
			if(con != null){
				String query = "SELECT * FROM course_main";
				ps = con.prepareStatement(query);
				rs = ps.executeQuery();

				while(rs.next()){
					CourseHelper courses = new CourseHelper();
					courses.setCourseId(rs.getString("course_id"));
					courses.setCourseName(rs.getString("course_desc_short"));
					courses.setCourseUnit(rs.getInt("course_credit_hours"));
					courses.setCourses(courses.getCourseId() + " " +courses.getCourseName());
					dataList.add(courses);
				}
			}
		}catch(Exception ex){
			Logger.getLogger(GeneralService.class.getName()).log(Level.SEVERE, null, ex);
		}finally{
			if (rs != null) try{rs.close();} catch (SQLException ignore) {}
			if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
            if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}

		return dataList;
	}
}