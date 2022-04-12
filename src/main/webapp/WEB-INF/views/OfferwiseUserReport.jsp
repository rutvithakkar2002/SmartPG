<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Offerwise Report</title>
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
						</span> Subscribed User Report
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



									<table id="offerwiseuserreport" class="table table-striped">
										<thead>
											

											<tr subscribeduser="row">
											<!-- 	<th>SubscribedUsers Id</th> -->
										<!-- 		<th>User Id</th>   -->
												<th>FirstName</th>
												<th>LastName</th>
												<th>email</th>
											<!-- 	<th>Subscription Id</th> -->
												<th>Start date of Subscription</th>
												<th>End Date of Subscription</th>
												
											</tr>
										</thead>
										<tbody>

											<c:forEach items="${subusers}" var="s">
												<tr>
												<!-- 	<td>${s.subscribeid}</td> -->
												<!-- 	<td>${s.userId}</td>   -->

													<td>${s.firstName}</td>
													<td>${s.lastName}</td>
													<td>${s.email}</td>

												<!-- 	<td>${s.subid}</td>   -->
													<td>${s.startdateofsub}</td>
													<td>${s.enddateofsub}</td>
													
													
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
						OfferWise</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="offerwisereport">
						<div class="form-group row">

							<div class="col-sm-10">
								<select name="subid" class="form-select"
									aria-label="Default select example">
									<!-- <option>Select Your Role</option> -->
									<c:forEach items="${subscription}" var="s">
										<option value="${s.subid}">${s.offername}</option>

									</c:forEach>

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
			const element = document.getElementById('offerwiseuserreport');
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