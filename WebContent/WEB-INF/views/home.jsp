<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.button {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 10px 24px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	margin: 4px 2px;
	cursor: pointer;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	}
	
	.bgimg { 
  /* The image used */
  background-image: url("/mybuses/images/bg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.header1 {
	overflow: hidden;
	background-color: none;
	padding: 50px 5px;
}

.header1 a {
	float: middle;
	color: black;
	display: inline-block;
	text-align: center;
	padding: 15px;
	text-decoration: none;
	font-size: 17px;
	line-height: 5px;
	border-radius: 4px;
}

.header1 img.logo {
	font-size: 25px;
	font-weight: bold;
	float: left;
	align: middle;
}

.header1 a:hover {
	background-color: dodgerblue;
	color: white;
}

.header1 a.active {
	background-color: dodgerblue;
	color: white;
}

.header1-right {
	float: middle;
}

@media screen and (max-width: 500px) {
	.header1 a {
		float: none;
		display: block;
		text-align: left;
	}
	.header1-right {
		float: none;
	}
}

.bg-div {
	background: none;
}

.button3 {
	padding: 14px 40px;
}

<
style>* {
	box-sizing: border-box;
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none;
}

img {
	vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
	max-width:700px;
	position: relative;
	margin: auto;
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
	height: 10px;
	width: 10px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 20%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 11px
	}
}



* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:#666;
  padding: 20px;
  text-align: right;
  font-size: 20px;
  color:white;
}

.header img.logo{
	font-size: 25px;
	font-weight: bold;
	float: left;
}


/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: none;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
  float:middle;
 
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: none;
  height: 100%; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

.logo
{
float:left;
position:absolute;
top:0px;
border-radius:50%;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>
<div class="bgimg">
<header>
<img  class="logo" src="/mybuses/images/logo.jpg" style="width: 70px">
Driven by Passion, Safe by design
</header>

<section>
  <nav>
    <ul>
    <div class="header1">
     <form:form method="post">
      <li><a class="active" href="#home">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
     <li><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li>
      <li><a href="${pageContext.request.contextPath}/login2">Login</a></li>
       <li><a href="${pageContext.request.contextPath}/sign">Signup</a></li>
      
      
           
      </form:form>
         </div>
    </ul>
  </nav>
  
  <article>
    <div class="slideshow-container">

		<div class="mySlides fade">

			<img src="/mybuses/images/3.png" / style="width: 100%">

		</div>

		<div class="mySlides fade">

			<img src="/mybuses/images/s.png" / style="width: 100%">

		</div>

		<div class="mySlides fade">

			<img src="/mybuses/images/s1.png" /style="width: 100%">
		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 3000); // Change image every 3 seconds
		}
	</script>



  </article>
</section>

</div>
</body>
</html>
