<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit PG</title>
</head>
<body>
<form action="updatepg" method="post" >
		<input type="hidden" value="${pg.pgid}" name="pgid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
		
		Pg Address:<select name="pgaddress">
<option>--------Select PG----------</option>
<c:forEach items="${pgs}" var="p">
<option value="${p.pgid}">${p.pgaddress}:${p.city} </option> 

</c:forEach>
</select>
<br><br>
PGAddress:<textarea id="textarea" rows="5" cols="30" name="pgaddress" value="${pg.pgaddress }"></textarea><br><br>
		
		PG Lattitude : <input type="text" name="pglattitude" value="${pg.pglattitude }"/><br><br>
		PG Longitude : <input type="text" name="pglongitude" value="${pg.pglongitude }"/><br><br>
		PG Phone No : <input type="text" name="phno" value="${pg.phno }"/><br><br>
		For Whom: <input type="text" name="forwhom" value="${pg.forwhom}"/><br><br>
		city : <input type="text" name="city" value="${pg.city }"/><br><br>
		State : <input type="text" name="state" value="${pg.state }"/><br><br>
		Country : <input type="text" name="country" value="${pg.country}"/><br><br>
		Is Available : <input type="text" name="isavailable" value="${pg.isavailable }"/><br><br>
		
		
		
		
		
subid:<select name="subscription">
<option>--------Select Subscription----------</option>
<c:forEach items="${subscription}" var="s">
<option value="${s.subid}">${s.timeduration}:${s.amount} </option> 

</c:forEach>
</select>
<br><br>
		
		
		
		<input type="submit" value="Update PG"/>
	</form>
</body>
</html>