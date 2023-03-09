package com.mycart.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mycart.dao.CategoryDAO;
import com.mycart.dao.ProductDAO;
import com.mycart.entities.Category;
import com.mycart.entities.Product;
import com.mycart.helper.FactoryProvider;


@MultipartConfig
@WebServlet("/ProductOperationServlet")
public class ProductOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			PrintWriter out = response.getWriter();
			
			String op = request.getParameter("operation");
			
			if(op.trim().equals("addcategory")) {
				//add category
				String title = request.getParameter("catTitle");
				String description = request.getParameter("catDescription");
				
				//System.out.println(title);
				Category category = new Category();
				category.setCategoryTitle(title);
				category.setCategoryDescription(description);
				//System.out.println(category);
				
				CategoryDAO categoryDao = new CategoryDAO(FactoryProvider.getFactory());
				int catId = categoryDao.saveCategory(category);
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("message", "category added susseccfully" + catId);
				
				response.sendRedirect("admin.jsp");
				
				
			}else if(op.trim().equals("addproduct")) {
				
				String pName = request.getParameter("pName");
				String pDesc = request.getParameter("pDesc");
				int pPrice = Integer.parseInt(request.getParameter("pPrice"));
				int pDiscount = Integer.parseInt(request.getParameter("pDiscount"));
				int pQuantity = Integer.parseInt(request.getParameter("pQuantity"));
				int catId = Integer.parseInt(request.getParameter("catId"));
				Part part = request.getPart("pPic");
				
				Product p = new Product();
				p.setpName(pName);
				p.setpDesc(pDesc);
				p.setpPrice(pPrice);
				p.setpDiscount(pDiscount);
				p.setpQuantity(pQuantity);
				p.setpPhoto(part.getSubmittedFileName());
				
				System.out.println(p);
				
				
				CategoryDAO cdao = new CategoryDAO(FactoryProvider.getFactory());
				Category category = cdao.getCategoryById(catId);
				
				p.setCategory(category);
				
				ProductDAO pdao = new ProductDAO(FactoryProvider.getFactory());
				pdao.saveProduct(p);
				
				String path = request.getRealPath("images")+ File.separator+"products"+File.separator+part.getSubmittedFileName();
				System.out.println(path);
				
				/*
				 * FileOutputStream fos = new FileOutputStream(path);
				 * 
				 * InputStream is=part.getInputStream();
				 * 
				 * byte [] data = new byte[is.available()];
				 * 
				 * is.read(data);
				 * 
				 * fos.write(data);
				 * 
				 * fos.close();
				 */
				 
				
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("message", "product added susseccfully");
				
				response.sendRedirect("admin.jsp");
			}
			
			
			
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
