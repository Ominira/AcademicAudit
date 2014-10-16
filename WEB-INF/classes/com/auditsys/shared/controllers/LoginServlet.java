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

import com.auditsys.shared.helperbase.*;

/**
*@author Mustapha Taiwo
*/
@WebServlet(name="LoginServlet", urlPatterns={"/LoginServlet"})
public class LoginServlet extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		String username = request.getParameter("username").toString();
		String password = request.getParameter("password").toString();
		
		PrintWriter out = response.getWriter();
		boolean valid  = false;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			valid = LoginHelper.checkLogin(username,password);
			
			if(valid == true){
				if(LoginHelper.getUserLevel() > 0)
					out.println(LoginHelper.getUserId().toString());
			}else{
				out.println("ERROR");
			}
			
		}catch (Exception ex){
			Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
			request.setAttribute("message","Oops! Sorry, there has been an exception: "+ex.getMessage());
			// out.println("Oops! Sorry, there has been an exception: "+ex.getMessage());
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