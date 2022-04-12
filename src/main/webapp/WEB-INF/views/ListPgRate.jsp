<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>list PG Rate</title>
<jsp:include page="AllCss.jsp"></jsp:include>

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
	<!-- partial:partials/_navbar.html -->
	
	<!-- partial -->
	<div
		class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
		<!-- partial:partials/_sidebar.html -->

		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="AdminSideBar.jsp" />
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">
						<span class="page-title-icon bg-gradient-primary text-white me-2">
							<i class="mdi mdi-home"></i>
						</span> List PG Rate
					</h3>
				</div>



				<div class="row">
					<div class="col-md-20 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">


								<!-- 	<h4 class="card-title"></h4> -->


								<br> <a href="newpgrate">Add New PG Rate</a> <br> <br>
								<div class="table-responsive">

									<table id="getallpgrate" class="table table-striped">
										<thead>
											<tr pgrate="row">
												<th>PG Rate Id</th>
												<th>PGId</th>
												<th>PG Name</th>
												<th>PG Address</th>
												<th>City</th>
												<th>State</th>

												<th>Onesharing</th>
												<th>Twosharing</th>
												<th>Threesharing</th>
												<th>Foursharing</th>
												<th>Action</th>

											</tr>
										</thead>
										<tbody>

											<c:forEach items="${pgrate}" var="pr">
												<tr>
													<td>${pr.pgrateid}</td>
													<td>${pr.pgid}</td>
													<td>${pr.pgname}</td>
													<td>${pr.pgaddress}</td>
													<td>${pr.city}</td>
													<td>${pr.state}</td>
													<td>${pr.onesharing}</td>
													<td>${pr.twosharing}</td>
													<td>${pr.threesharing}</td>
													<td>${pr.foursharing}</td>
													<td><a href="deletepgrate/${pr.pgrateid}">Delete</a>|
														<a href="editpgrate?pgrateid=${pr.pgrateid}">Edit</a></td>

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
			$('#getallpgrate').DataTable();
		});
	</script>




</body>
</html>


<!-- 
<h1>List PG Rate</h1>

<table border="1">

<tr>
	<th>PG Rate Id </th>
	<th>PGId </th>
	<th>Onesharing</th>
	<th>Twosharing</th>
	<th>Threesharing</th>
	<th>Foursharing</th>
	<th>Action</th>
</tr>

<c:forEach items="${pgrate}"  var="pr">
<tr>
	<td>${pr.pgrateid}</td>
	<td>${pr.pgid}</td>	
	<td>${pr.onesharing}</td>
	<td>${pr.twosharing}</td>	
	<td>${pr.threesharing}</td>
	<td>${pr.foursharing}</td>
	<td><a href="deletepgrate/${pr.pgrateid}">Delete</a>| 
		<a href="editpgrate?pgrateid=${pr.pgrateid}">Edit</a>
	</td>

</tr>
</c:forEach>
</table>






 -->