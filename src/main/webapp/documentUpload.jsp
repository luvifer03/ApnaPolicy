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
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>CMS | Upload Documents</title>
<style>
h3 {
	text-align: center;
	padding-top: 40px;
	text-shadow: 0cm;
	color: brown;
	font-size: 40px;
	padding-bottom: 60px;
}

.footer-basic {
	position: absolute;
	bottom: 0;
	width: 100%;
	text-align: center;
}

.footer-basic .social>a {
	font-size: 24px;
	width: 40px;
	height: 40px;
	line-height: 40px;
	display: inline-block;
	text-align: center;
	border-radius: 50%;
	border: 1px solid #ccc;
	margin: 0 8px;
	color: inherit;
}

.bu {
	padding-top: 30px;
	padding-left: 150px;
	padding-bottom: 108px;
}

.registerForm {
	align-content: center;
	padding-left: 550px;
}
</style>
</head>

<body>

	<nav class="navbar navbar-light  navbar-expand-md"
		style="background-color: #20b2aa">
		<a href="userLogin" class="navbar-brand">Claim Management System</a>
		<button class="navbar-toggler ml-auto" data-toggle="collapse"
			data-target="#my-nav-items">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="my-nav-items">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="memberhome"
					class="nav-link"><i class="fa fa-home "></i>Home</a></li>
				<li class="nav-item"><a href="about" class="nav-link">About</a></li>
				<li class="nav-item"><a href="contactUs" class="nav-link">Contact
						Us</a></li>
				<li><a href="logout" class="nav-link">Logout</a></li>
				<li class="nav-item" style="background-color: green;">Welcome <b><%=session.getAttribute("name")%></b>
			</ul>
		</div>
	</nav>
	<div>
		<h3>Documents Upload</h3>
		<div class="registerForm">



			
				
		

			<form method="post" action="upload" enctype="multipart/form-data">
			<label for="image">Upload your document here</label>
				<input type="file" required="required" id="image" name="image" /><br /> <br /> <input
					type="submit" value="Submit" />
					<input type="hidden" id="userId" name="userId" value='<%=session.getAttribute("id")%>'/>
			</form>
			<%-- <form:form method="POST" action="/upload"
				enctype="multipart/form-data">
				<form:input path="x" type="file" name="file" />
				<br />
				<br />
				<input type="submit" value="Submit" />
			</form:form> --%>
			<%-- 	<form>

				<div class="container">
					<label>Government ID Proof</label> <select name="ID_proof" required>
						<option value="Aadhar">Aadhar</option>
						<option value="PAN">PAN</option>
						<option value="Licence">Licence</option>
					</select> <br>
					<form action="/action_page.php">
						<input name="userfile" type="file" accept="application/pdf" />
					</form>
				</div>
				<br>
				<div class="container">
					<label>Address Proof</label> <select name="Address_proof" required>
						<option value="Aadhar">Aadhar</option>
						<option value="Bill">Electricity Bill</option>
					</select> <br>
					<form action="/action_page.php">
						<input name="userfile" type="file" accept="application/pdf" />
					</form>
				</div>
				<br>
				<div class="container">
					<label>Income Proof</label> <select name="Income_proof" required>
						<option value="Pay_slip">Pay Slip</option>
					</select> <br>
					<form action="/action_page.php">
						<input name="userfile" type="file" accept="application/pdf" />
					</form>
				</div>
				<div class="bu">
					<a href="#">
						<button style="background-color: #e8eb55;">Submit</button>
					</a>
				</div>
			</form> --%>
		</div>
	</div>
	<c:if test="${message!=null }">  
   <script type="text/javascript">alert('<c:out value="${message}"/>');
	            
				</script>  
				</c:if>



	<!--Integrate Bootstrap Java Scripts -->
	<hr>
	<div class="footer-basic">
		<footer>
			<div class="social">
				<a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
					class="icon ion-social-twitter"></i></a><a href="#"><i
					class="icon ion-social-facebook"></i></a>
			</div>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="memberDashboard">Home</a></li>
				<li class="list-inline-item"><a href="contactUs">Contact Us</a></li>
				<li class="list-inline-item"><a href="about">About</a></li>
			</ul>
			<p class="copyright ">Site Designed and Maintained by &#10084; in
				India &#169 2021, All Rights Reserved</p>
		</footer>
	</div>
	<script>
		$("form").on(
				"change",
				".file-upload-field",
				function() {
					$(this).parent(".file-upload-wrapper").attr("data-text",
							$(this).val().replace(/.*(\/|\\)/, ''));
				});
	</script>
</body>

</html>