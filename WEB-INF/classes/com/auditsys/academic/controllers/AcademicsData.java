package com.auditsys.academic.controllers;

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
import com.auditsys.academic.helperbase.beans.*;
import com.auditsys.academic.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="AcademicsData", urlPatterns={"/AcademicsData.json"})
public class AcademicsData extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String academicId = request.getParameter("academicId").toString();
		Gson gson = new GsonBuilder().create();

		try{
			List<AcademicProfile> aData = AcademicsDataService.AcademicsDetails(academicId);
			String aDataJson = gson.toJson(aData);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(aDataJson);

		}catch (Exception ex){
			Logger.getLogger(AcademicsData.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}