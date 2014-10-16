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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.auditsys.shared.helperbase.*;
import com.auditsys.student.helperbase.beans.*;
import com.auditsys.student.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="StudentData", urlPatterns={"/StudentData.json"})
public class StudentData extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String userId = request.getParameter("userId").toString();
		Gson gson = new GsonBuilder().create();

		try{
			List<StudentProfile> sData = StudentDataService.getStudentDetails(userId);
			String sDataJson = gson.toJson(sData);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(sDataJson);

		}catch (Exception ex){
			Logger.getLogger(StudentData.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}