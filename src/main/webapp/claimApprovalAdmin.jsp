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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link href="${pageContext.request.contextPath}/remaining.css" rel="stylesheet" >
<title>CMS | Claim Approval</title>

</head>

<body class="bodyclaimlist">

	<nav class="navbar navbar-light  navbar-expand-md"
		style="background-color: #20b2aa">
		<a href="#" class="navbar-brand">Claim Management System</a>
		<button class="navbar-toggler ml-auto" data-toggle="collapse"
			data-target="#my-nav-items">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="my-nav-items">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="adminhome"
					class="nav-link"><i class="fa fa-home "></i>Home</a></li>
				<li class="nav-item"><a href="about" class="nav-link">About</a></li>
				<li class="nav-item"><a href="contactus" class="nav-link">Contact Us</a></li>
				<li><a href="logout" class="nav-link">Logout</a></li>
				<li class="nav-item" style="background-color: green;">Welcome <b><%=session.getAttribute("name")%></b>
				</li>
			</ul>
		</div>
	</nav>

	<h3 class="headclaimlist">CLAIMS TO BE APPROVED</h3>
<center><b>${message}</b></center>
	 <div class="row py-5">
    <div class="col-lg-10 mx-auto">
      <div class="card rounded shadow border-0">
        <div class="card-body p-5 bg-white rounded">
          <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered">
              <thead class="theadclaimlist">
		<tr>
			<th>User Id</th>
			<th>Claim Id</th>
			<th>Claim Amount</th>
			<th>Policy Id</th>
			<th>Policy Amount</th>
			<th>Policy Expiry Date</th>
			<th>Last Status</th>
			<th>Approve</th>
			<th>Reject</th>
			<th>Send For Correction</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${claimlist }">
			<tr>
				<td><c:out value="${item.userId }" /></td>
				<td><c:out value="${item.claimId }" /></td>
				<td><c:out value="${item.claimAmount }" /></td>
				<td><c:out value="${item.policyId }" /></td>
				<td><c:out value="${item.policyAmount }" /></td>
				<td><c:out value="${item.policyExpDate }" /></td>
				<td><c:out value="${item.status }" /></td>
				<c:if test="${item.status!='activated'}">
					<td><button>
							<a href="/cms/approveclaim?claimid=${item.claimId}" style="color: black;">Approve</a>
						</button></td>
				</c:if>
				<c:if test="${users.status=='activated'}">
					<td>
						<button title="this link is disabled"
							style="background-color: 'Grey'; border: none;">Approve</button>
					</td>
				</c:if>
				<c:if test="${item.status!='deactivated'}">
					<td>
						<button>
							<a href="/cms/rejectclaim?claimid=${item.claimId}"
								style="color: black;">Reject</a>
						</button>
					</td>
				</c:if>
				<c:if test="${item.status=='deactivated'}">
					<td>
						<button title="this link is disabled"
							style="background-color: 'Grey'; border: none;">Reject</button>
					</td>
				</c:if>
				<td><button>
						<a href="/cms/sendforcorrection?claimid=${item.claimId}"
							style="color: black;">Send for Correction</a>
					</button></td>
				<c:if test="${item.status=='sent for verification'}">
					<td>
						<button title="this link is disabled"
							style="background-color: 'Grey'; border: none;">Sent for
							verification</button>
					</td>
				</c:if>

			</tr>
		</c:forEach>
	</tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<br>
<br>

	<div class="footer-basic">
		<footer>
			<div class="social">
				<a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
					class="icon ion-social-twitter"></i></a><a href="#"><i
					class="icon ion-social-facebook"></i></a>
			</div>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="adminHome">Home</a></li>
				<li class="list-inline-item"><a href="contactUs">Contact Us</a></li>
				<li class="list-inline-item"><a href="about">About</a></li>
			</ul>
			<p class="copyright ">Site Designed and Maintained by &#10084; in
				India &#169 2021, All Rights Reserved</p>
		</footer>
	</div>
</body>
</html>