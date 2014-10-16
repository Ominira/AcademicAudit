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

import com.auditsys.academic.services.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="UpdateAcademicsInfo", urlPatterns={"/UpdateAcademicsInfo"})
public class UpdateAcademicsInfo extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String lect_id = request.getParameter("lectId");
		String lect_name = request.getParameter("lectName");
		String lect_sex = request.getParameter("lectSex");
		String lect_level = request.getParameter("lectLevel");
		String lect_dept = request.getParameter("lectDept");
		String lect_email = request.getParameter("lectEmail");
		String lect_hp_no = request.getParameter("lectHpNo");

		boolean update = AcademicsDataService.UpdateAcademicsData(lect_id,lect_name,lect_sex,lect_level,lect_dept,lect_email,lect_hp_no);

		if(update){
			response.getWriter().write(1);
		}else{
			response.getWriter().write(0);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}