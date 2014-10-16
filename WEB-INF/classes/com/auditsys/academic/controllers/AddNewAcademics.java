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

import com.auditsys.shared.helperbase.*;
import com.auditsys.academic.helperbase.beans.*;

/**
* @author Mustapha Taiwo
*/
@WebServlet(name="AddNewAcademics", urlPatterns={"/AddNewAcademics"})
public class AddNewAcademics extends HttpServlet{
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	
		String lect_id = request.getParameter("lectId");
		String lect_name = request.getParameter("lectName");
		String lect_sex = request.getParameter("lectSex");
		String lect_level = request.getParameter("lectLevel");
		String lect_dept = request.getParameter("lectDept");
		String lect_email = request.getParameter("lectEmail");
		String lect_hp_no = request.getParameter("lectHpNo");
		String lect_status = request.getParameter("lectStatus");
		
		String user_id = request.getParameter("userId");
		String user_pass = request.getParameter("userPass");
		
		//PrintWriter out = response.getWriter();
		boolean update  = false;
		
		try{
			Connection con = DBHelper.createConnection();
			if(con != null){
			
				String query = "INSERT INTO lecturer_profile (lect_id,lect_name,lect_sex,lect_status,lect_level,lect_dept,lect_email,lect_hp_no)"+
								"VALUES(?,?,?,?,?,?,?,?)";
				
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1,lect_id);
				ps.setString(2,lect_name);
				ps.setString(3,lect_sex);
				ps.setString(4,lect_status);
				ps.setString(5,lect_level);
				ps.setString(6,lect_dept);
				ps.setString(7,lect_email);
				ps.setString(8,lect_hp_no);
				
				int rowsAffected = ps.executeUpdate();
				
				if(rowsAffected > 0){
					update = true;
				}
				else{
					update = false;
				}
				
				if(update){
					String query_2 = "INSERT INTO users (id,user_id,user_pass,user_level,lect_id)"+
									"VALUES(?,?,?,?,?)";
					
					PreparedStatement psmt = con.prepareStatement(query_2);
					psmt.setString(1,null);
					psmt.setString(2,user_id);
					psmt.setString(3,user_pass);
					psmt.setString(4,"2");
					psmt.setString(5,lect_id);
					
					int rowsAffected_2 = psmt.executeUpdate();
					if(rowsAffected_2 > 0){
						response.getWriter().write(1);
						con.close();
					}
					else{
						response.getWriter().write(0);
					}
				}
				else{
					response.getWriter().write(2);
				}
			}
		}
		catch(Exception ex){
			Logger.getLogger(AddNewAcademics.class.getName()).log(Level.SEVERE, null, ex);
			response.getWriter().write(3);
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