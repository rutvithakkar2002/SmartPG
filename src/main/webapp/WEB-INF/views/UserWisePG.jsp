<%@page import="com.bean.PgBean"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>list PG Detail</title>
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
		<jsp:include page="Pgsidebar.jsp" />
		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">
						<span class="page-title-icon bg-gradient-primary text-white me-2">
							<i class="mdi mdi-home"></i>
						</span> List PG
					</h3>
				</div>


				<div class="row">
					<div class="col-md-30 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">


								<!-- 	<h4 class="card-title"></h4> -->


								<a href="pgownernewpg">Add New PG</a> <br> <br>
								<div class="table-responsive">


									<table id="listpg" class="table table-striped">
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
											<c:forEach items="${pgs}" var="p">
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
														<a href="PGownereditpg?pgid=${p.pgid}">Edit</a>|
														<a href="pgownerpgimages?pgid=${p.pgid}">Manage Photos</a></td></td>
														

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
			$('#listpg').DataTable();
		});
	</script>




	<!-- <script type="text/javascript">
		function exportPdf() {
			const element = document.getElementById('listpg');
			var opt = {
				margin : 0,
				filename : 'PgReport.pdf',
				image : {
					type : 'jpeg',
					quality : 0.98
				},
				html2canvas : {
					scale : 1,
					width: 2000,
				},
				jsPDF : {
					unit : 'in',
					format : 'letter',
					orientation : 'landscape'
				}
			};
			html2pdf().set(opt).from(element).save();
		}
	</script>-->
</body>
</html>



<!-- 
<h2>List PG</h2>

  <table border="1">
	<tr>
		<td>PG ID</td>
		<td>User ID</td>
		<td>PG Address</td>
		<td>PG Lattitude</td>
		<td>PG Longitude</td>
		<td>Phone no</td>
		<td>PG For whom</td>
		<td>city</td>
		<td>state</td>
		<td>country</td>
		<td>isavailable</td>
		<td>subscription ID</td>
		<td>created on</td>
		<td>Action</td>				
	</tr>
	<c:forEach items="${pgs}" var="p">   <!-- Dynamic value foreach -->
<!-- 	<tr>
		<td>${p.pgid}</td>
		<td>${p.userId}</td>
		<td>${p.pgaddress}</td>
		<td>${p.pglattitude}</td>
		<td>${p.pglongitude}</td>
		<td>${p.phno}</td>
		<td>${p.forwhom}</td>
		<td>${p.city}</td>
		<td>${p.state}</td>
		<td>${p.country}</td>
		<td>${p.isavailable}</td>
		<td>${p.subid}</td>
		<td>${p.createdon}</td>
		<td><a href="deletepg/${p.pgid}">Delete</a>| <!-- when we submit then the roleid passed in url -->
<!--  <a href="editpg?pgid=${p.pgid}">Edit</a>
	</td>
		
	</tr>
	
	</c:forEach>
	
</table>    -->