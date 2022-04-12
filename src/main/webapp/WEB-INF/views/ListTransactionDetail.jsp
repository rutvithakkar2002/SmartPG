<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>list all TransactionDetail</title>
<jsp:include page="AllCss.jsp"></jsp:include>

</head>
<body>

	<div class="container-scroller">

		<div class="row p-0 m-0 proBanner d-flex">

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
							</span> List TransactionDetails
						</h3>
					</div>



					<div class="row">
						<div class="col-md-14 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">


									<!-- 	<h4 class="card-title"></h4> -->


									<br> <a href="newtransactiondetail">Add New
										Transaction Detail</a> <br> <br>
									<div class="table-responsive">

										<table id="listtransactiondetail" class="table table-striped">
											<thead>
												<tr role="row">

													<th>Transaction Id</th>
													<th>UserId</th>
												
													<th>FirstName</th>	
													<th>LastName</th>
													<th>Email</th>
												
													<th>Payment Id</th>
													<th>Transaction For</th>
													<th>Amount Paid</th>
													<th>Mode Of Payment</th>
													<th>Date And Time</th>
													<th>Payment Gateway Used</th>
													<th>Action</th>

												</tr>
											</thead>
											<tbody>

												<c:forEach items="${transactiondetails}" var="t">
													<tr>
														<td>${t.transactionid}</td>
														<td>${t.userId}</td>
														
														<td>${t.firstName}</td>
														<td>${t.lastName}</td>
														<td>${t.email}</td>
														
														<td>${t.paymentid}</td>
														<td>${t.transactionfor}</td>
														<td>${t.amountpaid}</td>
														<td>${t.modeofpayment}</td>
														<td>${t.dateandtime}</td>
														<td>${t.paymentgatewayused}</td>


														<td><a
															href="deletetransactiondetail/${t.transactionid}">Delete</a>

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
			$('#listtransactiondetail').DataTable();
		});
	</script>





</body>
</html>



<!-- 



<h1>List Transaction Detail</h1>
<table border="1">
<tr>
	<td>Transaction Id</td>
	<td>UserId</td>
	<td>Payment Id</td>
	<td>Transaction For</td>
	<td>Amount Paid</td>
	<td>Mode Of Payment</td>
	<td>Date And Time</td>
	<td>Payment Gateway Used</td>
	<td>Action</td>
</tr>

<c:forEach items="${transactiondetails}" var="t">
<tr>
<td>${t.transactionid}</td>
<td>${t.userId}</td>
<td>${t.paymentid}</td>
<td>${t.transactionfor}</td>
<td>${t.amountpaid}</td>
<td>${t.modeofpayment}</td>
<td>${t.dateandtime}</td>
<td>${t.paymentgatewayused}</td>


<td><a href="deletetransactiondetail/${t.transactionid}">Delete</a>| 
		<a href="edittransactiondetail?transactionid=${t.transactionid}">Edit</a>
	</td>

</tr>
</c:forEach>

</table>






 -->