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

import org.json.JSONArray;

import com.auditsys.shared.services.AuditDataService;

/**
* @author Mustapha Taiwo
*/

@WebServlet(name="CECTRemark", urlPatterns={"/RemarkCECT"})
public class CECTRemark extends HttpServlet{

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String studId = request.getParameter("studId").toString();


		try{

			JSONArray arrCourseId =  new JSONArray(request.getParameter("courseId"));
			JSONArray arrCectResult = new JSONArray(request.getParameter("cectResult"));
			JSONArray arrComments =  new JSONArray(request.getParameter("comments"));

			String[] courseId = new String[arrCourseId.length()];
			String[] cectResult = new String[arrCectResult.length()];
			String[] comments = new String[arrComments.length()];

			for(int i = 0; i < arrCourseId.length(); i++){
				courseId[i] = arrCourseId.getString(i);
				cectResult[i] = arrCectResult.getString(i);
				comments[i] = arrComments.getString(i);
			}

			Class.forName("com.mysql.jdbc.Driver");
			List<String[]> dataList = new ArrayList<>();


			if((courseId != null && courseId.length > 0) && (cectResult != null && cectResult.length > 0) && (comments != null && comments.length > 0)){

				for(int i = 0; i < courseId.length; i++){

					String[] remarkData;

					remarkData = new String[]{
										studId, courseId[i], 
										cectResult[i], comments[i]
									};

					dataList.add(remarkData);

				}

				boolean update = AuditDataService.UpdateCECTRemark(studId,dataList);

				if(update == true){
					out.println(1);
				}else{
					out.println(0);
				}
			}
			else{
				out.println(0);
			}
		}
		catch (Exception ex){
			Logger.getLogger(CECTRemark.class.getName()).log(Level.SEVERE, null, ex);
			response.getWriter().write("Oops! Sorry, there has been an exception: "+ex.getMessage());
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