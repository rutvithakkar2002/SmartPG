<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Transaction</title>
</head>
<body>
	
<form action="updatetransaction" method="post" >
		<input type="hidden" value="${transaction.paymentid}" name="paymentid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		
			Pgid:<select name="pgid">
	<option>--------Select PG----------</option>
	<c:forEach items="${pg}" var="p">
	<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 

	</c:forEach>
	</select><br><br>		
			UserId:<select name="userId">
	<option>--------Select User----------</option>
	<c:forEach items="${user}" var="u">
	<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email} </option> 

	</c:forEach>
	</select><br><br>
		
		rate : <input type="text" name="rate" value="${transaction.rate}"/><br><Br>
		
		<input type="submit" value="Update Transaction"/>
	</form>

</body>
</html>