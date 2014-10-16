package com.auditsys.shared.services;

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

@WebServlet(name="AccountService", urlPatterns={"/AccountService"})
public class AccountService extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		String userId = request.getParameter("userId").toString();
		String nextPage = "";
		HttpSession session = request.getSession(false);
	
		if("ERROR".equals(userId) || "".equals(userId) || userId == null){
			response.sendRedirect("/");
		}
		else{
			
			if(session != null){
				session.invalidate();
			}
			
			session = request.getSession(true);
			session.setMaxInactiveInterval(24 * 60 * 60);
			session.setAttribute("userId",userId);
			request.setAttribute("userId",userId);
			if(session.getAttribute("userId").toString().length() == 10){
				nextPage = "WEB-INF/view/student/";
			}else if(session.getAttribute("userId").toString().length() == 6){
				nextPage = "AcademicHandler";
			}else{
				nextPage = "LogoutServlet";
			}

			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}
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



















