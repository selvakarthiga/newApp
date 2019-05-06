<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
<style>

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #666;
}

.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
 
}

.topnav a:hover {
  background-color: #4CAF50;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.button {
  background-color: dodgerblue; /* Green */
  border: none;
  color: white;
   padding: 10px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
   border-radius:4px;
 
}

.bgimg { 
  /* The image used */
  background-image: url("/mybuses3/images/bg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


</style>
</head>
<body>
<div class="topnav">
 <form:form method="post">
  <a href="${pageContext.request.contextPath}/logincancel">Home</a>
                                               
   </form:form>                    
</div>
<div class="bgimg"  style="color:blue;padding:20px; float: center;">

  <h2>About Us</h2>
  <p>
  RedBus is India's largest online bus ticketing platform that has transformed bus travel in the country by bringing ease and convenience to millions of Indians who travel using buses.</p>
  <p> Founded in 2006, redBus is part of India's leading online travel company MakeMyTrip Limited (NASDAQ: MMYT). </p>
  <p>By providing widest choice, superior customer service, lowest prices and unmatched benefits, redBus has served over 8 million customers.</p>
   <p>redBus has a global presence with operations across Indonesia, Singapore, Malaysia, Colombia and Peru apart from India.</p>
  
 </div> 

</body>
</html>