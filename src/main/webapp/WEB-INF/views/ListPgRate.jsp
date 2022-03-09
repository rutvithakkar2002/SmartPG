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
<h1>List PG Rate</h1>

<table border="1">

<tr>
	<th>PG Rate Id </th>
	<th>PGId </th>
	<th>Onesharing</th>
	<th>Twosharing</th>
	<th>Threesharing</th>
	<th>Foursharing</th>
	<th>Action</th>
</tr>

<c:forEach items="${pgrate}"  var="pr">
<tr>
	<td>${pr.pgrateid}</td>
	<td>${pr.pgid}</td>	
	<td>${pr.onesharing}</td>
	<td>${pr.twosharing}</td>	
	<td>${pr.threesharing}</td>
	<td>${pr.foursharing}</td>
	<td><a href="deletepgrate/${pr.pgrateid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="editpgrate?pgrateid=${pr.pgrateid}">Edit</a>
	</td>

</tr>
</c:forEach>
</table>


</body>
</html>