<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New PG</title>
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
					<div class="page-header">
						<h3 class="page-title">
							
							</span> PG Registration
						</h3>
						
					</div>
					
					<form action="savepg1" method="post">
								<div class="form-group">
									PG Name: <input type="text" name="pgname"
										placeholder="enter your PGname"> <br> <br>
										<input type="hidden" name="userId" value="${user.userId }">
							<br> <br> <label>PGAddress:</label>

									<textarea id="textarea" rows="5" cols="30" name="pgaddress"></textarea>
									<br> <br>
									 PGLongitude:<input type="text" name="pglongitude"><br> <br>
									  PGLatitude:<input type="text" name="pglattitude"><br> <br> 
									 Phone no:<input type="text" name="phno"><br> <br>
									For whom:<select name="forwhom">
										<option>---select---</option>
										<option>For only Boys</option>
										<option>For only Girls</option>
										<option>For Boys and Girls Both</option>

									</select> <br> <br> 
									City:<input type="text" name="city"><br> <br> <label>State:</label><input
										type="text" name="state"><br> <br> 
										Country:<input type="text" name="country"><br> <br>
									 Is Available:<input type="text" name="isavailable"><br> <br> 
									 Subscription:									<select name="subid">
										<option>----Select Plan----</option>
										<c:forEach items="${subscriptions}" var="s">
											<option value="${s.subid}">${s.offername}: ${s.timeduration}:
												${s.amount} Rs.</option>

										</c:forEach>

									</select> <br> <br> 
								<!-- 	Created on:<input type="text" name="createdon"><br> -->
									



								</div>
								<button type="submit" class="btn btn-gradient-primary me-2">Next</button>

								<!--        <button class="btn btn-light">Cancel</button>-->
							</form>
					
								
					
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