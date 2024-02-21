<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
UserDetails user2 = (UserDetails) session.getAttribute("userD");

if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please login...");
}
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-0">
		<%@include file="all_component/navbar.jsp"%>
		<div class="card py-5">
			<div class="card-body text-center">
				<img alt="" src="img/paper.png" class="img-fluid mx-auto"
					style="max-width: 300px;">
				<h1>START TAKING YOUR NOTES</h1>
				<a href="addNotes.jsp" class="btn btn-outline-primary">Start
					Here</a>
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