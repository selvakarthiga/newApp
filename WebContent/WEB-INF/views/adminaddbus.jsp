<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

  <%@ page import="java.util.*,com.kce.model.DetailsBean"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Add</title>
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


	<form:form >
		<center>
			<table border="0" width=80% height=100 align="center" cellspacing="30">
	        
				<tr>
					<th>Bus Id</th>
					<th>Bus Name</th>
					<th>Bus Type</th>
					<th>From</th>
					<th>To</th>
					<th>Day</th>
					<th>Seats</th>
					<th>Cost</th>
				</tr >
			
				<%List<DetailsBean> ob  = (List<DetailsBean>) request.getAttribute("DetailsBean"); %>
				<% if(ob!=null) { %>
				<%for(DetailsBean t : ob) { %>
					<tr style="color: blue;" align="center">
						<td><%=t.getId() %></td>
						<td><%=t.getName() %></td>
						<td><%=t.getType() %></td>
						<td><%=t.getFrom() %></td>
						<td><%=t.getTo() %></td>
						<td><%=t.getDatee() %></td>
						<td><%=t.getSeat() %></td>
						<td><%=t.getFair() %></td>
						
					</tr>
				<%} %>
				<%} %>
			
				<tr>
				<td colspan="8" style="text-align: center;">
										<a href="${pageContext.request.contextPath}/busadd1">
										<input type="button" class="button" value="Add More Buses"></a></td>
				</tr>
			</table>
       
		</center>
	</form:form>

</body>
</html>