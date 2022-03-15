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

		<div class="row p-0 m-0 proBanner d-flex" id="proBanner">

			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					<div class="ps-lg-1">
						<div class="d-flex align-items-center justify-content-between">
							<p class="mb-0 font-weight-medium me-3 buy-now-text">Free
								24/7 customer support, updates, and more with this template!</p>
							<a
								href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/?utm_source=organic&amp;utm_medium=banner&amp;utm_campaign=buynow_demo"
								target="_blank" class="btn me-2 buy-now-btn border-0">Get
								Pro</a>
							<jsp:include page="AdminHeader.jsp"></jsp:include>
						</div>
					</div>
					<div class="d-flex align-items-center justify-content-between">
						<a
							href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/"><i
							class="mdi mdi-home me-3 text-white"></i></a>
						<button id="bannerClose" class="btn border-0 p-0">
							<i class="mdi mdi-close text-white me-0"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- partial:partials/_navbar.html -->
		<nav
			class="navbar default-layout-navbar col-lg-12 col-12 p-0 d-flex flex-row fixed-top">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<h2 class="navbar-brand brand-logo">SMART pG fINDER</h2>
			</div>
			<div class="navbar-menu-wrapper d-flex align-items-stretch">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="mdi mdi-menu"></span>
				</button>
				<div class="search-field d-none d-md-block">
					<form class="d-flex align-items-center h-100" action="#">
						<div class="input-group">
							<div class="input-group-prepend bg-transparent">
								<i class="input-group-text border-0 mdi mdi-magnify"></i>
							</div>
							<input type="text" class="form-control bg-transparent border-0"
								placeholder="Search projects">
						</div>
					</form>
				</div>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" id="profileDropdown" href="#"
						data-bs-toggle="dropdown" aria-expanded="false">
							<div class="nav-profile-img">
								<img src="assets/images/faces/face1.jpg" alt="image"> <span
									class="availability-status online"></span>
							</div>

							<div class="nav-profile-text">
								<p class="mb-1 text-black">${users.firstName}</p>
							</div>
					</a>
						<div class="dropdown-menu navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item" href="#"> <i
								class="mdi mdi-cached me-2 text-success"></i> Activity Log
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#"> <i
								class="mdi mdi-logout me-2 text-primary"></i> Signout
							</a>
						</div></li>
					<li class="nav-item d-none d-lg-block full-screen-link"><a
						class="nav-link"> <i class="mdi mdi-fullscreen"
							id="fullscreen-button"></i>
					</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator dropdown-toggle"
						id="messageDropdown" href="#" data-bs-toggle="dropdown"
						aria-expanded="false"> <i class="mdi mdi-email-outline"></i> <span
							class="count-symbol bg-warning"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
							aria-labelledby="messageDropdown">
							<h6 class="p-3 mb-0">Messages</h6>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face4.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark
										send you a message</h6>
									<p class="text-gray mb-0">1 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face2.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh
										send you a message</h6>
									<p class="text-gray mb-0">15 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="assets/images/faces/face3.jpg" alt="image"
										class="profile-pic">
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile
										picture updated</h6>
									<p class="text-gray mb-0">18 Minutes ago</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<h6 class="p-3 mb-0 text-center">4 new messages</h6>
						</div></li>
					<li class="nav-item dropdown"><a
						class="nav-link count-indicator dropdown-toggle"
						id="notificationDropdown" href="#" data-bs-toggle="dropdown">
							<i class="mdi mdi-bell-outline"></i> <span
							class="count-symbol bg-danger"></span>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
							aria-labelledby="notificationDropdown">
							<h6 class="p-3 mb-0">Notifications</h6>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-success">
										<i class="mdi mdi-calendar"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Event
										today</h6>
									<p class="text-gray ellipsis mb-0">Just a reminder that you
										have an event today</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-warning">
										<i class="mdi mdi-settings"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
									<p class="text-gray ellipsis mb-0">Update dashboard</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<div class="preview-icon bg-info">
										<i class="mdi mdi-link-variant"></i>
									</div>
								</div>
								<div
									class="preview-item-content d-flex align-items-start flex-column justify-content-center">
									<h6 class="preview-subject font-weight-normal mb-1">Launch
										Admin</h6>
									<p class="text-gray ellipsis mb-0">New admin wow!</p>
								</div>
							</a>
							<div class="dropdown-divider"></div>
							<h6 class="p-3 mb-0 text-center">See all notifications</h6>
						</div></li>
					<li class="nav-item nav-logout d-none d-lg-block"></li>

				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div
			class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="AdminSideBar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>
							</span> Admin Dashboard
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




						<select class="form-select" aria-label="Default select example">
							<option selected>Select Your Role</option>
							<c:forEach items="${roles}" var="r">
								<option value="${r.roleId}">${r.roleName}</option>
							</c:forEach>

						</select> <br>
						<br>




						<div class="form-group">
							<input type="text" class="form-control form-control-lg"
								id="exampleInputPassword1" placeholder="Add Your Image"
								name="imgurl"> ${error}${msg}

						</div>



						<div class="mt-3">
							<button class="btn btn-gradient-primary btn-lg btn-block"
								type="submit">
								<i class="mdi mdi-account"></i> SIGN UP
							</button>
						</div>
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








