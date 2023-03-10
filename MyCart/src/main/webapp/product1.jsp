
<%@page import="com.mycart.entities.Category"%>
<%@page import="com.mycart.dao.CategoryDAO"%>
<%@page import="com.mycart.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.mycart.helper.FactoryProvider"%>
<%@page import="com.mycart.dao.ProductDAO"%>



<%@include file="component/cssandjavascript.jsp"%>
	<%@include file="component/navbar.jsp"%>
<div class="container-fluid">

<% 

CategoryDAO cdao = new CategoryDAO(FactoryProvider.getFactory());
List<Category> ll1 = cdao.getCategories();




String myid=request.getParameter("category");
int id1=Integer.parseInt(myid);
ProductDAO pdao = new ProductDAO(FactoryProvider.getFactory());
List<Product> mm = pdao.getAllProductsById(id1);

%>

	<div class="container-fluid mt-2">

		<div class="row">
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
		
		
		
		
		
		

			<div class=" col-md-8">




				<div class="row mt-4">

					<div class="col md-12">
					<div class="col-md-4">
					

						<div class="card-columns">


							<%
							for (Product pp : mm) {
							%>




							<div class="card">

								<div class="card-body">
									<h5 class="card-title">
										<%=pp.getpName()%>
									</h5>

									<p class="card-text">
										<%=pp.getpDesc()%>

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
			</div>
			</div>
			
			</div>
