package com.mycart.helper;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class MyHelper {
	
	
	public static Map<String,Integer> getCount(SessionFactory fac) {
		Session ses=fac.openSession();
		
		String Q1="select count(*) from Users";
		String Q2="select count(*) from category";
		String Q3="select count(*) from product";
		Query q1=ses.createQuery(Q1);
		Query q2=ses.createQuery(Q2);
		Query q3=ses.createQuery(Q3);
		
		int usercount=q1.list().size();
		int categorycount=q2.list().size();
		int productcount=q3.list().size();
		
		Map<String,Integer> map=new HashMap<String,Integer>();
		map.put("usercount", usercount);
		map.put("categorycount", categorycount);
		map.put("productcount", productcount);
		
		ses.close();
		return map;
	}

}
