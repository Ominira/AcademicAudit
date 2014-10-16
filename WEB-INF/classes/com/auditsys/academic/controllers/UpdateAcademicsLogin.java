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

@WebServlet(name="UpdateAcademicsLogin", urlPatterns={"/UpdateAcademicsLogin"})
public class UpdateAcademicsLogin extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String lect_id = request.getParameter("lectId");
		String user_id = request.getParameter("userId");
		String user_pass = request.getParameter("userPass");

		boolean update = AcademicsDataService.UpdateAcademicsLogin(lect_id,user_id,user_pass);

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