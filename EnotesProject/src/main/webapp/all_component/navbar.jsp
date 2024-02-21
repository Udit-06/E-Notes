<%@page import="com.User.UserDetails"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<a class="navbar-brand" href="index.jsp"><i class="fas fa-book"
		aria-hidden="true"></i> E Notes</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp"><i
					class="fas fa-home"></i> Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="addNotes.jsp"><i class="fas fa-plus-square"></i> Add
					Notes</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="showNotes.jsp"><i class="fas fa-eye"></i>Show Notes</a></li>
		</ul>

		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
		%>
		<form class="form-inline my-2 my-sm-0 ">
			<a href="" class="btn btn-light mr-2" data-toggle="modal"
				data-target="#exampleModal"><i class="fas fa-user"></i><%=user.getName()%></a>
			<a href="LogoutServlet" class="btn btn-light"><i
				class="far fa-user"></i> Logout</a>
		</form>

		<!-- Button trigger modal -->


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">

						<div class="container text-center">

							<i class="fa fa-user fa-3x"></i>
							<h5></h5>

							<table class="table">
								<tbody>
									<tr>
										<td>User Id</td>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<td>Full Name</td>
										<td><%=user.getName()%></td>
									</tr>
									<tr>
										<td>Email Id</td>
										<td><%=user.getEmail()%></td>
									</tr>
								</tbody>
							</table>
							<div>
								<button type="button" class="btn btn-primary"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
		<!-- Logout Popup -->

		<%
		} else {
		%>
		<form class="form-inline my-2 my-sm-0 ">
			<a href="login.jsp" class="btn btn-light mr-2"><i
				class="fas fa-user"></i> Login</a> <a href="register.jsp"
				class="btn btn-light"><i class="far fa-user"></i> Register</a>
		</form>
		<%
		}
		%>






	</div>

	<!-- Logout Popup -->

	<!-- Modal -->




</nav>