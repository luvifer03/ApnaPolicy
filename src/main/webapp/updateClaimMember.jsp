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
<title>CMS | Resubmit Claim</title>
<style>
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
#btn{
  transition-duration: 0.4s;
  border:2px solid #008080;
}

#btn:hover {
  background-color: #008080; /* Green */
  color: white;
}

body{
background-color:#eef4f7;
}
h1 {
	text-align: center;
	padding-top: 40px;
	text-shadow: 0cm;
	color:#20b2aa;
	font-size: 40px;
	padding-bottom: 20px;
}

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

	<h1 style="text-align: center;">Resubmit Claim</h1>
	
	<center><b>${message}</b></center>
	

	<div class="claimForm">

		<form:form action="/cms/updateclaimrequest" method="post"
			modelAttribute="updateclaim" style="margin-top:50px;margin-left:30px;">

			<table align="center" class="tables back">
				<tr align="center">
					<td colspan="2"
						style="text-align: center; text-decoration-line: underline;"></td>
				</tr>
				<tr>
					<td></td>
					<td><form:input path="userId" type="hidden"
							value='<%=session.getAttribute("id")%>' 
							class="form-control" /></td>
				</tr>

				<tr>
					<td>Policy Id</td>
					<td><form:input path="policyId" value="${pid}" class="form-control" />
				</tr>

				<tr>
					<td>Claim Type</td>
					<td><form:select path="claimType" class="form-control" > <form:option
							value="insurance" label="insurance" /> <form:option
							value="accident" label="accident" />
							</form:select></td>
				</tr>
				<tr>
					<td>Amount to Claimed</td>
					<td><form:input path="amount" class="form-control" type="number"/>
				</tr>
				<form:hidden path="claimId" value='${claimId}' class="form-control" />
				<form:hidden path="status" value="Re-Submitted" class="form-control"/>
				<td colspan="2" align="center"><input type="submit"
					value="ReSubmit Claim" id="btn" class="formsubmitbutton" />
				</tr>
			</table>
		</form:form>
		<c:if test="${message!=null }">  
   <script type="text/javascript">alert('<c:out value="${message}"/>');
	            
				</script>  
				</c:if>

	</div>
			<div class = "bottom-right">   
        <a href="adminHome"><button style="background-color: #20b2aa;border-color: white; 
        color: white; margin-left: 900px; margin-top: 50px;" >Back</button></a></div>
	

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
				<li class="list-inline-item"><a href="#">Home</a></li>
				<li class="list-inline-item"><a href="#">Contact Us</a></li>
				<li class="list-inline-item"><a href="#">About</a></li>
			</ul>
			<p class="copyright ">Site Designed and Maintained by &#10084; in
				India &#169 2021, All Rights Reserved</p>
		</footer>
	</div>
</body>
</html>