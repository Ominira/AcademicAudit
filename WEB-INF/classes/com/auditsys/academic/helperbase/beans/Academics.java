package com.auditsys.academic.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class Academics implements java.io.Serializable{

	String academicId = "";
	String academicName = "";

	public Academics(){

	}

	public String getAcademicId(){return academicId;}
	public void setAcademicId(String academicId){this.academicId = academicId;}

	public String getAcademicName(){return academicName;}
	public void setAcademicName(String academicName){this.academicName = academicName;}

}