








<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
.button {
	background-color: #008CBA; /* Green */
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

.bgimg{ 
  /* The image used */
  background-image: url("/mybuses3/images/bg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

.header {
	overflow: hidden;
	background-color:none;
	padding: 50px 5px;
}

.header a {
	float: right;
	color: black;
	display: inline-block;
	text-align: center;
	padding: 15px;
	text-decoration: none;
	font-size: 17px;
	line-height: 5px;
	border-radius: 4px;
}

.header img.logo {
	font-size: 25px;
	font-weight: bold;
	float: left;
	align: middle;
}

.header a:hover {
	background-color: dodgerblue;
	color: white;
}

.header a.active {
	background-color: dodgerblue;
	color: white;
}

.header-right {
	float: right;
}

@media screen and (max-width: 500px) {
	.header a {
		float: none;
		display: block;
		text-align: left;
	}
	.header-right {
		float: none;
	}
}

.bg-div {
	background: #333;
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
	max-width: 600px;
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


.logo
{
float:left;
position:absolute;
top:0px;
border-radius:50%;
}
</style>

</head>
<body>
<div class="bgimg">
	<div class="header">

		<div class="header-right">
		<img  class="logo" src="/mybuses3/images/logo.jpg" style="width: 70px">
			<form:form method="post">
				<a href="${pageContext.request.contextPath}/sign">Signup</a>

				<a href="${pageContext.request.contextPath}/login2">Login</a>


				<a href="${pageContext.request.contextPath}/contact">Contact Us</a>
				<a href="${pageContext.request.contextPath}/about">About Us</a>
				<a class="active" href="#home">Home</a>



			</form:form>
		</div>
	</div>
	<br>

	<div class="slideshow-container">

		<div class="mySlides fade">

			<img src="/mybuses3/images/3.png" / style="width: 100%">

		</div>

		<div class="mySlides fade">

			<img src="/mybuses3/images/s.png" / style="width: 100%">

		</div>

		<div class="mySlides fade">

			<img src="/mybuses3/images/s1.png" /style="width: 100%">
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

</div>

</body>
</html>

