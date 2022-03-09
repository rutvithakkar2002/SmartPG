<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Transaction Detail</title>
</head>
<body>
<form action="updatetransactiondetail" method="post">
Transaction For: <input type="text" name="transactionfor"><br><br>
Amount Paid: <input type="text" name="amountpaid"><br><Br>
Mode Of Payment: <input type="text" name="modeofpayment"><br><br>
Payment Gateway Used: <input type="text" name="paymentgatewayused"><br><br>
<input type="submit" value="Update Transaction Detail"/>
</form>
</body>
</html>