<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage PG</title>

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
				<div class="page-header"></div>

				<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        
        <div class="col-md-10 border-right">
            <div class="p-3 py-10">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Manage PG Details</h4>
                </div>
                
                
                <form action="updatepgdetail" method="post">
                <input type="hidden" value="${pg.pgid}" name="pgid" />
                
                <div class="row mt-3">
                    <div class="col-md-15"><label class="labels">PG Name</label><input type="text" class="form-control" placeholder="" value="${pg.pgname}" name="pgname"></div>
                    
                </div>
                 
                 <div class="row mt-3">
                	<div class="col-md-15"><label class="labels">PG Address</label><textarea id="textarea" rows="5" cols="80" name="pgaddress" placeholder="" value="${pg.pgaddress}"></textarea></div>
				</div>                
                
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">PG Lattitude</label><input type="text" class="form-control" placeholder="" name="pglattitude" value="${pg.pglattitude}"></div>
                      <div class="col-md-6"><label class="labels">PG Longitude</label><input type="text" class="form-control" placeholder="" name="pglongitude" value="${pg.pglongitude}"></div>
                </div>
                
                
                 <div class="row mt-3">
                    <div class="col-md-15"><label class="labels">PG Phone No.</label><input type="text" class="form-control" placeholder="" value="${pg.phno}" name="phno"></div>
                    
                </div>
                 
                 
                  <div class="row mt-3">
                    <div class="col-md-15"><label class="labels">For Whom</label><br><select name="forwhom" class="form-select" aria-label="Default select example">
										<option>select anyone category</option>
										<option>For only Boys</option>
										<option>For only Girls</option>
										<option>For Boys and Girls Both</option>

									</select> </div>
                    
                </div>
                
                
                <div class="row mt-2">
                    <div class="col-md-4"><label class="labels">City</label><input type="text" class="form-control" placeholder="" name="city" value="${pg.city}"></div>
                    <div class="col-md-4"><label class="labels">State</label><input type="text" class="form-control" placeholder="" name="state" value="${pg.state}"></div>
                    <div class="col-md-4"><label class="labels">Country</label><input type="text" class="form-control" placeholder="" name="country" value="${pg.country}"></div>
                </div>
                
                
                <div class="row mt-3">
                    <div class="col-md-15"><label class="labels">Is Available</label><input type="text" class="form-control" placeholder="" value="${pg.isavailable}" name="isavailable"></div>
                    
                </div>
                
                
                <div class="row mt-3">
                    <div class="col-md-15"><label class="labels">Subscription</label><br><select name="subid" class="form-select" aria-label="Default select example">
										<option>select anyone Subscription plan</option>
										<c:forEach items="${subscription}" var="s">
									<option value="${s.subid}">${s.offername}  :  ${s.timeduration}  :  ${s.amount}</option>
								</c:forEach>

									</select> </div>
                    
                </div>
                   
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Save PG Profile</button></div>
            </div>
        </div>
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