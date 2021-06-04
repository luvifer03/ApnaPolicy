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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/member.css" rel="stylesheet" >
    <title>CMS | Member Home</title>

</head>

<body class="memberhomebody">

    <nav class="navbar navbar-light  navbar-expand-md" style="background-color: #20b2aa">
        <a href="#" class="navbar-brand">Claim Management System</a>
        <button class="navbar-toggler ml-auto" data-toggle="collapse" data-target="#my-nav-items">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="my-nav-items">
            <ul class="navbar-nav ml-auto">
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
   
    
    <div class="team-boxed">
    <div class=container>
    <div class="intro">
    <h3 class="text-center">MEMBER DASHBOARD</h3><hr>
    <!--<p class="text-center">We are a leading UX agency that is known for solving the most complex user experience challenges. For over 20 years, we have been helping global customer-focused companies and organizations improve UX of websites to increase conversions, sales, and engagement by over 30%.</p>-->
    </div>
    <div class="row people">
    <div class="boxes col-md-6 col-lg-2 item">
        
                    <div class="box"><!--<img class="rounded-circle" src="C:\Users\User\Desktop\user.png">-->
                        <h3 class="name"><a class="link" href="claimrequestmember">RAISE CLAIM REQUEST</a></h3>
                        <!--<p class="title">7907856434</p>-->
                       <!--  <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p> -->
                       <!--  <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div> -->
                    </div>
                </div>
                <div class="boxes col-md-6 col-lg-2 item">
                    
                    <div class="box"><!--<img class="rounded-circle" src="C:\Users\User\Desktop\user.png">-->
                        <h3 class="name"><a class="link" href="trackclaimmember">TRACK CLAIM PROGRESS</a></h3>
                        <!--<p class="title">9596783546</p>-->
                        <!-- <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p> -->
                       <!--  <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div> -->
                    
                    </div>
                </div>
                
        
                 <div class="boxes col-md-6 col-lg-2 item">
                    
                    <div class="box"><!--<img class="rounded-circle" src="C:\Users\User\Desktop\user.png">-->
                        <h3 class="name"><a class="link" href="documentupload">DOCUMENT UPLOAD</a></h3>
                        <!--<p class="title">9835676834</p>-->
                        <!-- <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p> -->
                        <!-- <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div> -->
                    </div>
                </div>
       
                 <div class="boxes col-md-6 col-lg-2 item">
                     
                    <div class="box"><!--<img class="rounded-circle" src="C:\Users\User\Desktop\user.png">-->
                        <h3 class="name"><a class="link" href="gsdmember">GSD</a></h3>
                        <!--<p class="title">7907451342</p>-->
                        <!-- <p class="description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est, et interdum justo suscipit id. Etiam dictum feugiat tellus, a semper massa. </p> -->
                        <!-- <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div> -->
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
    
    
   <!--  <div class="container-section">
    <div class="contact-info">
        <div><i class="fas fa-phone"></i>    +1800 000 000</div>
        <div><i class="fas fa-envelope"></i>    cms.cms@gmail.com</div></div> -->
    
    

    <!--Integrate Bootstrap Java Scripts -->
    
    <div class="footer-basic">
        <footer>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
                        class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="memberHome">Home</a></li>
                <li class="list-inline-item"><a href="contactUs">Contact Us</a></li>
                <li class="list-inline-item"><a href="about">About</a></li>
            </ul>
            <p class="copyright ">Site Designed and Maintained by &#10084; in India &#169 2021,
                All Rights Reserved </p>
        </footer>
    </div>
</body>
</html>