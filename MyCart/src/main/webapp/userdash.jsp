<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@page import="com.mycart.entities.Users" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user_dashboard</title>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<%@include file="component/cssandjavascript.jsp"%>
	<!-- <div class="container">
		<div class="row mt-4"> -->

<% 
Users user=(Users)session.getAttribute("current");

%>

		 	<div class="col-md-2 text-center">
				<div class="card">
					<div class="card-body">

						<p><%=user.getUserName()%></p>

					</div>

				</div>
			</div>

			<div class="col-md-2 text-center">
				<div class="card">
					<div class="card-body">

						<p><%=user.getUserEmail()%></p>

					</div>

				</div>
			</div>

			<div class="col-md-2 text-center">
				<div class="card">
					<div class="card-body">

						<p><%=user.getUserAddress()%></p>


					</div>
				</div>
			</div>



			<div class="col-md-2 text-center">
				<div class="card">
					<div class="card-body">

						<p><%=user.getUserPhone() %></p>


					</div>
				</div>
			</div>

<%-- 
			<div class="col-md-2 text-center">
				<div class="card">
					<div class="card-body">

						<p><%=user.getUserPic()%></p>


					</div>
				</div>
			</div> --%>





		</div>

	</div> 
</body>
</html>