<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>list all Amenity</title>
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
							</span> List Amenities
						</h3>
					</div>



					<div class="row">
						<div class="col-md-10 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">


									<!-- 	<h4 class="card-title"></h4> -->


									<br> <a href="newamenity">Add New Amenity</a> <br> <br>
									<div class="table-responsive">



										<table id="listamenity" class="table table-striped">
											<thead>
												<tr amenity="row">

													<th>Amenity Id</th>
													<th>Amenity Name</th>
													<th>action</th>

												</tr>
											</thead>
											<tbody>
												<c:forEach items="${amenities}" var="amenity">
													<tr>
														<td>${amenity.amenityid}</td>
														<td>${amenity.amenityname}</td>
														<td><a href="deleteamenity/${amenity.amenityid}">Delete</a>|
															<!-- when we submit then the roleid passed in url --> <a
															href="editamenity?amenityid=${amenity.amenityid}">Edit</a>
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
			$('#listamenity').DataTable();
		});
	</script>



</body>
</html>



<!-- 



<h1>List Amenity</h1>
	<br>
	
	<a href="newamenity">Add new amenity</a>
	<table border="1">
	<tr>
		<th>Amenity Id </th>
		<th>Amenity Name</th>
		<th>action</th>
	
</tr>

<c:forEach items="${amenities}" var="amenity">
<tr>
	<td>${amenity.amenityid}</td>	
	<td>${amenity.amenityname}</td>
	<td><a href="deleteamenity/${amenity.amenityid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
<!-- 	<a href="editamenity?amenityid=${amenity.amenityid}">Edit</a>
	</td>		
</tr>
</c:forEach>
</table>-->

