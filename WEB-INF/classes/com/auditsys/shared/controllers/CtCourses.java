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
import com.auditsys.shared.helperbase.auditdata.*;
import com.auditsys.shared.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="CtCourses", urlPatterns={"/CourseTrans.json"})
public class CtCourses extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String userId = request.getParameter("userId").toString();
		Gson gson = new GsonBuilder().create();
		try{
			List<CourseTransBean> objCtb = AuditDataService.GetStudCECT(userId);
			String objCtbJson = gson.toJson(objCtb);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(objCtbJson);
		}catch (Exception ex){
			Logger.getLogger(CtCourses.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}