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
	<div class="row">

		<!--  for fetching products from database -->
		<%
		//productsdao pdao=new productsdao(FactoryProvider.getFactory());
		//	List<product> ll=pdao.getproducts();
		// categorydao cdao=new categorydao(FactoryProvider.getFactory());

		//List<category> ll1=cdao.getCategory();
		%>



		<!--  for categories -->
		<div class=" col-md-2">

			<div class="list-group mt-0">
				<a href="#" class="list-group-item list-group-item-action active">
					Category list </a>

				<%
				//for(category cc:ll1){
				%>

				<a href="#" class="list-group-item list-group-item-action"> <%-- <%=cc.getTitle() %> --%>
				</a>

				<%
				//}
				%>


			</div>



		</div>

		<!--  
 for products -->

		<div class=" col-md-8">

			<%-- <%
  for (products pp:ll){
	 out.println(pp.getdat());
 } 
 %> --%>

			<div class="row mt-4">

				<div class="col md-12">

					<div class="card-columns">

						<%-- 	
				<% for(products pp:ll){
					
				}
				
				
				%> --%>
						<div class="card">
							<img height="100px" width="200px" class="img-fluid"
								alt="not found" src="images/moderator-male.png">

							<div class="card-body">
								<h5 class="card-title">
									<%-- <%=pp.getTitle(); %> --%>
								</h5>
								<p class="card-text">
									<%-- <%=pp.getDesc(); %> --%>
									hh
								</p>

							</div>

							<div class="card-footer">
								<button class="btn btn-warning">add to cart</button>
								<button class="btn btn-success">
									&#8377;
									<%=222%></button>

							</div>

						</div>










					</div>



				</div>

			</div>


		</div>



	</div>






</body>
</html>