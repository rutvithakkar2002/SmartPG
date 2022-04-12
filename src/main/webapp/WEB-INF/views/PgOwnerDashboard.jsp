<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PG Owner Dashboard</title>

<jsp:include page="PgAllCss.jsp"></jsp:include>

</head>
<body>
<div class="container-scroller">

		<div class="row p-0 m-0 proBanner d-flex" >

			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					
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
		<!-- partial -->
		<div class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="Pgsidebar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						
						
					</div>
					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total Users <i
											class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalusercount}</h2>
									
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total PG<i
											class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalpgcount}</h2>
					
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										TOtal Revenue<i
											class="mdi mdi-diamond mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">  </h2>
									<h6 class="card-text">   </h6>
								</div>
							</div>
						</div>
					</div>
					
					
					
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
	<jsp:include page="PgAllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->

</body>
</html>