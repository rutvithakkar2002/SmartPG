<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updateamenity" method="post" >
		<input type="hidden" value="${a.amenityid}" name="amenityid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		Amenity Name : <input type="text" name="amenityname" value="${a.amenityname }"/><br><Br>
		<input type="submit" value="Update Amenity"/>
	</form>

</body>
</html>