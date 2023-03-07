
<%@include file="component/navbar.jsp"%>
<%@include file="component/cssandjavascript.jsp"%>


<title>login page for users</title>
<div class="container">

	<div class="row">

		<div class="col-md-5 offset-md-3">
			<div class="card mt-3">


				<div class="card-header navbar navbar-expand-lg bg-dark nav-bg">

					<h3>logme</h3>
				</div>


				<div class="card-body">
				<%@include file="component/messege.jsp" %>

					<form action="LoginServ" method="post">
						<div class="form-group">
							<label for="exampleInputEmail1">email</label> <input
								name="email" type="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter username">
						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								name="password" type="password" class="form-control"
								id="exampleInputPassword1" placeholder="Password">
						</div>

						<a href="register.jsp" class="text-center d-block mb-2">click
							me if not registerd</a>


						<div class="container text-center">
							<button type="submit" class="btn btn-primary custom-bg border-0">Submit</button>
							<button type="reset" class="btn btn-primary custom-bg border-0">reset</button>
						</div>


					</form>

				</div>




			</div>


		</div>


	</div>

</div>