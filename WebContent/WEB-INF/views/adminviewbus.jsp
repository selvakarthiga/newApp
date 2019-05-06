<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin View</title>


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
                    
   <a href="${pageContext.request.contextPath}/adminlanding">Home</a>
                                        
   </form:form>                    
</div>


	<form:form action="viewbusdetail" method="post" modelAttribute="viewdetail">
		<center>
			<table cellspacing="30">
	
				<tr>
					<td>From :</td>
					<td><input type="text" name="from" required/></td>
				</tr>
				<tr>
					<td>To :</td>
					<td><input type="text" name="to" required/></td>
				</tr>
				 
				<tr>
					<td colspan="4" style="text-align: center;"><input
						type="submit" class="button" value="submit" /></td>
					
				</tr>
			</table>
	   <%
				String msg = (String) request.getAttribute("msg");
			%>
			<%
				if (msg != null) {
			%>
			<h2><%=msg%></h2>
			<%
				}
			%>
		
	
			
		</center>
	</form:form>
</body>
</html>