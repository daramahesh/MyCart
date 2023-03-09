<%@page import="com.mycart.entities.Product"%>
<%@page import="com.mycart.dao.ProductDAO"%>
<%@page import="com.mycart.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.mycart.helper.FactoryProvider"%>
<%@page import="com.mycart.dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>products page</title>
</head>
<body>

	<%@include file="component/cssandjavascript.jsp"%>
	<%@include file="component/navbar.jsp"%>


	<div class="container-fluid mt-2">

		<div class="row">

			<!--  for fetching products from database -->
			<%
			
			//String id = request.getParameter("category");
					//out.print(id);
			CategoryDAO cdao = new CategoryDAO(FactoryProvider.getFactory());
			List<Category> ll1 = cdao.getCategories();

				 	
					ProductDAO pdao = new ProductDAO(FactoryProvider.getFactory());
					List<Product> mm = pdao.getAllProducts();

				/* 	if (id.trim().equals("all")) {
						mm = pdao.getAllProducts();
					}

					else {
						int catidd = Integer.parseInt(id);

						mm = pdao.getAllProductsById(catidd);
					}		  */
					
					
					
			%>



			<!--  for categories -->
			<div class=" col-md-2">

				<div class="list-group mt-0">
					

					<%
					for (Category cc : ll1) {
					%>

					<a href="product1.jsp?category=<%=cc.getCategoryId()%>"
						class="list-group-item list-group-item-action"> <%=cc.getCategoryTitle()%>
					</a>

					<%
					}
					%>


				</div>



			</div>




			<!--  
 for products -->
			<div class=" col md-8">


				<div class="row md-4">


						<div class="card-columns">


							<%
							for (Product pp : mm) {
							%>




							<div class="card">

								<div class="card-body">
									<h5 class="card-title">
										<%=pp.getpDesc()%>
									</h5>

									<p class="card-text">
										<%=pp.getpName()%>

									</p>

								</div>


								<div class="card-footer">
									<button class="btn btn-warning">add to cart</button>
									<button class="btn btn-success">
										&#8377;
										<%=pp.getpPrice()%></button>
								</div>

							</div>


							<%
							}
							%>






						</div>



				</div>


			</div>



		</div>



	</div>


</body>
</html>