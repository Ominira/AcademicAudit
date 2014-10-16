package com.auditsys.utils;

import java.io.*;
import java.net.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.annotation.WebServlet;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="RoutingAgent", urlPatterns={"/Main/*"})
public class RoutingAgent extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		if(request.getServletPath().equals("/partials/home.html")){
			request.getRequestDispatcher("WEB-INF/view/student/partials/home.html").forward(request, response);
		}
		else if (request.getServletPath().equals("/partials/audit.html")){
			request.getRequestDispatcher("WEB-INF/view/student/partials/audit.html").forward(request, response);
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