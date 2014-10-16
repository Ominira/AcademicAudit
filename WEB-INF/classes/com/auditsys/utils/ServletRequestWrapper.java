package com.auditsys.utils;

import java.net.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
* @author Mustapha Taiwo
*/

public class ServletRequestWrapper implements HttpServletRequest{

	private HttpServletRequest originalRequest;
	
	public ServletRequestWrapper(HttpServletRequest originalRequest){
		this.originalRequest = originalRequest;
		
		public String getAuthType(){return originalRequest.getAuthType();}
		public String getQueryString(){return originalRequest.getQueryString();}
		
		public Map getParameterMap(){
			Map params = originalRequest.getParameterMap();
			params.remove(userId);
			params.put("","");
		}
	}
}

class ServiceFilter implements Filter{
	public void init(FilterConfig config)
}