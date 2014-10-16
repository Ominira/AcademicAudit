package com.auditsys.shared.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class RequestBean implements java.io.Serializable{

	String studId = "";
	String studName = "";
	String studProgram = "";
	String studGradSession = "";
	String applicationDate = "";


	public RequestBean(){

	}

	public String getStudId(){return studId;}
	public void setStudId(String studId){this.studId = studId;}

	public String getStudName(){return studName;}
	public void setStudName(String studName){this.studName = studName;}

	public String getStudProgram(){return studProgram;}
	public void setStudProgram(String studProgram){this.studProgram = studProgram;}

	public String getStudGradSession(){return studGradSession;}
	public void setStudGradSession(String studGradSession){this.studGradSession = studGradSession;}

	public String getApplicationDate(){return applicationDate;}
	public void setApplicationDate(String applicationDate){this.applicationDate = applicationDate;}

}