package com.mycart.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mycart.entities.Users;

public class UserDAO {

	private SessionFactory factory;

	public UserDAO(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public Users getUserByEmailAndPassword(String email, String password) {
		Users user=null;
		
		try {
			Session session = this.factory.openSession();
			Query q = session.createQuery("from Users where userEmail=:e and userPassword=:p");
			q.setParameter("e", email);
			q.setParameter("p", password);
			
			user = (Users) q.uniqueResult();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return user;
	}
}
