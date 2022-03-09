<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewPhoto</title>
</head>
<body>
<h2>Add PHOTO</h2>

<form method="post" action="savephoto">


Pgid:<select name="pgid">
<option>--------Select PG----------</option>
<c:forEach items="${pgs}" var="p">
<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 

</c:forEach>
</select>


<br><br>

image URL:<input type="text" name="imgurl"><br><br>
<input type="submit" value="submit">
</form>

</body>
</html>