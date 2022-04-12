<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PG New Transaction</title>

<jsp:include page="PgAllCss.jsp"></jsp:include>

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

						<div class="col-md-10 border-right">
							<div class="p-3 py-10">
								<div
									class="d-flex justify-content-between align-items-center mb-3">
									<h4 class="text-right">New Transaction</h4>
								</div>


								<form method="POST" action="pgsavetransaction">
									UserName:<select name="userId">
										<option>--------Select User----------</option>
										<c:forEach items="${users}" var="u">
											<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
											</option>

										</c:forEach>
									</select> <br>
									<br> Rate:<input type="text" name="rate"><br>
									<br> 
									
									 User:<input type="text" name={user.firstname}>	<br>
									 
									<br>
									 Pgid:<select name="pgid">
										<option>--------Select PG----------</option>
										<c:forEach items="${pg}" var="p">
											<option value="${p.pgid}">${p.pgaddress}:${p.pglongitude}:${p.city}
											</option>

										</c:forEach>
									</select> <br> 
									<br> <input type="submit" value="submit">
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