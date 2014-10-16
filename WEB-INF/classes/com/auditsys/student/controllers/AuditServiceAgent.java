package com.auditsys.student.controllers;

import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.annotation.WebServlet;

import com.auditsys.shared.services.AuditDataService;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="AuditServiceAgent", urlPatterns={"/SaveAuditData"})
public class AuditServiceAgent extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String studId = request.getParameter("studId").toString();
		String mentorId = request.getParameter("mentorId").toString();
		String gradSession = request.getParameter("gradSession").toString();
		String extendedSem = request.getParameter("extendedSem").toString();
		int totalSem = Integer.parseInt(request.getParameter("totalSem"));
		String spmResult = request.getParameter("spmResult").toString();
		String muetResult = request.getParameter("muetResult").toString();
		String auditStatus = "Pending";
		String programType = request.getParameter("programType").toString();

		PrintWriter out = response.getWriter();
		boolean success = false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String check = AuditDataService.CheckAuditStatus(studId);

			if(check != null){
				if("".equals(check) || "Rejected".equalsIgnoreCase(check)){
					success = AuditDataService.SaveData(
						studId,mentorId,gradSession,
						extendedSem,totalSem,spmResult,
						muetResult,auditStatus,programType
						);
					if(success == true){
						out.println(1);
					}else{
						out.println(0);
					}
				}
				else if("Approved".equalsIgnoreCase(check) || "Approve".equalsIgnoreCase(check)){
					out.println(2);
				}
				else if("Pending".equalsIgnoreCase(check)){
					out.println(3);
				}
			}else{
				out.println(4);
			}
		}
		catch (Exception ex){
			Logger.getLogger(AuditServiceAgent.class.getName()).log(Level.SEVERE, null, ex);
			response.getWriter().write("Oops! Sorry, there has been an exception: "+ex.getMessage());
		}
	}
	@Override
	protected void doGet(HttpServletRequest request, 
		HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response)
	throws ServletException, IOException {
		processRequest(request, response);
	}
}

