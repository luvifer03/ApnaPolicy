<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CMS | Login</title>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="${pageContext.request.contextPath}/loginreg.css"
	rel="stylesheet">
<style>
</style>
</head>
<body>
	<nav class="navbar navbar-light  navbar-expand-md"
		style="background-color: #20b2aa">
		<a href="#" class="navbar-brand">Claim Management System</a>
		<button class="navbar-toggler ml-auto" data-toggle="collapse"
			data-target="#my-nav-items">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="my-nav-items">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="userlogin"
					class="nav-link"><i class="fa fa-home "></i>Home</a></li>
				<!-- <li class="nav-item"><a href="about" class="nav-link">About</a></li>
				<li class="nav-item"><a href="contactus" class="nav-link">Contact
						Us</a></li> -->
				<!-- <li><a href="feedback" class="nav-link">Logout</a></li> -->
			</ul>
		</div>
	</nav>
	<div class="card">
		<center>
			<b>${message}</b>
		</center>
		<centre> <form:form action="/cms/userlogin" method="post"
			modelAttribute="user" style="margin-top:50px;">

			<table align="center" id="customers">
				<th></th>
				<th>Welcome</th>
				<row style="width:40%">
				<tr align="center">
					<td colspan="2"
						style="text-align: center; text-decoration-line: underline;"></td>
				</tr>
				<tr>
					<td><i class="fas fa fa-user back" title="UserId"
						style="border-spacing: 10px;"> UserId</i></td>
					<td><form:input path="userId" class="form-control" type="number"
							required="required" placeholder="Enter your userId"
							title="Enter UserId" oninvalid="return useridv(this)" /><br>
					</td>
					<form:errors path="userId" cssClass="errors"></form:errors>

				</tr>

				<tr>
					<td><i class="fa fa-key" title="Password"> Password</i></td>
					<td colspan="3"><form:password path="password"
							class="form-control" required="required"
							placeholder="Enter your Password" title="Enter Password"
							oninvalid="return passwordv(this)" /> <br> <form:errors
							path="password" cssClass="errors"></form:errors></td>
				</tr>
				<tr align="center">

					<td colspan="2" style="text-align: center;"><input class="btn"
						type="submit" value="Login" class="formsubmitbutton" /></td>
				</tr>
				<tr>
					<td colspan="2" style="text-align: center;"><label
						style="font-size: 15px;">New User<a href="reg"
							style="color: blue;"> Register</a></label></td>

				</tr>
			</table>
		</form:form> </centre>
	</div>
	<div class="footer-basic">
		<footer>
			<div class="social">
				<a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
					class="icon ion-social-twitter"></i></a><a href="#"><i
					class="icon ion-social-facebook"></i></a>
			</div>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="userLogin">Home</a></li>
				<li class="list-inline-item"><a href="contactUs">Contact Us</a></li>
				<li class="list-inline-item"><a href="about">About</a></li>
			</ul>
			<p class="copyright ">Site Designed and Maintained by &#10084; in
				India &#169 2021, All Rights Reserved</p>
		</footer>
	</div>
</body>
</html>