<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage User Profile</title>
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
	<div
		class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="Pgsidebar.jsp" />
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header"></div>


				<div class="container rounded bg-white mt-5 mb-5">
					<div class="row">
						<div class="col-md-3 border-right">
							<div
								class="d-flex flex-column align-items-center text-center p-3 py-5">
								<img class="rounded-circle mt-5"
									src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQF2psCzfbB611rnUhxgMi-lc2oB78ykqDGYb4v83xQ1pAbhPiB&usqp=CAU"><span
									class="font-weight-bold">Rutvi</span><span
									class="text-black-50">rutvi2002@.com</span><span> </span>
							</div>
						</div>
						<div class="col-md-5 border-right">
							<div class="p-3 py-5">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h4 class="text-right">Manage Profile</h4>
								</div>
												
								<form action="updateuserprofile" method="post">
									<input type="hidden" value="${user.userId}" name="userId" />
									<div class="form-group">
										<div class="row mt-3">
											<div class="col-md-12">
												<label class="labels">Name</label><input type="text"
													name="firstName" class="form-control"
													placeholder="enter your firstname" value="${user.firstName}">
											</div>
											<br>
											<br>
											<br>
											<div class="col-md-12">
												<label class="labels">Surname</label><input type="text"
													name="lastName" class="form-control" value="${user.lastName}"
													placeholder="enter your surname">
											</div>
										</div>

										<div class="row mt-3">
											<div class="col-md-12">
												<label class="labels">ImageUrl</label><input type="text"
													name="imgurl" class="form-control"
													placeholder="enter ImageUrl" value="${user.imgurl}">
											</div>


										</div>

										<div class="mt-5 text-center">
											<input type="submit" class="btn btn-primary profile-button" value="Submit Profile"></input>

										</div>
								</form>


							</div>



						</div>
					</div>
				</div>

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