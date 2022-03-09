<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Transaction Detail</title>
</head>
<body>

<form method="post" action="savetransactiondetail">

User id:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${p.city} </option> 

</c:forEach>
</select><br><br>
payment Id:<select name="paymentid">
<option>--------Select Payment----------</option>
<c:forEach items="${payment}" var="p">
<option value="${p.paymentid}">${p.paymentid}</option> 

</c:forEach>
</select><br><br>
Transaction for:<input type="text" name="transactionfor"><br><br>
Amount Paid:<input type="text" name="amountpaid"><br><br>
Mode Of Payment:<input type="text" name="modeofpayment"><br><br>
Date And Time:<input type="text" name="dateandtime"><br><br>
Payment Gateway Used:<input type="text" name="paymentgatewayused"><br><br>
<input type="submit" value="submit">
<br><br>
</form>
</body>
</html>