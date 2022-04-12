<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Edit PG Rate</title>
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
			<jsp:include page="AdminSideBar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>
							</span> Edit PG Rate
						</h3>
					</div>



					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">


									<!-- 	<h4 class="card-title"></h4> -->


								
						<form action="updatepgrate" method="post">
										<input type="hidden" value="${rate.pgrateid}" name="pgrateid" />

										Onesharing : <input type="text" name="onesharing"
											value="${rate.onesharing }" /><br>
										<Br> Twosharing : <input type="text" name="twosharing"
											value="${rate.twosharing }" /><br>
										<Br> Threesharing : <input type="text"
											name="threesharing" value="${rate.threesharing }" /><br>
										<Br> Foursharing : <input type="text" name="foursharing"
											value="${rate.foursharing }" /><br>
										<Br> <input type="submit" value="Update PGRate" />
									</form>
 
 
 
 			
 
								
								
								
								
								
								
								
								
								
								
								
								
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
	

	
	
	
	
	
</body>
</html>



<!-- 






<form action="updatepgrate" method="post" >
		<input type="hidden" value="${rate.pgrateid}" name="pgrateid"/> 
		
		Onesharing : <input type="text" name="onesharing" value="${rate.onesharing }"/><br><Br>
		Twosharing : <input type="text" name="twosharing" value="${rate.twosharing }"/><br><Br>
		Threesharing : <input type="text" name="threesharing" value="${rate.threesharing }"/><br><Br>
		Foursharing : <input type="text" name="foursharing" value="${rate.foursharing }"/><br><Br>
		<input type="submit" value="Update PGRate"/>
	</form>


 -->
 
 
 
 
 <!-- 
 
 
 <form action="updatepgrate" method="post">
										<input type="hidden" value="${rate.pgrateid}" name="pgrateid" />

										Onesharing : <input type="text" name="onesharing"
											value="${rate.onesharing }" /><br>
										<Br> Twosharing : <input type="text" name="twosharing"
											value="${rate.twosharing }" /><br>
										<Br> Threesharing : <input type="text"
											name="threesharing" value="${rate.threesharing }" /><br>
										<Br> Foursharing : <input type="text" name="foursharing"
											value="${rate.foursharing }" /><br>
										<Br> <input type="submit" value="Update PGRate" />
									</form>
 
 
 
 
 
  -->