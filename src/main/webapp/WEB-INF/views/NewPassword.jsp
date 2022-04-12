<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Password</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<div class="container-scroller"></div>
	<!-- partial:partials/_navbar.html -->

	<!-- partial -->

	<!-- partial:partials/_sidebar.html -->

	<!-- partial -->
	<div class="main-panel">
		<div class="content-wrapper" style="padding: 5rem 15rem; width: 126%;">
			<div class="page-header">
				<h3 class="page-title">
					<!-- <span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>  -->
					</span> Set New Password
				</h3>

			</div>


			<form method="post" action="updatepassword">
				Email : <input type="text" name="email" /><br> <br> Otp :
				<input type="text" name="otp" /><br> <br> Password : <input
					type="password" name="password" /><br>
				<br> ConfirmPassword : <input type="password"
					name="confirmPassword" /><br>
				<br> <input type="submit" value="Update Password" />
			</form>

			${msg}${error}










		</div>
		<!-- content-wrapper ends -->
		<!-- partial:partials/_footer.html -->

		<!-- partial -->
	</div>
	<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->






</body>
</html>



<!-- 




<form method="post" action="updatepassword">
		Email : <input type="text" name="email"/><br> <br> 
		Otp : <input type="text" name="otp" /><br> <br> 
		Password : <input type="password" name="password" /><br><br> 
		ConfirmPassword : <input type="password" name="confirmPassword" /><br><br> 

		<input type="submit" value="Update Password"/> 
	</form>
	
	${msg}${error}





 -->