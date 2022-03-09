<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Feedback</title>
</head>
<body>

<form action="updatefeedback" method="post" >
		<input type="hidden" value="${feedback.feedbackid}" name="feedbackid"/>
		Rating : <input type="text" name="rating" value="${feedback.rating }"/><br><Br>
		Message : <input type="text" name="message" value="${feedback.message}"/><br><Br>
	
		<input type="submit" value="Update feedback"/>
	</form>



</body>
</html>