package com.mycart.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycart.dao.UserDAO;
import com.mycart.entities.Users;
import com.mycart.helper.FactoryProvider;

public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			UserDAO userdao = new UserDAO(FactoryProvider.getFactory());
			Users user = userdao.getUserByEmailAndPassword(email, password);
			
		    HttpSession session = request.getSession();
		   
			if(user==null) {
				session.setAttribute("msg", "ivalid email or password");
				response.sendRedirect("userlogin.jsp");
			}else {
				out.println("<h2>Welcome " + user.getUserName() + "</h2>");
			}
			//login
			 session.setAttribute("current",user);
			if(user.getUserType().equals("admin")) {
				//out.println("<h2>Welcome " + user.getUserName() + "</h2>");

				//admin
				response.sendRedirect("admin.jsp");
			}else if (user.getUserType().equals("normal")) {
				
				response.sendRedirect("userdash.jsp");
			}else {
				out.println("we have not identified user type");
			}
			
			
		
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
