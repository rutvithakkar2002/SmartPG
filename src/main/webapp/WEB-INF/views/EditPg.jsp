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
					


					<form action="updatepg" method="post">
						<input type="hidden" value="${pg.pgid}" name="pgid" />

						<div class="form-group">
							 PG Name : <input type="text" name="pgname"
								value="${pg.pgname }" /><br>
							<br> PGAddress:
							<textarea id="textarea" rows="5" cols="30" name="pgaddress"
								value="">${pg.pgaddress }</textarea>
							<br>
							<br> <br> PG Lattitude : <input type="text"
								name="pglattitude" value="${pg.pglattitude }" /><br> <br>
							PG Longitude : <input type="text" name="pglongitude"
								value="${pg.pglongitude }" /><br> <br> PG Phone No :
							<input type="text" name="phno" value="${pg.phno }" /><br> <br>
							For Whom: <input type="text" name="forwhom" value="${pg.forwhom}" /><br>
							<br> City : <input type="text" name="city"
								value="${pg.city }" /><br> <br> State : <input
								type="text" name="state" value="${pg.state }" /><br> <br>
							Country : <input type="text" name="country" value="${pg.country}" /><br>
							<br> Is Available : <input type="text" name="isavailable"
								value="${pg.isavailable }" /><br> <br> 
								Subscription:<select
								name="subid">
								<option>--------Select Subscription----------</option>
								<c:forEach items="${subscription}" var="s">
									<option value="${s.subid}">${s.timeduration}:${s.amount}</option>
								</c:forEach>
							</select> <br>

						</div>
						<button type="submit" class="btn btn-gradient-primary me-2">Update
							PG</button>

						<button class="btn btn-light">Cancel</button>
					</form>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

				<!-- partial -->
		 	</div>		
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	
	

</body>
</html>




<!-- 


<form action="updatepg" method="post">
		<input type="hidden" value="${pg.pgid}" name="pgid" />
		
		Pg Address:<select name="pgaddress">
			<option>--------Select PG----------</option>
			<c:forEach items="${pgs}" var="p">
				<option value="${p.pgid}">${p.pgaddress}:${p.city}</option>

			</c:forEach>
		</select> <br>
		<br> PGAddress:
		<textarea id="textarea" rows="5" cols="30" name="pgaddress"
			value="${pg.pgaddress }"></textarea>
		<br>
		<br> PG Lattitude : <input type="text" name="pglattitude"
			value="${pg.pglattitude }" /><br>
		<br> PG Longitude : <input type="text" name="pglongitude"
			value="${pg.pglongitude }" /><br>
		<br> PG Phone No : <input type="text" name="phno"
			value="${pg.phno }" /><br>
		<br> For Whom: <input type="text" name="forwhom"
			value="${pg.forwhom}" /><br>
		<br> city : <input type="text" name="city" value="${pg.city }" /><br>
		<br> State : <input type="text" name="state" value="${pg.state }" /><br>
		<br> Country : <input type="text" name="country"
			value="${pg.country}" /><br>
		<br> Is Available : <input type="text" name="isavailable"
			value="${pg.isavailable }" /><br>
		<br> subid:<select name="subscription">
			<option>--------Select Subscription----------</option>
			<c:forEach items="${subscription}" var="s">
				<option value="${s.subid}">${s.timeduration}:${s.amount}</option>

			</c:forEach>
		</select> <br>
		<br> <input type="submit" value="Update PG" />
	</form>


 -->
 
 
 
 
 
 <!-- 
 
 
 
 <div class="main-panel">
				<div class="content-wrapper">
					


					<form action="updatepg" method="post">
						<input type="hidden" value="${pg.pgid}" name="pgid" />

						<div class="form-group">
							 PG Name : <input type="text" name="pgname"
								value="${pg.pgname }" /><br>
							<br> PGAddress:
							<textarea id="textarea" rows="5" cols="30" name="pgaddress"
								value="">${pg.pgaddress }</textarea>
							<br>
							<br> <br> PG Lattitude : <input type="text"
								name="pglattitude" value="${pg.pglattitude }" /><br> <br>
							PG Longitude : <input type="text" name="pglongitude"
								value="${pg.pglongitude }" /><br> <br> PG Phone No :
							<input type="text" name="phno" value="${pg.phno }" /><br> <br>
							For Whom: <input type="text" name="forwhom" value="${pg.forwhom}" /><br>
							<br> City : <input type="text" name="city"
								value="${pg.city }" /><br> <br> State : <input
								type="text" name="state" value="${pg.state }" /><br> <br>
							Country : <input type="text" name="country" value="${pg.country}" /><br>
							<br> Is Available : <input type="text" name="isavailable"
								value="${pg.isavailable }" /><br> <br> 
								Subscription:<select
								name="subid">
								<option>--------Select Subscription----------</option>
								<c:forEach items="${subscription}" var="s">
									<option value="${s.subid}">${s.timeduration}:${s.amount}</option>
								</c:forEach>
							</select> <br>

						</div>
						<button type="submit" class="btn btn-gradient-primary me-2">Update
							PG</button>

						<button class="btn btn-light">Cancel</button>
					</form>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->

				<!-- partial -->
		<!-- 	</div>-->
 
 
 
 
 
 
 
 
 
 
 
 
 
 