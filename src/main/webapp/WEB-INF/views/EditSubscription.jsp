<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Edit Plan</title>
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
		<!-- partial -->
		<div
			class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="AdminSideBar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title"></h3>
					</div>



					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">


									<!-- 	<h4 class="card-title"></h4> -->

									<form action="updateplan" method="post">
										<input type="hidden" value="${sub.subid}" name="subid" />
										<div class="form-group">

											OfferName : <input type="text" name="offername"
												placeholder="enter offername" value="${sub.offername}" required/><br>
											<Br> 
											Time Duration: 
											<select name="timeduration" value="${sub.timeduration }" required>
												<option value="">Select Duration</option>
												<option value="1">1 Month</option>
												<option value="2">2 Month</option>
												<option value="3">3 Month</option>
												<option value="4">4 Month</option>
												<option value="5">5 Month</option>
												<option value="6">6 Month</option>
												<option value="7">7 Month</option>
												<option value="8">8 Month</option>
												<option value="9">9 Month</option>
												<option value="10">10 Month</option>
												<option value="11">11 Month</option>
												<option value="12">12 Month</option>								
											</select>
					<br><br>
							Amount:                 <input type="number" name="amount"
								placeholder="enter appropriate amount for above time-duration"
								min=0 required	value="${sub.amount }"					>
								
								<br>
								<br> <Br>
OfferDescription: <textarea name="offerdescription" wrap="soft" rows="10" cols="50" required>${sub.offerdescription }</textarea><br>
							<br>
							

										</div>
										<button type="submit" class="btn btn-gradient-primary me-2">Update
											Offer</button>

										<button class="btn btn-light">Cancel</button>
									</form>






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
</body>





</html>


<!-- 


<form action="updateplan" method="post" >
		<input type="hidden" value="${sub.subid}" name="subid"/>   <!-- we have to upadate only rolename through roleid so, we have kept roleid type as hidden -->
<!-- 	Time-Duration : <input type="text" name="timeduration" value="${sub.timeduration}"/><br><Br>
		Amount : <input type="text" name="amount" value="${sub.amount}"/>
		<input type="submit" value="Update plan"/>
	</form> -->