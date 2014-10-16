package com.auditsys.student.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class StudentAcadStatus implements java.io.Serializable{

	private String id = "";
	private String semId = "";
	private String status = "";
	private String gpa = "";
	private String cgpa = "";
	private String totalHour = "";
	private String creditPoint = "";
	private String cummulativeHour = "";
	private String cummulativePoint = "";

	public StudentAcadStatus(){

	}

	public String getId(){return id;}
	public void setId(String id){this.id = id;}

	public String getSemId(){return semId;}
	public void setSemId(String semId){this.semId = semId;}

	public String getStatus(){return status;}
	public void setStatus(String status){this.status = status;}

	public String getGpa(){return gpa;}
	public void setGpa(String gpa){this.gpa = gpa;}

	public String getCgpa(){return cgpa;}
	public void setCgpa(String cgpa){this.cgpa = cgpa;}

	public String getTotalHour(){return totalHour;}
	public void setTotalHour(String totalHour){this.totalHour = totalHour;}

	public String getCreditPoint(){return creditPoint;}
	public void setCreditPoint(String creditPoint){this.creditPoint = creditPoint;}

	public String getCummulativeHour(){return cummulativeHour;}
	public void setCummulativeHour(String cummulativeHour){this.cummulativeHour = cummulativeHour;}

	public String getCummulativePoint(){return cummulativePoint;}
	public void setCummulativePoint(String cummulativePoint){this.cummulativePoint = cummulativePoint;}

}