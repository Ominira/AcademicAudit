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

import com.auditsys.shared.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="AuditRequests", urlPatterns={"/AuditRequests"})
public class AuditRequests extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String academicLevel = request.getParameter("academicLevel").toString();
		String academicId = request.getParameter("academicId").toString();

		int requests = AuditDataService.GetNumOfRequests(academicLevel, academicId);

		PrintWriter out = response.getWriter();

		out.println(requests);
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
