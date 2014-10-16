package com.auditsys.shared.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class CourseHelper implements java.io.Serializable{
	private String courseId = "";
	private String courseName = "";
	private int courseUnit = 0;
	private String courses = "";

	public CourseHelper(){

	}

	public String getCourseId(){return courseId;}
	public void setCourseId(String courseId){this.courseId = courseId;}

	public String getCourseName(){return courseName;}
	public void setCourseName(String courseName){this.courseName = courseName;}

	public int getCourseUnit(){return courseUnit;}
	public void setCourseUnit(int courseUnit){this.courseUnit = courseUnit;}

	public String getCourses(){return courses;}
	public void setCourses(String courses){this.courses = courses;}
}