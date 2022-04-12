<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<meta charset="ISO-8859-1">
<title>list all Transaction</title>
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
							</span> List Transaction
						</h3>
					</div>



					<div class="row">
						<div class="col-md-10 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">


									<!-- 	<h4 class="card-title"></h4> -->


									<br> <a href="newtransaction">Add New Transaction</a> <br>
									<br>
									<div class="table-responsive">
										<div class="table-responsive">

											<table id="listtransaction" class="table table-striped">
												<thead>
													<tr transaction="row">
														<th>Payment Id</th>
													<!-- 	<th>UserId</th> -->
														
														<th>FirstName</th>
														<th>LastName</th>
														<th>Email</th>
														
														
														<th>Rate</th>
													<!-- 	<th>Pg Id</th> -->
														
														<th>Pg Name</th>
														<th>Pg Address</th>
														<th>city</th>
														
														<th>Action</th>

													</tr>
												</thead>
												<tbody>

													<c:forEach items="${transaction}" var="t">
														<tr>
															<td>${t.paymentid}</td>
															<!-- <td>${t.userId}</td> -->
															
															<td>${t.firstName}</td>
															<td>${t.lastName}</td>
															<td>${t.email}</td>
															
															<td>${t.rate}</td>
													<!-- 		<td>${t.pgid}</td> -->
		
															<td>${t.pgname}</td>
															<td>${t.pgaddress}</td>
															<td>${t.city}</td>
																	
															<td><a href="deletetransaction/${t.paymentid}">Delete</a>

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
				$('#listtransaction').DataTable();
			});
		</script>
</body>
</html>




<!-- 

<h1>List Transaction</h1>
	<table border="1">
		<tr>
			<td>Payment Id</td>
			<td>UserId</td>
			<td>rate</td>
			<td>Pg Id</td>
			<td>Action</td>
		</tr>


		<c:forEach items="${transaction}" var="t">
			<tr>
				<td>${t.paymentid}</td>
				<td>${t.userId}</td>
				<td>${t.rate}</td>
				<td>${t.pgid}</td>

				<td><a href="deletetransaction/${t.paymentid}">Delete</a>| 

				</td>

			</tr>
		</c:forEach>
	</table>

 -->