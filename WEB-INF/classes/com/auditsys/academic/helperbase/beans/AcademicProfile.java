package com.auditsys.academic.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class AcademicProfile implements java.io.Serializable{

	String academicId = "";
	String academicName = "";
	String academicSex = "";
	String academicStatus = "";
	String academicLevel = "";
	String academicDept = "";
	String academicEmail = "";
	String academicPhone = "";

	public AcademicProfile(){

	}

	public String getAcademicId(){return academicId;}
	public void setAcademicId(String academicId){this.academicId = academicId;}

	public String getAcademicName(){return academicName;}
	public void setAcademicName(String academicName){this.academicName = academicName;}

	public String getAcademicSex(){return academicSex;}
	public void setAcademicSex(String academicSex){this.academicSex = academicSex;}

	public String getAcademicStatus(){return academicStatus;}
	public void setAcademicStatus(String academicStatus){this.academicStatus = academicStatus;}

	public String getAcademicLevel(){return academicLevel;}
	public void setAcademicLevel(String academicLevel){this.academicLevel = academicLevel;}

	public String getAcademicDept(){return academicDept;}
	public void setAcademicDept(String academicDept){this.academicDept = academicDept;}

	public String getAcademicEmail(){return academicEmail;}
	public void setAcademicEmail(String academicEmail){this.academicEmail = academicEmail;}

	public String getAcademicPhone(){return academicPhone;}
	public void setAcademicPhone(String academicPhone){this.academicPhone = academicPhone;}
}