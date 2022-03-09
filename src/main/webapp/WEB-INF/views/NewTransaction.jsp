<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transactions</title>
</head>
<body>

<h1>Transaction</h1>
<form method="POST" action="savetransaction">
UserName:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email} </option> 

</c:forEach>
</select>
<br><br>

Rate:<input type="text" name="rate"><br><br>

Pgid:<select name="pgid">
<option>--------Select PG----------</option>
<c:forEach items="${pg}" var="p">
<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 

</c:forEach>
</select>
<br><br>


<input type="submit" value="submit">
</form>

</body>

</html>