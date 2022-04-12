<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>

<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<div class="container-scroller"></div>
	<!-- partial:partials/_navbar.html -->

	<!-- partial -->

		<!-- partial:partials/_sidebar.html -->

		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper"
				style="padding: 5rem 15rem; width: 126%;">
				<div class="page-header">
					<h3 class="page-title">
						<!-- <span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>  -->
						</span> Verify Your Mail
					</h3>

				</div>



				<form method="POST" action="forgetpassword">
					Email:<input type="text" name="email"><br>
					<br> <input type="submit" value="GET ME BACK">
				</form>








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


<h1>ForgetPassword form </h1>

<form method="POST" action="forgetpassword">
Email:<input type="text" name="email"><br><br>
<input type="submit" value="GET ME BACK">
</form>



 -->










 
 
 
 



