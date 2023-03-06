package com.mycart.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.mycart.entities.Product;

public class ProductDAO {

	private SessionFactory factory;

	public ProductDAO(SessionFactory factory) {
		this.factory = factory;
	}
	
	public boolean saveProduct(Product product) {
		boolean f = false;
		try {
			
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(product);
			
			tx.commit();
			session.close();
			f = true;
			
		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}
	
	public List<Product> getAllProducts() {
		
		Session session = this.factory.openSession();
	    Query query = session.createQuery("from product");
	    List <Product> list = query.list();
	    return list;
	}
	
public List<Product> getAllProductsById(int cid) {
		
		Session session = this.factory.openSession();
	    Query query = session.createQuery("from product as p where p.category.categoryId=: id");
	    query.setParameter("id", cid);
	    List <Product> list = query.list();
	    return list;
	}
	
}
