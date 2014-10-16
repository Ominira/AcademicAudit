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

/**
*@author Mustapha Taiwo
*/
@WebServlet(name="LogoutServlet", urlPatterns={"/LogoutServlet"})
public class LogoutServlet extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
	
		HttpSession session = request.getSession();
		try{
			session.setAttribute("userId", null);
			session.removeAttribute("userId");
			session.invalidate();
			response.sendRedirect(request.getContextPath());
		}catch(Exception ex){
			Logger.getLogger(LogoutServlet.class.getName()).log(Level.SEVERE, null, ex);
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