<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit PG Rate</title>
</head>
<body>

<form action="updatepgrate" method="post" >
		<input type="hidden" value="${rate.pgrateid}" name="pgrateid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		
		Onesharing : <input type="text" name="onesharing" value="${rate.onesharing }"/><br><Br>
		Twosharing : <input type="text" name="twosharing" value="${rate.twosharing }"/><br><Br>
		Threesharing : <input type="text" name="threesharing" value="${rate.threesharing }"/><br><Br>
		Foursharing : <input type="text" name="foursharing" value="${rate.foursharing }"/><br><Br>
		<input type="submit" value="Update PGRate"/>
	</form>




</body>
</html>