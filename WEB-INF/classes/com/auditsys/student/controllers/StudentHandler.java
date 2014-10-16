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

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="StudentHandler", urlPatterns={"/Main"})
public class StudentHandler extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String matricId = request.getParameter("userId");

		HttpSession session = request.getSession(true);
		session.setAttribute("matricNo", matricId);

		RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/view/student/main.jsp");
		dispatch.forward(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		processRequest(request, response);
	}
}