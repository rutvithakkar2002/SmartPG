<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css"
	rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">

<meta charset="ISO-8859-1">
<title>New User</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<div class="container-scroller">

		
			
		</div>
		<!-- partial:partials/_navbar.html -->
		
		<!-- partial -->
	
			
			<!-- partial:partials/_sidebar.html -->
			
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper" style="padding: 5rem 15rem;width: 126%;">
					<div class="page-header">
						<h3 class="page-title">
							<!-- <span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>  -->
							 Sign UP 
						</h3>
						
					</div>



					<form class="pt-3" method="post" action="saveuser">
						<div class="form-group">
							<input type="text" class="form-control form-control-lg"
								id="exampleInputEmail1" placeholder="Enter Your FirstName"
								name="firstName">
						</div>
						<div class="form-group">
							<input type="text" class="form-control form-control-lg"
								id="exampleInputPassword1" placeholder="Enter Your Last Name"
								name="lastName"> ${error}${msg}

						</div>

						<div class="form-group">
							<input type="text" class="form-control form-control-lg"
								id="exampleInputPassword1" placeholder="Enter Your Email"
								name="email"> ${error}${msg}

						</div>

						<div class="form-group">
							<input type="password" class="form-control form-control-lg"
								id="exampleInputPassword1" placeholder="Enter Your Password"
								name="password"> ${error}${msg}

						</div>


						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender" value="male">Male
							</label>
						</div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" name="gender" value="female">Female
							</label>
						</div>
						${error}${msg}


				<!-- 		<div class="form-group">
							Role:<select name="roleId">
								<option>--------Select Role----------</option>
								<c:forEach items="${roles}" var="r">
									<option value="${r.roleId}">${r.roleName}</option>
								</c:forEach>
							</select>

						</div> -->




						<select  name="roleId" class="form-select" aria-label="Default select example">
							<option>Select Your Role</option>
							<c:forEach items="${roles}" var="r">
								<c:if test="${user.roleId==4 && r.roleId==4}">
								<option value="${r.roleId}">${r.roleName}</option>
								
								</c:if>
								<c:if test="${r.roleId!=4 }">
								<option value="${r.roleId}">${r.roleName}</option>
								
								</c:if>
								
							</c:forEach>

						</select> <br>
						<br>


						<div class="mt-3">
							<button class="btn btn-gradient-primary btn-lg btn-block"
								type="submit">
								<i class="mdi mdi-account"></i> SIGN UP
							</button>
						</div>
						<c:if test="${user.roleId!=4 }">
						<div
							class="my-2 d-flex justify-content-between align-items-center">
							<div class="form-check">
								<label class="form-check-label text-muted"> <input
									type="checkbox" class="form-check-input"> Keep me
									signed in <i class="input-helper"></i></label>
							</div>
							<a href="forgetpassword" class="auth-link text-black">Forgot
								password?</a>
						</div>

						<div class="text-center mt-4 font-weight-light">
							Don't have an account? <a href="newuser" class="text-primary">Create</a>
						</div>						
						
						
						</c:if>

					</form>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	
	<!-- container-scroller -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->


</body>
</html>


<!-- 


<form action="saveuser" method="post">
FirstName:<input type="text" name="firstName"/><br><br>
LastName:<input type="text" name="lastName"/><br><br>
email:<input type="text" name="email"/><br><br>
Password: <input type="password" name="password" /><br><br>
Role:<select name="roleId">
<option>--------Select Role----------</option>
<c:forEach items="${roles}" var="r">
<option value="${r.roleId}">${r.roleName}</option> 
// id is hidden and rolename is displayd 

</c:forEach>
</select>
Image Url:<input type="text" name="imgurl"/><br><br>
<input type="submit" value="Add User"/>

</form>-->








