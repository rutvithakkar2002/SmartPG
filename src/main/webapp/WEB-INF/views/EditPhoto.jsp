<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updatephoto" method="post" >
		<input type="hidden" value="${photo.photoid}" name="photoid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		PG id : <input type="text" name="pgid" value="${photo.pgid }"/><br><Br>
		image url : <input type="text" name="imgurl" value="${photo.imgurl }"/><br><Br>
		<input type="submit" value="Update Photo"/>
	</form>


</body>
</html>