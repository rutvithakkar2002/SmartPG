<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all subscription plans</title>
</head>
<body>
<h2>List Plans</h2>
<br>
<a href="addsubscription">Add new plan</a>
<br>
<table border="1">
<tr>
	<th>SubscriptionId</th>
	<th>Time Duration</th>
	<th>Amount</th>
	<th>Action</th>
</tr>
<c:forEach items="${plans}"  var="plan">
<tr>
	<td>${plan.subid}</td>
	<td>${plan.timeduration }</td>	
	<td>${plan.amount}</td>
	<td><a href="deletesub/${plan.subid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="editsub?subid=${plan.subid}">Edit</a>
	</td>
	
	<!-- when we submit then the subid passed in url -->
</tr>

</c:forEach>
</table>

</body>
</html>