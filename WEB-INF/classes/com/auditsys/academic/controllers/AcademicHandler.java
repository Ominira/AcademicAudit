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

import com.auditsys.academic.helperbase.*;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="AcademicHandler", urlPatterns={"/AcademicHandler"})
public class AcademicHandler extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String userId = request.getParameter("userId").toString();
		String userLevel = "";
		String nextPage = "";

		userLevel = AcademicHelper.getLecturerLevel(userId);

		if ("B".equals(userLevel)){
			nextPage = "WEB-INF/view/advisor/";
		}else if("A".equals(userLevel)){
			nextPage = "WEB-INF/view/program_head/";
		}else{
			nextPage = "LogoutServlet";
		}

		session.setAttribute("userLevel", userLevel);
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
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