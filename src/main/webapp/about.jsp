
<%
response.setHeader("Cache-Control", "no-cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
if (session.getAttribute("id") == null) {
	response.sendRedirect(request.getContextPath() + "/userlogin");

}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
<link href="${pageContext.request.contextPath}/style.css"
	rel="stylesheet">
<title>CMS | About</title>


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
				<li class="nav-item" style="background-color: green;">Welcome <b><%=session.getAttribute("name")%></b>
				<li class="nav-item"><a href="about" class="nav-link">About</a>
				</li>
				<li class="nav-item"><a href="contactus" class="nav-link">Contact
						Us</a></li>
				<li><a href="logout" class="nav-link">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="banner">
		<div class="content1">
			<div class="intro">
				<h3>ABOUT</h3>
				<br>
				<hr>
			</div>
			<p>
				Support for all processes and claim types Claims processing is one
				of the most crucial service activities insurance companies perform.<br>However,
				the complexity of managing a claims environment with multiple
				systems and manual hand-offs can create errors and delays that can
				cause irreparable harm to customer relationships.<br>With its
				common user interface for all claim types, policy administration
				system integration, image and work management, and business rules
				and calculation engine, Claims Management provides<br>Innovative
				solution to meet a common industry problem<br> Centralize
				processing for speed and accuracy<br> Improved claim services
				at minimum cost<br> Support for all processes and claim types
			</p>

		</div>

		<!--Integrate Bootstrap Java Scripts -->

		<div class="footer-basic">
			<footer>
				<div class="social">
					<a href="#"><i class="icon ion-social-instagram"></i></a><a
						href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
						class="icon ion-social-facebook"></i></a>
				</div>
				<ul class="list-inline">
					<li class="list-inline-item"><a href="userLogin">Home</a></li>
					<li class="list-inline-item"><a href="contactUs">Contact
							Us</a></li>
					<li class="list-inline-item"><a href="about">About</a></li>
				</ul>
				<p class="copyright ">Site Designed and Maintained by &#10084;
					in India &#169 2021, All Rights Reserved</p>
			</footer>
		</div>
</body>
</html>
