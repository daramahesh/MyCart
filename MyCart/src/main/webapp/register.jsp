<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration page</title>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<%@include file="component/cssandjavascript.jsp"%>


	<div class="row mt-5">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">

    <%@include file="component/message.jsp" %>

			<h3 class="text-center my-3">Enter your deatail</h3>

					<form action="RegisterServlet" method="post">

						<!-- <div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">your
								name </label> <input name="name" type="text" class="form-control"
								id="exampleFormControlInput2" placeholder="enter your name">
						</div> -->

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">username
							</label> <input name="username" type="text" class="form-control"
								id="exampleFormControlInput3"
								placeholder="username of your choice">
						</div>
						
						<div class="mb-3">
					         <label for="exampleFormControlInput1" class="form-label">Email
						     address</label> <input name="useremail" type="email" class="form-control"
						     id="exampleFormControlInput1" placeholder="name@example.com">
				        </div>

						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">your
								password </label> <input name="userpassword" type="text"
								class="form-control" id="exampleFormControlInput4"
								placeholder="password of your choice">
						</div>
				</div>
				<div class="mb-3">
					<label for="exampleFormControlInput1" class="form-label">your
						mobile number </label> <input name="userphone" type="text"
						class="form-control" id="exampleFormControlInput6"
						placeholder="mobilenumber">
				</div>


				

				<div class="mb-3">
					<label for="exampleFormControlTextarea1" class="form-label">current
						address</label>
					<textarea name="useraddress" type="text" class="form-control"
						id="exampleFormControlTextarea1" rows="3"></textarea>
				</div>

				<div class="text-center my-3">
					<button class="btn btn-warning">submit</button>
				</div>

				</form>


			</div>

		</div>

	</div>

	</div>

</body>
</html>