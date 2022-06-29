<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>list Booked Users</title>
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
							</span> List Booked Users
						</h3>
					</div>



					<div class="row">
						<div class="col-md-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">

									<!-- <a href="newbookedcustomer">Add new booked user</a> -->
									<!-- 	<h4 class="card-title"></h4> -->


									<br>
									<div class="table-responsive">

										<table id="listbookeduser" class="table table-striped">
											<thead>
												<tr>

													<th>Booked Id</th>
												<!-- 	<th>User Id</th> -->
																		
													<th>FirstName</th>
													<th>LastName</th>
													<th>Email</th>

												<!-- 	<th>Pg Id</th>   -->
													<th>Pg Name</th>
													<th>PG address</th>		
													<th>city</th>
													
															
													<th>Request Accept</th>
													<th>Date & Time Of Booking</th>
													<th>Action</th>

												</tr>
											</thead>
											<tbody>

												<c:forEach items="${book}" var="b">
													<tr>
														<td>${b.bookedid}</td>
													<!-- 	<td>${b.userId}</td> -->
												
														<td>${b.firstName}</td>
														<td>${b.lastName}</td>
														<td>${b.email}</td>
																	
													<!-- 	<td>${b.pgid}</td> -->
														<td>${b.pgname}</td>
														<td>${b.pgaddress}</td>				
														<td>${b.city}</td>
												
														<td>${b.requestaccept}</td>
														<td>${b.datetimeofbooking}</td>
														<td><a href="deletebookeduser/${b.bookedid}">Delete</a>


														</td>
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
			$('#listbookeduser').DataTable();
		});
	</script>





</body>
</html>


<!-- 

<h1>List Booked Users</h1>
<table border="1">
<tr>
	<td>Booked Id</td>
	<td>User Id</td>
	<td>Pg Id</td>
	<td>Request Accept</td>
	<td>Date & Time Of Booking</td>
		<td>Action</td>
</tr>


<c:forEach items="${book}" var="b">
<tr>
<td>${b.bookedid}</td>
<td>${b.userId}</td>
<td>${b.pgid}</td>
<td>${b.requestaccept}</td>
<td>${b.datetimeofbooking}</td>
<td><a href="deletebookeduser/${b.bookedid}">Delete</a>| 
		 <a href="editbookeduser?bookedid=${b.bookedid}">Edit</a>
			
			</td>
			</c:forEach>
			</table>






 -->
