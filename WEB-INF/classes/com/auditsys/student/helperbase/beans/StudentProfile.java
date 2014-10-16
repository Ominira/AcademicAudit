package com.auditsys.student.helperbase.beans;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class StudentProfile implements java.io.Serializable{

	private String id = "";
	private String name = "";
	private String status = "";
	private String degreeId = "";
	private String degree = "";
	private int totalDegreeUnits = 0;
	private String degreeDuration = "";
	private String ic = "";
	private String sex = "";
	private String advisor = "";
	private String email = "";
	private String program = "";
	private String hp = "";
	private String intake = "";
	private int totalsem = 0;
	private double currentCgpa = 0.0;
	private int creditHoursTaken = 0;

	public StudentProfile(){

	}

	public String getId(){return id;}
	public void setId(String id){this.id = id;}

	public String getName(){return name;}
	public void setName(String name){this.name = name;}

	public String getStatus(){return status;}
	public void setStatus(String status){this.status = status;}

	public String getDegreeId(){return degreeId;}
	public void setDegreeId(String degreeId){this.degreeId = degreeId;}

	public String getDegree(){return degree;}
	public void setDegree(String degree){this.degree = degree;}

	public int getTotalDegreeUnits(){return totalDegreeUnits;}
	public void setTotalDegreeUnits(int totalDegreeUnits){this.totalDegreeUnits = totalDegreeUnits;}

	public String getDegreeDuration(){return degreeDuration;}
	public void setDegreeDuration(String degreeDuration){this.degreeDuration = degreeDuration;}

	public String getIc(){return ic;}
	public void setIc(String ic){this.ic = ic;}

	public String getSex(){return sex;}
	public void setSex(String sex){this.sex = sex;}

	public String getAdvisor(){return advisor;}
	public void setAdvisor(String advisor){this.advisor = advisor;}

	public String getEmail(){return email;}
	public void setEmail(String email){this.email = email;}

	public String getProgram(){return program;}
	public void setProgram(String program){this.program = program;}

	public String getHp(){return hp;}
	public void setHp(String hp){this.hp = hp;}

	public String getIntake(){return intake;}
	public void setIntake(String intake){this.intake = intake;}

	public int getTotalSem(){return totalsem;}
	public void setTotalSem(int totalsem){this.totalsem = totalsem;}

	public double getCurrentCgpa(){return currentCgpa;}
	public void setCurrentCgpa(double currentCgpa){this.currentCgpa = currentCgpa;}

	public int getCreditHoursTaken(){return creditHoursTaken;}
	public void setCreditHoursTaken(int creditHoursTaken){this.creditHoursTaken = creditHoursTaken;}

}