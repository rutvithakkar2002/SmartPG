<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Transaction</title>
</head>
<body>
<h1>List Transaction</h1>
<table border="1">
<tr>
	<td>Payment Id</td>
	<td>UserId</td>
	<td>rate</td>
	<td>Pg Id</td>
	<td>Action</td>
</tr>


<c:forEach items="${transaction}" var="t">
<tr>
<td>${t.paymentid}</td>
<td>${t.userId}</td>
<td>${t.rate}</td>
<td>${t.pgid}</td>

<td><a href="deletetransaction/${t.paymentid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="edittransaction?paymentid=${t.paymentid}">Edit</a>
	</td>

</tr>
</c:forEach>
</table>

</body>
</html>