package com.mycart.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.mycart.entities.Users;
import com.mycart.helper.FactoryProvider;


public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public RegisterServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String userName = request.getParameter("username");
		String userEmail = request.getParameter("useremail");
		String userPassword = request.getParameter("userpassword");
		String userPhone = request.getParameter("userphone");
		String userAddress = request.getParameter("useraddress");
		
		Users user = new Users(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress, "normal");
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		int userId = (Integer) session.save(user);
		
		tx.commit();
		session.close();
		
		HttpSession s = request.getSession();
		s.setAttribute("message", "registered successfully");
        response.sendRedirect("register.jsp");		
	}

}
