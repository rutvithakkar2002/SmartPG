<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PG Rate</title>
</head>
<body>
<h1>PG Rates</h1>

<form method="post" action="savepgrate">

Pgid:<select name="pgid">
<option>--------Select PG----------</option>
<c:forEach items="${pg}" var="p">
<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 

</c:forEach>
</select>


<br><br>

OneSharing:<input type="text" name="onesharing"><br><br>
TwoSharing:<input type="text" name="twosharing"><br><br>
ThreeSharing:<input type="text" name="threesharing"><br><br>
FourSharing:<input type="text" name="foursharing"><br><br>

<input type="submit" value="submit">
</form>


</body>
</html>