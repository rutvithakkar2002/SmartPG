<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Feedback</title>
</head>
<body>

<h2>List All Feedback</h2>
<table border="1">
<tr>
	<td>FeedbackId</td>
	<td>UserId</td>
	<td>FirstName</td>
	<td>LastName</td>
	<td>Email</td>
	<td>PgId</td>
	<td>rating</td>
	<td>message</td>
		<td>Action</td>
</tr>


<c:forEach items="${feedback}" var="f">
<tr>
<td>${f.feedbackid}</td>
<td>${f.userId}</td>
<td>${f.firstName}</td>
<td>${f.lastName}</td>
<td>${f.email}</td>
<td>${f.pgid}</td>
<td>${f.rating}</td>
<td>${f.message}</td>
<td><a href="deletefeedback/${f.feedbackid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
			<a href="editfeedback?feedbackid=${f.feedbackid}">Edit</a>
			
			</td>
			</c:forEach>
			</table>

</body>
</html>