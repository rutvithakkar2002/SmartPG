<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
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
								<p class="mb-1 text-black">David Greymaax</p>
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
						<nav aria-label="breadcrumb">
							<ul class="breadcrumb">
								<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
									<i
									class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
								</li>
							</ul>
						</nav>
					</div>
					
					
					
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">User Table</h4>
									<br>
									<a href="newuser">Add New User</a>
									<br><br>
									<div class="table-responsive">
										
										<table id="getallusers" class="table table-striped">
											<thead>
												<tr user="row">
															
													<td>UserId</td>
													<td>FirstName</td>
													<td>LastName</td>
													<td>Email</td>
													<td>Password</td>
													<td>Gender</td>
													<td>RoleName</td>
													<td>Image url</td>
													<td>Action</td>
													
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${users}" var="u">
												<tr>
													<td>${u.userId}</td>
													<td>${u.firstName}</td>
													<td>${u.lastName}</td>
													<td>${u.email}</td>
													<td>${u.password}</td>
													<td>${u.gender}</td>
													<td>${u.roleName}</td>
													<td>${u.imgurl}</td>

													<td><a href="deleteuser/${u.userId}">Delete</a>|
														<a href="edituser?userId=${u.userId}">Edit</a>
			
													</td>
											</tr>

										</c:forEach>
														
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card"></div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div class="container-fluid d-flex justify-content-between">
						<span
							class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright
							© bootstrapdash.com 2021</span> <span
							class="float-none float-sm-end mt-1 mt-sm-0 text-end">
							Free <a
							href="https://www.bootstrapdash.com/bootstrap-admin-template/"
							target="_blank">Bootstrap admin template</a> from
							Bootstrapdash.com
						</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#getallusers').DataTable();
		});
	</script>







</body>
</html>



<!-- 


<h2>List All users</h2>
<table border=1>
<tr>
	<td>UserId</td>
	<td>FirstName</td>
	<td>LastName</td>
	<td>Email</td>
	<td>Password</td>
	<td>RoleName</td>
	<td>Image url</td>
	<td>Action</td>
</tr>

<c:forEach items="${users}" var="u">
<tr>
<td>${u.userId}</td>
<td>${u.firstName}</td>
<td>${u.lastName}</td>
<td>${u.email}</td>
<td>${u.password}</td>
<td>${u.roleName}</td>
<td>${u.imgurl}</td>

<td><a href="deleteuser/${u.userId}">Delete</a>|
			<a href="edituser?userId=${u.userId}">Edit</a>
			
			</td>




</tr>

</c:forEach>

</table>





 -->