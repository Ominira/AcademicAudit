package com.auditsys.shared.helperbase.auditdata;

import java.util.*;

/**
* @author Mustapha Taiwo
*/

public class AuditDataBean implements java.io.Serializable{

	private String id = "";
	private String gradSession = "";
	private String extSem = "";
	private int totalSem = 0;
	private String spmResult = "";
	private String muetResult = "";
	private String auditStatus = "";
	private String applicationDate = "";
	private String programType = "";
	private int cectRemark = 0;
	private String approvingPersonnel = "";
	private int totalCreditExempted = 0;

	public AuditDataBean(){

	}

	public String getId(){return id;}
	public void setId(String id){this.id = id;}

	public String getGradSession(){return gradSession;}
	public void setGradSession(String gradSession){this.gradSession = gradSession;}

	public String getExtSem(){return extSem;}
	public void setExtSem(String extSem){this.extSem = extSem;}

	public int getTotalSem(){return totalSem;}
	public void setTotalSem(int totalSem){this.totalSem = totalSem;}

	public String getSpmResult(){return spmResult;}
	public void setSpmResult(String spmResult){this.spmResult = spmResult;}

	public String getMuetResult(){return muetResult;}
	public void setMuetResult(String muetResult){this.muetResult = muetResult;}

	public String getAuditStatus(){return auditStatus;}
	public void setAuditStatus(String auditStatus){this.auditStatus = auditStatus;}

	public String getApplicationDate(){return applicationDate;}
	public void setApplicationDate(String applicationDate){this.applicationDate = applicationDate;}

	public String getProgramType(){return programType;}
	public void setProgramType(String programType){this.programType = programType;}

	public int getCectRemark(){return cectRemark;}
	public void setCectRemark(int cectRemark){this.cectRemark = cectRemark;}

	public String getApprovingPersonnel(){return approvingPersonnel;}
	public void setApprovingPersonnel(String approvingPersonnel){this.approvingPersonnel = approvingPersonnel;}

	public int getTotalCreditExempted(){return totalCreditExempted;}
	public void setTotalCreditExempted(int totalCreditExempted){this.totalCreditExempted = totalCreditExempted;}
}