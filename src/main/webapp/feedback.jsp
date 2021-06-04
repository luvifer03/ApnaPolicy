<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>CMS | Template</title>
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
        h5 {
            text-align: center;
        }
       h3 {
  font-weight: bold;
  margin-bottom:40px;
  padding-top:40px;
  color: #20b2aa;
        text-align: center;
}
        .center {
            margin-left: auto;
            margin-right: auto;
        }
        *{
    margin: 0;
    padding: 0;
}
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.bu {
            padding-top: 30px;
            padding-left: 550px;
            padding-bottom: 108px;
        }
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}
      .btn{
  transition-duration: 0.4s;
  border:2px solid #008080;
  margin-left:200px;
  margin-top:0px;
 
}
       .btn:hover {
  background-color: #008080; /* Green */
  color: white;
} 
    </style>
</head>

<body>

    <nav class="navbar navbar-light  navbar-expand-md" style="background-color: #20b2aa">
        <a href="#" class="navbar-brand">Claim Management System</a>
        <button class="navbar-toggler ml-auto" data-toggle="collapse" data-target="#my-nav-items">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="my-nav-items">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a href="#" class="nav-link"><i class="fa fa-home "></i>Home</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">About</a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">Contact Us</a>
                </li>
                
            </ul>
        </div>
    </nav>
   <!-- <button class="btn btn-outline-secondary" style="background-color: #e8eb55;">Click me</button>-->

   <body>
       <h5>You have Successfully Logged Off !!</h5>
       <h3>FEEDBACK</h3>
       <table class="center">
        <tr><td>Rating:</td> 
                  <td><div class="rate">
                    <input type="radio" id="star5" name="rate" value="5" />
                    <label for="star5" title="text">5 stars</label>
                    <input type="radio" id="star4" name="rate" value="4" />
                    <label for="star4" title="text">4 stars</label>
                    <input type="radio" id="star3" name="rate" value="3" />
                    <label for="star3" title="text">3 stars</label>
                    <input type="radio" id="star2" name="rate" value="2" />
                    <label for="star2" title="text">2 stars</label>
                    <input type="radio" id="star1" name="rate" value="1" />
                    <label for="star1" title="text">1 star</label>
                  </div></td></tr>
        <tr><td>Suggestions:</td> <td><input type="text" id="txt"></td></tr> 
        <tr><td>Which Service you liked the most:</td> <td><input type="text" id="txt"></td></tr> 
        <tr><td>Your Experience:</td> <td><input type="text" id="txt"></td></tr>
         
       </table>
        <div class="bu">
                    <a href="#">
               <td colspan="2" style="text-align: center;"><input class="btn"
						type="submit" value="Submit" class="formsubmitbutton" /></td>
                </a>
                </div>
   </body>


    <!--Integrate Bootstrap Java Scripts -->
    <div class="footer-basic">
        <footer>
            <div class="social"><a href="#"><i class="icon ion-social-instagram"></i></a><a href="#"><i
                        class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a>
            </div>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="#">Home</a></li>
                <li class="list-inline-item"><a href="#">Contact Us</a></li>
                <li class="list-inline-item"><a href="#">About</a></li>
            </ul>
            <p class="copyright ">Site Designed and Maintained by &#10084; in India &#169 2021,
                All Rights Reserved </p>
        </footer>
    </div>
</body>
</html>