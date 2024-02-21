<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x " area-hidden="true"></i>
						<h4>Login</h4>
					</div>

					<div class="card-body">


						<%
						String invalidMsg = (String) session.getAttribute("login-failed");

						if (invalidMsg != null) {
						%>
						<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
						<%
						session.removeAttribute("login-failed");
						}
						%>

						<%
						String withoutLogin = (String) session.getAttribute("Login-error");
						if (withoutLogin != null) {
						%>

						<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>

						<%
						session.removeAttribute("Login-error");
						}
						%>

						<%
						String lgMsg = (String) session.getAttribute("logoutMsg");
						if (lgMsg != null) {
						%>
						<div class="alert alert-success" role="alert"><%=lgMsg%></div>
						<%
						session.removeAttribute("logoutMsg");
						}
						%>


						<form action="loginServlet" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="uemail" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="upassword" type="password" class="form-control"
									id="exampleInputPassword1">
							</div>
							<div class="text-center mt-2">
								<button type="submit"
									class="btn btn-primary badge-pill btn-block">Login</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid bg-custom footer-custom p-2">
		<p class="text-center text-white">Note: Any Errors occur then
			contact Uditanshu. Designed and Developed by Uditanshu Burra</p>

		<p class="text-center text-white">All Rights Reserved
			@UditanshuBurra 2024-25</p>

	</div>
</body>
</html>