<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>List Amenity</h1>
	<br>
	
	<a href="newamenity">Add new amenity</a>
	<table border="1">
	<tr>
		<th>Amenity Id </th>
		<th>Amenity Name</th>
		<th>action</th>
	
</tr>

<c:forEach items="${amenities}" var="amenity">
<tr>
	<td>${amenity.amenityid}</td>	
	<td>${amenity.amenityname}</td>
	<td><a href="deleteamenity/${amenity.amenityid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="editamenity?amenityid=${amenity.amenityid}">Edit</a>
	</td>		
</tr>
</c:forEach>
</table>
</body>
</html>