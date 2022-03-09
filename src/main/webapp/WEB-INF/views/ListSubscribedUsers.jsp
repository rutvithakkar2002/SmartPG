<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Subscribed Users</title>
</head>
<body>

<h2>List All Subscribed Users</h2>
<table border="1">
<tr>
	<td>SubscribedUsers Id</td>
	<td>User Id</td>
	<td>subscription Id</td>
	<td>Start date of Subscription</td>
	<td>End Date of Subscription</td>
		<td>Action</td>
</tr>


<c:forEach items="${sub}" var="s">
<tr>
<td>${s.subscribeid}</td>
<td>${s.userId}</td>
<td>${s.subid}</td>
<td>${s.startdateofsub}</td>
<td>${s.enddateofsub}</td>
<td><a href="deletesubscribeduser/${s.subscribeid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
			<a href="editsubscribeduser?subscribeid=${s.subscribeid}">Edit</a>
			
			</td>
			</c:forEach>
			</table>




</body>
</html>