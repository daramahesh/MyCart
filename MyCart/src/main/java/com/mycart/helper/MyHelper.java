package com.mycart.helper;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class MyHelper {
	
	
	public static Map<String,Long> getCount(SessionFactory fac) {
		Session ses=fac.openSession();
		
		String Q1="select count(*) from Users";
		String Q2="select count(*) from Category";
		String Q3="select count(*) from Product";
		Query q1=ses.createQuery(Q1);
		Query q2=ses.createQuery(Q2);
		Query q3=ses.createQuery(Q3);
		
		Long usercount=(Long) q1.list().get(0);
		Long categorycount=(Long) q2.list().get(0);
		Long productcount=(Long) q3.list().get(0);
		
		Map<String,Long> map=new HashMap<String,Long>();
		map.put("usercount", usercount);
		map.put("categorycount", categorycount);
		map.put("productcount", productcount);
		
		ses.close();
		return map;
	}

}
