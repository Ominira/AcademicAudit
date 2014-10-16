package com.auditsys.shared.services;

import java.io.*;
import java.net.*;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.*;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.annotation.WebServlet;

/**
* @author Mustapha Taiwo
*/

@WebFilter("/*")
public class FilterService implements Filter{

    private FilterConfig filterConfig;
	@Override
    public void init(FilterConfig config) throws ServletException{
        this.filterConfig = config;
    }
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)throws ServletException, IOException{
        HttpServletResponse response = (HttpServletResponse) res;
        HttpServletRequest request = (HttpServletRequest) req;
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
        response.setDateHeader("Expires", 0); // Proxies.
        chain.doFilter(request, response);
    }
    @Override
    public void destroy(){
        this.filterConfig = null;
	}
}