package com.auditsys.shared.controllers;

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

@WebServlet(name="UpdateAuditStatus", urlPatterns={"/AuditStatus"})
public class UpdateAuditStatus extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String studId = request.getParameter("studId").toString();
		String auditStatus = request.getParameter("auditStatus").toString();
		String academicLevel = request.getParameter("academicLevel").toString();
		String comments = request.getParameter("comments").toString();

		int count = 0;

		PrintWriter out = response.getWriter();

		if("A".equalsIgnoreCase(academicLevel)){
			count = 2;
		}else if("B".equalsIgnoreCase(academicLevel)){
			count = 1;
		}

		boolean update = AuditDataService.UpdateStatus(studId, auditStatus, comments, count);

		if(update){
			out.println(1);
		}else{
			out.println(0);
		}
	}

	protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response)
                             throws ServletException, IOException {
        processRequest(request, response);
    }
	
	protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                              throws ServletException, IOException {
        processRequest(request, response);
    }

}