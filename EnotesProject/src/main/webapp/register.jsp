<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body style="background-color: #f7faf8">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid div-color">
		<div class="row p-2">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x " area-hidden="true"></i>
						<h4>Registration</h4>
					</div>



					<%
					String regMsg = (String) session.getAttribute("reg-sucess");

					if (regMsg != null) {
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%>Login<a
							href="login.jsp">Click Here</a>
					</div>
					<%
					session.removeAttribute("reg-sucess");
					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg%></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>

					<div class="card-body">
						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Name</label> <input
									name="fname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>
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
									class="btn btn-primary badge-pill btn-block">Register</button>
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