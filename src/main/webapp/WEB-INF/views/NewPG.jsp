<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New PG</title>
</head>
<body>

<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->

		<div
			class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">

			<jsp:include page="AdminHeader.jsp"></jsp:include>




		</div>
		<button
			class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
			type="button" data-toggle="offcanvas">
			<span class="mdi mdi-menu"></span>
		</button>
	</div>
	<!-- partial -->
	<div class="container-fluid page-body-wrapper">


		<!-- partial:../../partials/_sidebar.html -->


		<nav class="sidebar sidebar-offcanvas" id="sidebar">

			<jsp:include page="AdminSideBar.jsp"></jsp:include>


		</nav>


		<!-- partial -->
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">Add New PG</h3>

				</div>
				<div class="col-md-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Add New PG</h4>

							<p class="card-description">Describes a PG come
								in your website</p>
							<form action="savepg" method="post">
							
				
								<div class="form-group">
									<label>Role Name:</label> <input type="text" name="roleName" placeholder="enter rolename">
								</div>
								
								
								User:<select name="userId">
			<option>----Select User----</option>
				<c:forEach items="${users}" var="u">
					<option value="${u.userId}">${u.firstName}</option>
				
				</c:forEach>
			
	
	</select>
	<br><br>
								
								
								
								
								
								<button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
								
								<!--        <button class="btn btn-light">Cancel</button>-->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

















										

</body>
</html>




<!-- 



<form action="savepg" method="post">
	User:<select name="userId">
			<option>----Select User----</option>
				<c:forEach items="${users}" var="u">
					<option value="${u.userId}">${u.firstName}</option>
				
				</c:forEach>
	
	</select>
	<br><br>
	PGAddress:<textarea id="textarea" rows="5" cols="30" name="pgaddress"></textarea><br><br>
	PGLongitude:<input type="text" name="pglongitude"><br><br>
	PGLatitude:<input type="text" name="pglattitude"><br><br>
	Phone no:<input type="text" name="phno"><br><br>
	
	For whom:<select name="forwhom">
	<option>---select---</option>
	<option>For only Boys</option>
	<option>For only Girls</option>
	<option>For Boys and Girls Both</option>
	
	</select>
	<br><br>
	
	city:<input type="text" name="city"><br><br>
	State:<input type="text" name="state"><br><br>
	Country:<input type="text" name="country"><br><br>
	Is Available:<input type="text" name="isavailable"><br><br>
	
	Subscription:<select name="subid">
			<option>----Select Plan----</option>
				<c:forEach items="${subscriptions}" var="s">
					<option value="${s.subid}">${s.timeduration}--><!-- ${s.amount} Rs.</option>
				
				</c:forEach>
				
				</select>
				<br><br>
	
	
	
	Created on:<input type="text" name="createdon"><br><br>

	
	
	<input type="submit" value="Add PG"> -->   <!-- How the data are come in jsp??==dao -->
										<!-- dao ko instruction dene ka kam==controller -->
										
										
<!-- </form>	-->












 -->







