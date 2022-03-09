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

<h1>PG AMENITIES TABLE</h1>

<form method="post" action="savepgamenity">


Pgid:<select name="pgid">
<option>--------Select PG----------</option>
<c:forEach items="${pgs}" var="p">
<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city} </option> 
<!-- id is hidden and rolename is displayd -->

</c:forEach>
</select>
<br><br>


Amenities Id:<select name="amenityid">
<option>--------Select Amenity----------</option>
<c:forEach items="${amenities}" var="a">
<option value="${a.amenityid}">${a.amenityname}</option> 
<!-- id is hidden and rolename is displayd -->

</c:forEach>
</select>


<br><br>

<input type="submit" value="submit">
</form>

</body>
</html>