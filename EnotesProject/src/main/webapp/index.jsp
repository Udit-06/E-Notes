<%@page import="com.Db.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/img.webp");
	width: 100%;
	height: 83vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>



	<div class="container-fluid back-img">
		<div class="text-white text-center heading-color"
			style="padding: 30px;">
			<h1>
				<i class="fa fa-book" area-hidden="true"></i> E Notes-Save Your
				Notes
			</h1>
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