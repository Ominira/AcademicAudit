package com.auditsys.student.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class CourseRegistered implements java.io.Serializable{

	private int id = 0;
	private String semId = "";
	private String courseId = "";
	private String description = "";
	private String grade = "";
	private double gradePoint = 0.00;
	private int creditHours = 0;
	private double totalGrade = 0.00;
	private double cummulativePoint = 0.00;
	private int cummulativeHour = 0;

	public CourseRegistered(){

	}

	public int getId(){return id;}
	public void setId(int id){this.id = id;}

	public String getSemId(){return semId;}
	public void setSemId(String semId){this.semId = semId;}

	public String getCourseId(){return courseId;}
	public void setCourseId(String courseId){this.courseId = courseId;}

	public String getDescription(){return description;}
	public void setDescription(String description){this.description = description;}

	public String getGrade(){return grade;}
	public void setGrade(String grade){this.grade = grade;}

	public double getGradePoint(){return gradePoint;}
	public void setGradePoint(double gradePoint){this.gradePoint = gradePoint;}

	public int getCreditHours(){return creditHours;}
	public void setCreditHours(int creditHours){this.creditHours =  creditHours;}

	public double getTotalGrade(){return totalGrade;}
	public void setTotalGrade(double totalGrade){this.totalGrade = totalGrade;}

	public double getCummulativePoint(){return cummulativePoint;}
	public void setCummulativePoint(double cummulativePoint){this.cummulativePoint = cummulativePoint;}

	public int getCummulativeHour(){return cummulativeHour;}
	public void setCummulativeHour(int cummulativeHour){this.cummulativeHour = cummulativeHour;} 
}