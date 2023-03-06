
<%-- <%@page import="org.erragada.entity.UserReg" %>
<% 
UserReg user=(UserReg)session.getAttribute("current-user");
if(user==null){
	session.setAttribute("messege", "please login first");
	response.sendRedirect("userlogin.jsp");
	
	return;
	}
 if(UserReg.getType().equals("normal")){
	
		session.setAttribute("messege", "you are a normal user access denied");
		response.sendRedirect("userlogin.jsp");
		return;
	
} 




%> --%>

















<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="component/navbar.jsp"%>
	<%@include file="component/cssandjavascript.jsp"%>

	<div class="container admin">
		<div class="row mt-4">

			<!-- first box -->

			<div class="col-md-4 text-center">

				<div class="card">
					<div class="card-body">
						<div class="container">
							<img style="max-width: 200px" class="img-fluid" alt="user-img"
								src="images/users.jpg">

						</div>

						<h1>users</h1>


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


						<h1>categories</h1>


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


						<h1>products</h1>


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

					<form action="#" method="post">

						<div class="form-group">
							<input name="title" type="text" placeholder="enter title"
								class="form-control">

							<textarea class="form-control" name="description"
								placeholder="enter categorie description"></textarea>

						</div>

						<div class="container text-center mt-4">
							<button type="button" class="btn btn-primary">update</button>
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

					<form action="#" method="post" enctype="multipart/form-data">

						<div class="form-group">
							<input class="form-control mt-2" name="pname"
								placeholder="enter product name">
						</div>
						<div class="form-group">
							<textarea name="pdesc" placeholder="enter product description"
								class="form-control mt-2"></textarea>
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pprice"
								placeholder="enter product price">
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pdiscount"
								placeholder="enter product discount">
						</div>
						<div class="form-group">
							<input class="form-control mt-2" name="pquantity"
								placeholder="enter product quantity">
							<div />

							<!-- getting product category from database dynamically  -->
							<%
							/* 			
								categorydao dao=new categorydao();
							list<categories> ll=dao.getcategories(); */
							%>


							<div class="form-group">
							<h5>choose product category</h5>
								<select name="catid" class="form-control" id="">

									<%-- <% for(categories g:ll){
							
							%>
							
							<option value="<%= g.gatrcategorieid() %>"><%=g.getcategorieretype() %> </option>
						
						<% }
						
						%> --%>

								</select>

								<div class="form-group">
									<label>upload product photo</label> <input name="ppic"
										class="form-control" type="file" required="required">

								</div>



							</div>









							<div class="container text-center mt-4">
								<button type="button" class="btn btn-primary">update</button>
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