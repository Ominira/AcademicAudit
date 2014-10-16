package com.auditsys.shared.helperbase.auditdata;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class CourseRemarkedBean implements java.io.Serializable{
	private String id = "";
	private String courseId = "";
	private String courseName = "";
	private int courseUnit = 0;
	private String courseStatus = "";
	private String cectResult = "";
	private String comments = "";

	public CourseRemarkedBean(){

	}

	public String getId(){return id;}
	public void setId(String id){this.id = id;}

	public String getCourseId(){return courseId;}
	public void setCourseId(String courseId){this.courseId = courseId;}

	public String getCourseName(){return courseName;}
	public void setCourseName(String courseId){this.courseName = courseName;}

	public int getCourseUnit(){return courseUnit;}
	public void setCourseUnit(int courseUnit){this.courseUnit = courseUnit;}

	public String getCourseStatus(){return courseStatus;}
	public void setCourseStatus(String courseId){this.courseStatus = courseStatus;}

	public String getCectResult(){return cectResult;}
	public void setCectResult(String cectResult){this.cectResult = cectResult;}

	public String getComments(){return comments;}
	public void setComments(String comments){this.comments = comments;}
}
