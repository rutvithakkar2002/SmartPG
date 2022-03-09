<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Feedback Form</h1>

<form method="POST" action="savefeedback">
User:<select name="userId">
			<option>----Select User----</option>
				<c:forEach items="${users}" var="u">
					<option value="${u.userId}">${u.firstName}  ${u.lastName}</option>
				
				</c:forEach>
				</select><br><br>
PG Id:<select name="pgid">
			<option>----Select PG----</option>
				<c:forEach items="${pgs}" var="p">
					<option value="${p.pgid}">${p.pgaddress}</option>
				
				</c:forEach>
</select><br><br>
Rating:<input type="text" name="rating"><br><br>

Message: <textarea id="textarea" rows="5" cols="30" name="message"></textarea><br><br>




<input type="submit" value="submit">
</form>


</body>
</html>