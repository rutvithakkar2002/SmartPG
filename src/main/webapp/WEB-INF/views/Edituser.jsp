<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
</head>
<body>

<form action="updateuser" method="post" >
		<input type="hidden" value="${user.userId}" name="userId"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		FirstName : <input type="text" name="firstName" value="${user.firstName }"/><br><Br>
		lastName : <input type="text" name="lastName" value="${user.lastName }"/><br><Br>
		ImageUrl : <input type="text" name="imgurl" value="${user.imgurl }"/><br><Br>
	
		<input type="submit" value="Update User"/>
	</form>



</body>
</html>