<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Booked Users</title>
</head>
<body>

<form action="updatebookedUser" method="post" >
		<input type="hidden" value="${book.bookedid}" name="bookedid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		
		Pgid:<select name="pgid">
	<option>--------Select PG----------</option>
	<c:forEach items="${pg}" var="p">
	<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 

	</c:forEach>
	</select>


<br><br>
		
		Request Accept : <input type="text" name="requestaccept" value="${book.requestaccept}"/><br><Br>
		<input type="submit" value="Update Booked User"/>
		
		
	</form>	
</body>
</html>