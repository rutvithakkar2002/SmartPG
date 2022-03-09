<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SubScribed Users</title>
</head>
<body>
<h1>New SubScribed Users</h1>
<form action="savesubscribedusers" method="post" >
Userid:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email} </option> 

</c:forEach>
</select><br><br>
subid:<select name="subid">
<option>--------Select Subscription----------</option>
<c:forEach items="${subscription}" var="s">
<option value="${s.subid}">${s.timeduration}:${s.amount} </option> 

</c:forEach>
</select>
<br><br>
Start Date Of Subscription : <input type="text" name="startdateofsub" value="${s.startdateofsubscription}"/><br><Br>
End Date Of Subscription : <input type="text" name="enddateofsub" value="${s.enddateofsubscription}"/><br><Br>

<input type="submit" value="Add Subscribed Users"/>
<br><br>
</form>








</body>
</html>