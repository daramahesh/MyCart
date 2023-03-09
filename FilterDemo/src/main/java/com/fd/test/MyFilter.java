package com.fd.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

/**
 * Servlet Filter implementation class MyFilter
 */
@WebFilter("/LoginServlet")
public class MyFilter extends HttpFilter implements Filter {

	/**
	 * @see Filter#destroy()
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		PrintWriter out = response.getWriter();
		String pass = request.getParameter("passwd");
		if (pass.equals("mahi")) {
			chain.doFilter(request, response);
		}else {
			out.println("invalid password");
			request.getRequestDispatcher("/index.html").include(request, response);
		}
		
	}
	public void destroy() {
		// TODO Auto-generated method stub
	}


	/**
	 * @see Filter#init(FilterConfig)
	 */
	

}
