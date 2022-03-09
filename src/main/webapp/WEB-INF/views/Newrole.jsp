<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Role</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->

		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">

			<jsp:include page="AdminHeader.jsp"></jsp:include>




		</div>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">


		<!-- partial:../../partials/_sidebar.html -->


		<nav class="sidebar sidebar-offcanvas" id="sidebar">

			<jsp:include page="AdminSideBar.jsp"></jsp:include>


		</nav>


		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">Add New Role</h3>

				</div>
				<div class="col-md-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Add New Role</h4>

							<p class="card-description">Describes a different role come
								in your website</p>
							<form action="saverole" method="post">
								<div class="form-group">
									<label>Role Name:</label> <input type="text" name="roleName" placeholder="enter rolename">
								</div>
								<button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
								
								<!--        <button class="btn btn-light">Cancel</button>-->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





</body>
</html>


















<!-- 
<form method="POST" action="saverole">
Role Name:<input type="text" name="roleName"><br><br>
<input type="submit" value="submit">
</form> -->