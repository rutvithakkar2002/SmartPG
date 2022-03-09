<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Photo</title>
</head>
<body>
<h1>List Photos</h1>

<table border="1">

<tr>
	<th>PhotoId </th>
	<th>PGId </th>
	<th>Image URL </th>
	<th>Action</th>
</tr>

<c:forEach items="${photolist}"  var="p">
<tr>
	<td>${p.photoid}</td>
	<td>${p.pgid}</td>	
	<td>${p.imgurl}</td>	
	
	<td><a href="deletephoto/${p.photoid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="editphoto?photoid=${p.photoid}">Edit</a>
	</td>
	
</tr>

</c:forEach>
</table>

</body>
</html>