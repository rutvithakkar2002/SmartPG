<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Subscribed User</title>
</head>
<body>

<h1>Edit Subscribed Users</h1>
<form action="updatesubscribeduser" method="post" >

<input type="hidden" value="${subscribeduser.subscribeid}" name="subscribeid"/> 

subscription plan:<select name="subscription">
<option>--------Select Subscription----------</option>
<c:forEach items="${subscription}" var="s">
<option value="${s.subid}">${s.timeduration}:${s.amount} </option> 

</c:forEach>
</select>
<br><br>

<input type="submit" value="Update Subscription">
</form>
</body>
</html>