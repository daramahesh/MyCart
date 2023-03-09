
<%@page import="com.mycart.helper.MyHelper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.mycart.helper.FactoryProvider"%>
<%@page import="com.mycart.dao.CategoryDAO"%>
<%@page import="com.mycart.entities.Users" %>
<%@page import="com.mycart.entities.Category" %>
<% 
Users user=(Users)session.getAttribute("current");
//out.print(user);

 if(user==null){
	session.setAttribute("messege", "please login first");
	response.sendRedirect("userlogin.jsp");
	
	return;
	}
else if(user.getUserType().equals("normal")){
	
		session.setAttribute("messege", "you are a normal user access denied");
		response.sendRedirect("userlogin.jsp");
		return;
	} 

else 

{
	%> 


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin profile page</title>
</head>
<body>

	<%@include file="component/navbar.jsp"%>
	<%@include file="component/cssandjavascript.jsp"%>

	<div class="container admin">
		<div class="row mt-4">
		
		<div class="container-fluid mt-3">
		 
		    <%@include file="component/message.jsp" %>
		 
		</div>

			<!-- first box -->

<%
Map<String,Long> map1=MyHelper.getCount(FactoryProvider.getFactory());

%>



			<div class="col-md-4 text-center">

				<div class="card">
					<div class="card-body">
						<div class="container">
							<img style="max-width: 200px" class="img-fluid" alt="user-img"
								src="images/users.jpg">

						</div>

						<h1>users
						<span><%=map1.get("usercount")%></span>
						</h1>
                        


					</div>


				</div>


			</div>


			<!-- 2nd box -->
			<div class="col-md-4 text-center">
				<div class="card">
					<div class="card-body">

						<div class="container">
							<img style="max-width: 85px" class="img-fluid" alt="user-img"
								src="images/groceries-category-drop-shadow-black-glyph-icons-set-supermarket-food-sections-drink-products-ecommerce-retail-181801382.jpg">

						</div>


						<h1>categories
						<span><%=map1.get("categorycount") %></span>
						</h1>


					</div>


				</div>

			</div>


			<!-- 3rd box -->
			<div class="col-md-4 text-center">

				<div class="card">
					<div class="card-body">
						<div class="container">
							<img style="max-width: 95px" class="img-fluid" alt="user-img"
								src="images/1573145.png">

						</div>


						<h1>products
						<span><%=map1.get("productcount") %></span>
						</h1>


					</div>


				</div>



			</div>

		</div>

		<div class="row mt-6">


			<div class="col-md-6 text-center mt-3" data-bs-toggle="modal"
				data-bs-target="#add-product">

				<div class="card">
					<div class="card-body">
						<div class="container">
							<img style="max-width: 95px" class="img-fluid" alt="user-img"
								src="images/2891642.png">

						</div>


						<h1>prodcts add</h1>


					</div>


				</div>



			</div>



			<div class="col-md-6 text-center mt-3" data-bs-toggle="modal"
				data-bs-target="#add-categories">

				<div class="card">
					<div class="card-body">
						<div class="container">
							<img style="max-width: 95px" class="img-fluid" alt="user-img"
								src="images/2816954.png">

						</div>
						<h1>categories add</h1>
					</div>
				</div>

			</div>

		</div>
	</div>



	<!-- implementation modal start..... -->


	<!-- Modal -->
	<div class="modal fade" id="add-categories" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">categories
						detail</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form action="ProductOperationServlet" method="post">
					
					   <input type="hidden" name="operation" value="addcategory">

						<div class="form-group">
							<input name="catTitle" type="text" placeholder="enter title"
								class="form-control">

							<textarea class="form-control" name="catDescription"
								placeholder="enter categorie description"></textarea>

						</div>

						<div class="container text-center mt-4">
							<button type="submit" class="btn btn-outline-success">update</button>
							<button type="reset" class="btn btn-primary">reset</button>

						</div>


					</form>

				</div>

			</div>
		</div>
	</div>








	<!-- implementation modal ends..... -->


	<!-- 	implementation for product add modal start -->


	<div class="modal fade" id="add-product" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">product detail</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<form action="ProductOperationServlet" method="post" enctype="multipart/form-data">
					
					  <input type="hidden" name="operation" value="addproduct">

						<div class="form-group">
							<input class="form-control mt-2" name="pName"
								placeholder="enter product name">
						</div>
						<div class="form-group">
							<textarea name="pDesc" placeholder="enter product description"
								class="form-control mt-2"></textarea>
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pPrice"
								placeholder="enter product price">
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pDiscount"
								placeholder="enter product discount">
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pQuantity"
								placeholder="enter product quantity">
							</div>

							<!-- getting product category from database dynamically  -->
							<%
										
								CategoryDAO cdao = new CategoryDAO(FactoryProvider.getFactory());
			                    List<Category> list = cdao.getCategories();
							%>


							<div class="form-group">
							<h5>choose product category</h5>
								<select name="catId" class="form-control" id="">

									 <% for(Category c:list){
							
							%>
							
							<option value="<%= c.getCategoryId() %>"><%=c.getCategoryTitle() %> </option>
						
						<% }
						
						%> 

								</select>

								<div class="form-group">
									<label>upload product photo</label> <input name="pPic"
										class="form-control" type="file" required="required">

								</div>



							</div>









							<div class="container text-center mt-4">
								<button type="submit" class="btn btn-primary">update</button>
								<button type="reset" class="btn btn-primary">reset</button>

							</div>
					</form>

				</div>

			</div>
		</div>
	</div>



	<!-- 	implementation for product add modal start -->

</body>
</html>


<% 

}

%>  