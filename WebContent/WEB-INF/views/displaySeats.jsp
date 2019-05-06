<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User ViewSeats</title>
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


	<form:form action="confirm" method="post" modelAttribute="display">
		<table align="center" cellspacing="20">
			<tr>
				<td colspan="3"><input type="checkbox" name="c" checked>Booked</td>
				<td colspan="3"><input type="checkbox" name="cc">Available</td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
				<td></td>
				<td></td>
				<td><input type="checkbox" name="c2"></td>
				<td><input type="checkbox" name="c2"></td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;"><input
					type="submit" class="button" name="confirm" value="Confirm" /></td>
				<td colspan="3" style="text-align: center;"><a
					href="${pageContext.request.contextPath}/usercancel"><input
						type="button" class="button" value="Cancel"></a></td>

			</tr>
		</table>
	</form:form>
</body>
</html>
