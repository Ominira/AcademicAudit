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

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="AcademicMain", urlPatterns={"/AcademicMain"})
public class AcademicMain extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String level = "";
		String page = "";

		boolean check = session.getAttribute("userLevel") == null ? true : false;

		if(check == false){
			level = session.getAttribute("userLevel").toString();
		}else{
			page = "LogoutServlet";
		}

		if("A".equals(level)){
			page = "/WEB-INF/view/program_head/main.jsp";
		}else if("B".equals(level)){
			page = "/WEB-INF/view/advisor/main.jsp";
		}else{
			page = "LogoutServlet";
		}

		RequestDispatcher dispatch = request.getRequestDispatcher(page);
		dispatch.forward(request, response);
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