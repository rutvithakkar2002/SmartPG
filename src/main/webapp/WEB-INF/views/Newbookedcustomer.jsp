<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New booked customer</title>
</head>
<body>
<h1>New booked customer</h1>
<form method="POST" action="savebookeduser">	`
User:<select name="userId">
			<option>----Select User----</option>
				<c:forEach items="${users}" var="u">
					<option value="${u.userId}">${u.firstName}  ${u.lastName} </option>
				
				</c:forEach>
				</select><br><br>
				
				
Pg:<select name="pgid">
			<option>----Select pg----</option>
				<c:forEach items="${pg}" var="p">
					<option value="${p.pgid}">${p.pgaddress} </option>
				
				</c:forEach>
				</select><br><br>
				
Request Accept:<input type="text" name="requestaccept"><br><br>
Date And Time Of Booking:<input type="text" name="datetimeofbooking"><br><br>
<input type="submit" value="Add Detail">  
</form>

</body>
</html>