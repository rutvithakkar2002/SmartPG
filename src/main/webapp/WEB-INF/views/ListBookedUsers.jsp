<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ListBookedUsers</title>
</head>
<body>
<h1>List Booked Users</h1>
<table border="1">
<tr>
	<td>Booked Id</td>
	<td>User Id</td>
	<td>Pg Id</td>
	<td>Request Accept</td>
	<td>Date & Time Of Booking</td>
		<td>Action</td>
</tr>


<c:forEach items="${book}" var="b">
<tr>
<td>${b.bookedid}</td>
<td>${b.userId}</td>
<td>${b.pgid}</td>
<td>${b.requestaccept}</td>
<td>${b.datetimeofbooking}</td>
<td><a href="deletebookeduser/${b.bookedid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		 <a href="editbookeduser?bookedid=${b.bookedid}">Edit</a>
			
			</td>
			</c:forEach>
			</table>




</body>
</html>