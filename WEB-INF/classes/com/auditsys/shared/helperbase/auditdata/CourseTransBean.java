package com.auditsys.shared.helperbase.auditdata;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class CourseTransBean implements java.io.Serializable{

	private String id = "";
	private String courseId = "";
	private String courseName = "";
	private String courseGrade = "";
	private String courseGp = "";
	private String transType = "";

	public CourseTransBean(){

	}

	public String getId(){return id;}
	public void setId(String id){this.id = id;}

	public String getCourseId(){return courseId;}
	public void setCourseId(String courseId){this.courseId = courseId;}

	public String getCourseName(){return courseName;}
	public void setCourseName(String courseName){this.courseName = courseName;}

	public String getCourseGrade(){return courseGrade;}
	public void setCourseGrade(String courseGrade){this.courseGrade = courseGrade;}

	public String getCourseGp(){return courseGp;}
	public void setCourseGp(String courseGp){this.courseGp = courseGp;}

	public String getTransType(){return transType;}
	public void setTransType(String transType){this.transType = transType;}
}