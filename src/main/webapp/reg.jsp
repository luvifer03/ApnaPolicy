<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="${pageContext.request.contextPath}/loginreg.css"
	rel="stylesheet">
<title>CMS | Register</title>

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
				<li class="nav-item active"><a href="userLogin"
					class="nav-link"><i class="fa fa-home "></i>Home</a></li>
				<li class="nav-item"><a href="about" class="nav-link">About</a></li>
				<li class="nav-item"><a href="contactus" class="nav-link">Contact
						Us</a></li>
				<!-- <li><a href="feedback" class="nav-link">Logout</a></li> -->
			</ul>
		</div>
	</nav>
	<div class="registerForm">
		<b>${message}</b> <br> <br>


		<table id="customers1">
			<th></th>
			<th>Register Here</th>
			<centre> <form:form action="saveuser" method="post"
				modelAttribute="adreg">
				<tr>
					<td><label for="fname">First Name</label></td>
					<td><form:input path="fName" required="required" size="25" type="text"
							id="fname" /></td>
				</tr>
				<tr>
					<td><label for="lName">Last Name</label></td>
					<td><form:input path="lName" required="required" size="25" type="text"
							id="lName" /></td>
				</tr>
				<tr>
					<td><label for="mNumber">Contact Number</label></td>
					<td><form:input path="contactNumber" required="required"
							size="25" id="mNumber" pattern="[6-9]{1}[0-9]{9}"
							title="Phone number with 7-9 and remaing 9 digit with 0-9" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><form:radiobutton path="gender" value="M" />Male <form:radiobutton
							path="gender" value="F" />Female</td>
				</tr>
				<tr>
					<td><label for="emailId">Email</label></td>
					<td><form:input path="emailId" required="required"
							type="email" size="25" id="emailId" /></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><form:input path="password" required="required" size="25" type="password"
							id="password"
							pattern="(?=.*[0-9])(?=.*[!@#$%^&*()_+,.\\\/;':-]).{6,30}"
							title="Must Contain Atleast 6 characters with atleast one special Character" /></td>
				</tr>
				<tr>
					<td>User Type</td>
					<td><form:radiobutton path="userType" value="member" />Member
						<form:radiobutton path="userType" value="agent" />Agent</td>
				</tr>
				<form:input path="status" type="hidden" value="de-activated" />

				<tr>
					<td></td>
					<td><input id="btn1" type=submit value="Register" /></td>

				</tr>
			</form:form> </centre>
		</table>

		<br> <br> <a href="userlogin"><button
				style="margin-left: 120px;" class="btn btn-outline-success">Login
				Here</button></a>
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