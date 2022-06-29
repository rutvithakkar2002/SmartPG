<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Pg owner profile</title>

<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
<div class="container-scroller">

		<div class="row p-0 m-0 proBanner d-flex" >

			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					
							<jsp:include page="PgHeader.jsp"></jsp:include>
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
							</span> Change Display Pic
						</h3>
					</div>



					<div class="page-body">
										<div class="row">
											<div class="col-sm-10">
												<div class="card">
													<div class="card-header">
														<h5>Update Display Pic</h5>
													</div>
													<div class="card-block">
 														<form action="saveprofile" method="post" enctype="multipart/form-data">

															<div class="form-group row">
																<label class="col-sm-2 col-form-label">&nbsp;&nbsp;&nbsp;ProfilePic:</label>
																<div class="col-sm-8">
																	<input type="file" name="imgurl"
																		class="form-control">
																</div>
															</div>


																			
														<input type="submit" class="btn btn-primary" value="Upload"/>
														<input type="reset" class="btn btn-danger" value="Clear"/>


														</form>


													</div>
												</div>
											</div>
										</div>

									</div>
								</div>

								<div id="styleSelector"></div>
							</div>
						</div>


					</div>
					<!-- pcoded wrapper -->
				</div>
				<!-- pcoded main container -->
			</div>
			<!-- pcoded-navwrap -->
		</div>
	<!-- container-scroller -->
	<jsp:include page="AllJs.jsp"></jsp:include>
	

	
	

</body>
</html>