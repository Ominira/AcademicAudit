package com.auditsys.shared.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class GradesHelper implements java.io.Serializable{
	private String letterGrade = "";
	private double gradeValue = 0.00;

	public GradesHelper(){

	}

	public String getLetterGrade(){return letterGrade;}
	public void setLetterGrade(String letterGrade){this.letterGrade = letterGrade;}

	public double getGradeValue(){return gradeValue;}
	public void setGradeValue(double gradeValue){this.gradeValue = gradeValue;} 
}