<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categorywise Pg</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>

<div class="container-scroller">
		<jsp:include page="AdminHeader.jsp"></jsp:include>
		<div class="row p-0 m-0 proBanner d-flex">

			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">


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
						</span> User Report
					</h3>

				</div>

				<div class="row">
					<div class="col-md-13 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title"></h4>
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#exampleModal"
									data-whatever="@mdo">Status</button>

								<button class="btn-primary" onclick="exportPdf()">Export</button>
								</t>
								

								<div class="table-responsive">



									<table id="categorywisepgreport" class="table table-striped">
										
										
										<thead>
											<tr pg="row">
												<th>PG ID</th>
											<!-- 	<th>User ID</th> -->
												<th>FirstName</th>
												<th>LastName</th>
												<th>Email</th>
												<th>PG Name</th>
												<th>PG Address</th>
												<th>PG Lattitude</th>
												<th>PG Longitude</th>
												<th>Phone no</th>
												<th>PG For whom</th>
												<th>city</th>
												<th>state</th>
												<th>country</th>
												<th>isavailable</th>
												<!-- <th>subscription ID</th>-->
												
												<th>Time Duration</th>
												<th>Amount</th>
												
												<th>created on</th>
												<th>Action</th>


											</tr>
										</thead>
										<tbody>
											<c:forEach items="${pg}" var="p">
												<!-- Dynamic value foreach -->
												<tr>
													<td>${p.pgid}</td>
												<!-- 	<td>${p.userId}</td> -->

													<td>${p.firstName}</td>
													<td>${p.lastName}</td>
													<td>${p.email}</td>
													<td>${p.pgname}</td>
													<td>${p.pgaddress}</td>
													<td>${p.pglattitude}</td>
													<td>${p.pglongitude}</td>
													<td>${p.phno}</td>
													<td>${p.forwhom}</td>
													<td>${p.city}</td>
													<td>${p.state}</td>
													<td>${p.country}</td>
													<td>${p.isavailable}</td>
													
													<!-- <td>${p.subid}</td> -->
													
													<td>${p.timeduration}</td>
													<td>${p.amount}</td>
													
													<td>${p.createdon}</td>
													<td><a href="deletepg/${p.pgid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
														<a href="editpg?pgid=${p.pgid}">Edit</a></td>

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


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Report - User -
						Categorywise</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="categorywisereport">
						<div class="form-group row">

							<div class="col-sm-10">
								<select name="forwhom">
										
										<option value=1>For only Boys</option>
										<option value=2>For only Girls</option>
										<option value=3>For Boys and Girls Both</option>
										
								</select>

							</div>
						</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Generate</button>
				</div>
				</form>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function exportPdf()	 {
			const element = document.getElementById('categorywisepgreport');
			var opt = {
				margin : 0,
				filename : 'OfferWiseUserReport.pdf',
				image : {
					type : 'jpeg',
					quality : 0.98
				},
				html2canvas : {
					scale : 1,
					width : 2000,
				},
				jsPDF : {
					unit : 'in',
					format : 'letter',
					orientation : 'landscape'
				}
			};
			html2pdf().set(opt).from(element).save();
		}
	</script>








</body>
</html>