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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.auditsys.shared.helperbase.*;
import com.auditsys.shared.helperbase.beans.*;
import com.auditsys.shared.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="ListAuditRequests", urlPatterns={"/ListAuditRequests"})
public class ListAuditRequests extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		String academicLevel = request.getParameter("academicLevel").toString();
		String academicId = request.getParameter("academicId").toString();
		Gson gson = new GsonBuilder().create();
		try{
			List<RequestBean> objAdb = AuditDataService.RetrieveRequests(academicLevel, academicId);
			String objAdbJson = gson.toJson(objAdb);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(objAdbJson);
		}catch (Exception ex){
			Logger.getLogger(ListAuditRequests.class.getName()).log(Level.SEVERE, null, ex);
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