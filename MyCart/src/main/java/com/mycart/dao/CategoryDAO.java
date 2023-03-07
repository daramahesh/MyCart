package com.mycart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.mycart.entities.Category;
import com.mycart.helper.FactoryProvider;



public class CategoryDAO {

	private SessionFactory factory;

	public CategoryDAO(SessionFactory factory) {
		super();
		this.factory = factory;
	}
	
	public int saveCategory(Category cat) {
		
		Session session = this.factory.openSession();
		Transaction tx = session.beginTransaction();
		
		int catId = (Integer) session.save(cat);
		tx.commit();
		session.close();
		return catId;
	}
	 
	public List<Category> getCategories() {
		
		Session s = this.factory.openSession();
		Query query = s.createQuery("from Category");
		List<Category> list = query.list();
		s.close();
		return list;
	}
	
	public Category getCategoryById(int cid) {
		Category cat=null;
		try {
			Session session = this.factory.openSession();
			cat = (Category) session.get(Category.class, cid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cat;
	}
}
