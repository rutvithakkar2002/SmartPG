<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Transaction Detail</title>
</head>
<body>
<h1>List Transaction Detail</h1>
<table border="1">
<tr>
	<td>Transaction Id</td>
	<td>UserId</td>
	<td>Payment Id</td>
	<td>Transaction For</td>
	<td>Amount Paid</td>
	<td>Mode Of Payment</td>
	<td>Date And Time</td>
	<td>Payment Gateway Used</td>
	<td>Action</td>
</tr>

<c:forEach items="${transactiondetails}" var="t">
<tr>
<td>${t.transactionid}</td>
<td>${t.userId}</td>
<td>${t.paymentid}</td>
<td>${t.transactionfor}</td>
<td>${t.amountpaid}</td>
<td>${t.modeofpayment}</td>
<td>${t.dateandtime}</td>
<td>${t.paymentgatewayused}</td>


<td><a href="deletetransactiondetail/${t.transactionid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
		<a href="edittransactiondetail?transactionid=${t.transactionid}">Edit</a>
	</td>

</tr>
</c:forEach>

</table>
</body>
</html>