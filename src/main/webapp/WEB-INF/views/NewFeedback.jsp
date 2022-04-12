<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Add New Feedback</title>
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
		<jsp:include page="AdminSideBar.jsp"/>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						
						
					</div>
					
					
					
					
						<form action="savefeedback" method="post">
						<div class="form-group">
							User:<select name="userId">
								<option>----Select User----</option>
								<c:forEach items="${users}" var="u">
									<option value="${u.userId}">${u.firstName}${u.lastName}</option>

								</c:forEach>
							</select><br>
							<br> PG Id:<select name="pgid">
								<option>----Select PG----</option>
								<c:forEach items="${pgs}" var="p">
									<option value="${p.pgid}">${p.pgname} : ${p.pgaddress}</option>

								</c:forEach>
							</select><br>
							<br> Rating: <input type="text" name="rating"
								placeholder="enter Rating points outof 5"> <br>
							<br> Message:
							<textarea id="textarea" rows="5" cols="30" name="message"
								placeholder="enter feedback message">
			</textarea>
						</div>
						<button type="submit" class="btn btn-gradient-primary me-2">Add
							Feedback</button>

						<button class="btn btn-light">Cancel</button>
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
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->
	
	
	
	
</body>



</html>


<!-- 



<h1>Feedback Form</h1>

<form method="POST" action="savefeedback">
User:<select name="userId">
			<option>----Select User----</option>
				<c:forEach items="${users}" var="u">
					<option value="${u.userId}">${u.firstName}  ${u.lastName}</option>
				
				</c:forEach>
				</select><br><br>
PG Id:<select name="pgid">
			<option>----Select PG----</option>
				<c:forEach items="${pgs}" var="p">
					<option value="${p.pgid}">${p.pgaddress}</option>
				
				</c:forEach>
</select><br><br>
Rating:<input type="text" name="rating"><br><br>

Message: <textarea id="textarea" rows="5" cols="30" name="message"></textarea><br><br>




<input type="submit" value="submit">
</form>








 -->
