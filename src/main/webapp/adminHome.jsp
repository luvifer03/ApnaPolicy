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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="${pageContext.request.contextPath}/admin.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>CMS | AdminDashboard</title>

</head>
<body class="admindash">
     <nav class="navbar navbar-light  navbar-expand-md" style="background-color: #20b2aa">
        <a href="#" class="navbar-brand">Claim Management System</a>
        <button class="navbar-toggler ml-auto" data-toggle="collapse" data-target="#my-nav-items">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="my-nav-items">
            <ul class="navbar-nav ml-auto">
               <!--  <li class="nav-item active">
                    <a href="adminHome" class="nav-link"><i class="fa fa-home "></i>Home</a>
                </li> -->
                <li class="nav-item" style="background-color: green;">Welcome <b><%=session.getAttribute("name")%></b>
                <li class="nav-item">
                    <a href="about" class="nav-link">About</a>
                </li>
                <li class="nav-item">
                    <a href="contactus" class="nav-link">Contact Us</a>
                </li>
                <li>
                    <a href="logout" class="nav-link">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="intro1">
    <h3 class="heading3">ADMIN DASHBOARD</h3><hr>
    <div class="container mt-2">
<!--   <div class="card card-block mb-2">
    <h4 class="card-title">Card 1</h4>
    <p class="card-text">Welcom to bootstrap card styles</p>
    <a href="#" class="btn btn-primary">Submit</a>
  </div>   -->
  <div class="row">
    <div class="col-md-3 col-sm-6">
      <div class="card card-block">
     <!-- <h4 class="card-title text-right"><i class="material-icons">settings</i></h4>-->
    <!--<img src="https://static.pexels.com/photos/7096/people-woman-coffee-meeting.jpg" alt="Photo of sunset">-->
        <h5 class="card-title mt-3 mb-3"><a class="link" href="memberapprovaladmin">MEMBER APPROVAL</a></h5> 
  </div>
    </div>
    <div class="col-md-3 col-sm-6">
      <div class="card card-block">
     <!-- <h4 class="card-title text-right"><i class="material-icons">settings</i></h4>-->
    <!--<img src="https://static.pexels.com/photos/7096/people-woman-coffee-meeting.jpg" alt="Photo of sunset">-->
        <h5 class="card-title mt-3 mb-3"><a class="link" href="claimapprovaladmin">CLAIM APPROVAL</a></h5> 
  </div>
    </div>
   <div class="col-md-3 col-sm-6">
      <div class="card card-block">
     <!-- <h4 class="card-title text-right"><i class="material-icons">settings</i></h4>-->
    <!--<img src="https://static.pexels.com/photos/7096/people-woman-coffee-meeting.jpg" alt="Photo of sunset">-->
        <h5 class="card-title mt-3 mb-3"><a class="link" href="gsdadmin">GSD</a></h5> 
       </div>
  </div>
    </div>    
  </div>
  
</div>
    <!--Integrate Bootstrap Java Scripts -->
    
    <div class="footer-basic">
        <footer>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
                        class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="adminHome">Home</a></li>
                <li class="list-inline-item"><a href="contactUs">Contact Us</a></li>
                <li class="list-inline-item"><a href="about">About</a></li>
            </ul>
            <p class="copyright ">Site Designed and Maintained by &#10084; in India &#169 2021,
                All Rights Reserved </p>
        </footer>
    </div>
    </body>
</html>