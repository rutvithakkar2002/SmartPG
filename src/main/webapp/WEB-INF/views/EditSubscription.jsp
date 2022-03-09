<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="updateplan" method="post" >
		<input type="hidden" value="${sub.subid}" name="subid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		Time-Duration : <input type="text" name="timeduration" value="${sub.timeduration}"/><br><Br>
		Amount : <input type="text" name="amount" value="${sub.amount}"/>
		<input type="submit" value="Update plan"/>
	</form>
</body>
</html>