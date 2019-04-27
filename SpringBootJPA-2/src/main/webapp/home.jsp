
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cap Store </title>
<link type="text/css" href="resources/Css/style.css" rel="stylesheet"  />
<link type="text/css" href="resources/Css/login.css" rel="stylesheet"  />
<!-- <script src="resources/Script/SearchScript.js"></script> -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js?ver=1.4.2"></script>
    <script src="resources/Script/login.js"></script>
    <script src="resources/Script/scripts.js"></script>
     <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 
     <script src="resources/Script/jquery-2.0.3.min.js"></script>   
  <script src="resources/Script/jquery.slides.min.js"></script>
    <link rel="stylesheet" href="resources/Css/example.css">
  <link rel="stylesheet" href="resources/Css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/Css/Slider.css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
.container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  
  width:100%;
  position: relative;
  margin-top:6%; 
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}
td {
color: white;
}


/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
footer {
    background-color:gray;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  } 
</style> 
</head>
<body oncontextmenu="return false;">
<!--Header Section-->
<div class="header-tile"></div>
<div class="header" >
<div class="header-title">
<img src="resources/Images/fly.png" border="0" class="fly" height="3px" width="30px"  />
<img src="resources/Images/fly.png" border="0" class="fly1" height="3px" width="30px"/>
<img src="resources/Images/fly.png" border="0" class="fly2" height="3px" width="30px"/>Cap Store</div>

<form action="tsearch" method="get">
<input  type="text" class="mainSearchBar" list="awards"  
style="color: #000" title="query" type="text" id="query" name="query" onblur="showText()" 
onfocus="hideText();" value="" placeholder="       Search Here" >
<div id="InitializeSearch"></div> 
<input class="mainSubmit" value=" " id="searchbutton" type="button" style="position:relative;margin-left:-76px;">
</form>
<!--Search Bar Ends Here-->      
</div>

 
         <div class="user">
         <a href="Login" class="btn btn-default">Login  </a><a href="Ask" class="btn btn-default">SignUp  </a><a href="ForgotPassword" class="btn btn-default">Forgot Password</a>
         </div> 
<div class="left-border"></div>
<!--Header Section Ends Here-->
<!--Menu Section-->
	<div id='cssmenu'>
<ul>
   <li class='active'><a href='home.jsp'><span>Home</span></a></li>
   <li><a href='#'><span>Mobiles @ Accessories</span></a></li>
   <li><a href='#'><span>Clothing</span></a></li>
    <li><a href='#'><span>Footwears</span></a></li>
     <li><a href='#'><span>Cosmetics</span></a></li>
   <li class='last'><a href='#'><span>Computers & Accessories</span></a></li>
</ul>
</div>
	<!--Menu Section-->
		<div id='cssmenu'>
<ul>
   <li class='active'><a href='Home.jsp'><span>Home</span></a></li>
   <li><a href='#'><span>Mobiles @ Accessories</span></a></li>
   <li><a href='#'><span>Clothing</span></a></li>
    <li><a href='#'><span>Footwears</span></a></li>
     <li><a href='#'><span>Cosmetics</span></a></li>
   <li class='last'><a href='#'><span>Computers & Accessories</span></a></li>
</ul>
</div>


	<!--Menu Section-->
	<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="cap.jpg" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="cap.jpg" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="cap.jpg" style="width:100%">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 



<div class="bg-1">
  <div class="container">
    
    <div>
<form action="/addTransaction"  >
		<table style="float:right; margin-right:120px; table-spacing:10px 10px">
		<tr>
	<!-- 	<td><label for="coupon_id">Coupon ID</label></td> -->
	<td>Coupon ID</td>
		<td><input type="text" name="coupon_id"></td>
		<br/><br/>
		<br/>
		</tr>
		
		<!-- <label for="payment_method">Payment Method</label>
		<input type="text" name="payment_method"><br> -->
		<tr>
<!-- 		<td><label for="payment_method">Payment Method</label></td> -->
		<td>Payment Method</td>
		<td><input type="radio" name="payment_method" value="COD" checked> Cash on delivery<br>
		<td><input type="radio" name="payment_method" value="Debit/Credit card" disabled> Debit/Credit card<br>
		<td><input type="radio" st name="payment_method" value="UPI" disabled> UPI<br></td>
		</tr>
		<!-- <label for="total_amount">Total Price</label>
		<input type="text" name="total_amount"><br> -->
		<tr>
		<td><input class="btn-primary"  type="submit"><br></td>
		</tr>
		</table>
	</form>
</div>
   
      </div>
    </div>
  </div>
</div>
 
<!--Footer Section-->
<div class="right-border"></div>
<div class="footer">@Copyright Cap Store</div>
<div class="footer-tile"></div>
<!--Footer Section-->
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/addTransaction">
		
		<label for="coupon_id">Coupon ID</label>
		<input type="text" name="coupon_id"><br>
		
		<!-- <label for="payment_method">Payment Method</label>
		<input type="text" name="payment_method"><br> -->
		
		<label for="payment_method">Payment Method</label>
		<input type="radio" name="payment_method" value="COD" checked> COD<br>
		<input type="radio" name="payment_method" value="Debit/Credit card" disabled> Debit/Credit card<br>
		<input type="radio" st name="payment_method" value="UPI" disabled> UPI<br>
		
		<!-- <label for="total_amount">Total Price</label>
		<input type="text" name="total_amount"><br> -->
		<input type="submit"><br>
	</form>
</body>
</html> --%>