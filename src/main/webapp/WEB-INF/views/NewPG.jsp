<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New PG</title>
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
		<jsp:include page="AdminSideBar.jsp"/>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							
							</span> PG Registration
						</h3>
						
					</div>
					
					<form action="savepg" method="post">
								<div class="form-group">
									PG Name: <input type="text" name="pgname"
										placeholder="enter your PGname" > <br> <br>
									User:<select name="userId">
										<option>---------Select User----</option>
										<c:forEach items="${users}" var="u">
											<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}</option>

										</c:forEach>

									</select> <br> <br> <label>PGAddress:</label>

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
									
										Start-date: <input type="text" name="startdate"
										placeholder=""> <br> <br>
										End-date: <input type="text" name="enddate"
										placeholder=""> <br> <br>



								</div>
								<button type="submit" class="btn btn-gradient-primary me-2">Add Pg</button>

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
	<jsp:include page="AllJs.jsp"></jsp:include>
	
	

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
					<option value="${s.subid}">${s.timeduration}-->
<!-- ${s.amount} Rs.</option>
				
				</c:forEach>
				
				</select>
				<br><br>
	
	
	
	Created on:<input type="text" name="createdon"><br><br>

	
	
	<input type="submit" value="Add PG"> -->
<!-- How the data are come in jsp??==dao -->
<!-- dao ko instruction dene ka kam==controller -->


<!-- </form>	-->









<!-- 




<div class="main-panel">
			<div class="content-wrapper">
				<div class="page-header">
					<h3 class="page-title">Add New PG</h3>

				</div>
				<div class="col-md-6 grid-margin stretch-card">
					<div class="card">
						<div class="card-body">

							<form action="savepg" method="post">
								<div class="form-group">
									<label>PG Name:</label> <input type="text" name="pgname"
										placeholder="enter your PGname"> <br> <br>
									User:<select name="userId">
										<option>---------Select User----</option>
										<c:forEach items="${users}" var="u">
											<option value="${u.userId}">${u.firstName}</option>

										</c:forEach>

									</select> <br> <br> <label>PGAddress:</label>

									<textarea id="textarea" rows="5" cols="30" name="pgaddress"></textarea>
									<br> <br> <label>PGLongitude:</label><input
										type="text" name="pglongitude"><br> <br> <label>PGLatitude:</label><input
										type="text" name="pglattitude"><br> <br> <label>Phone
										no:</label><input type="text" name="phno"><br> <br>
									For whom:<select name="forwhom">
										<option>---select---</option>
										<option>For only Boys</option>
										<option>For only Girls</option>
										<option>For Boys and Girls Both</option>

									</select> <br> <br> <label>city:</label><input type="text"
										name="city"><br> <br> <label>State:</label><input
										type="text" name="state"><br> <br> <label>
										Country:</label><input type="text" name="country"><br> <br>
									<label> Is Available:</label><input type="text"
										name="isavailable"><br> <br> <label>Subscription:</label>
									<select name="subid">
										<option>----Select Plan----</option>
										<c:forEach items="${subscriptions}" var="s">
											<option value="${s.subid}">${s.timeduration}
												${s.amount} Rs.</option>

										</c:forEach>

									</select> <br> <br> <label>Created on:</label>
									<input type="text" name="createdon"><br>
									<br>



								</div>
								<button type="submit" class="btn btn-gradient-primary me-2">Add Pg</button>

								<!--        <button class="btn btn-light">Cancel</button>-->
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>







































