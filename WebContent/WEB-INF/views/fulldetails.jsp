<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
     <%@ page import="java.util.*,com.kce.model.RegBean"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
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
  border-radius: 4px;
 
}



</style>


</head>
<body>

<div class="topnav">
 <form:form method="post">
  <a href="${pageContext.request.contextPath}/logout">Logout</a>
                    
   <a href="${pageContext.request.contextPath}/backtoUserlanding">Home</a>
                                        
   </form:form>                    
</div>



	
					
	
<form:form action="payment" method="post" modelAttribute="pay">
		<table align="center" cellspacing="30" border="0">
		<%
		List<RegBean> ob  = (List<RegBean>) request.getAttribute("userData"); 
		String ufrom = (String) request.getAttribute("uFrom");
		String uto = (String) request.getAttribute("uTo");
		%>
				<% for(RegBean t : ob) { %>
		    <tr>
				<td>Pickup Point : </td>
				<td><input type="text" name="from" value="<%=ufrom%>"></td>
			</tr>
			 <tr>
				<td>Drop off Point : </td>
				<td><input type="text" name="to" value="<%=uto%>"></td>
			</tr>
			<tr>
				<td>No.of.Seats : </td>
				<td><input type="text" name="noOfSeats" ></td>
			</tr>
		
			<tr>
				<td>Name : </td>
				<td><input type="text" name="name" value="<%=t.getName()%>"></td>
			</tr>
			<tr>
				<td>Age : </td>
				<td><input type="text" name="pass" ></td>
			</tr>
			<tr>
				<td>Adult/Child: </td>
				<td><input type="radio" name="adult">Adult<input type="radio" name="child">Child</td>
			</tr>
			<tr>
				<td>Gender: </td>
				<td><input type="radio" name="male">Male<input type="radio" name="female">Female</td>
			</tr>
			<tr>
				<td>Email Id: </td>
				<td><input type="text" name="email" value="<%=t.getEmail()%>"></td>
			</tr>
			<tr>
				<td>Mobile no: </td>
				<td><input type="text" name="phone" value="<%=t.getPhone()%>"></td>
			</tr>
			
			<%} %>

			<tr>
				<td colspan="2" style="text-align: center;"><input type="submit" class="button" name="submit"
					value="Submit"> </td>
					
		
					<!--<td colspan="2" style="text-align: center;"><a
						href="${pageContext.request.contextPath}/backtoSeats"><input
							type="button" class="button" value="cancel"></a></td>  -->
					
				</tr>
					
		</table>
	</form:form>
</body>
</html>