<%@page import="com.bean.SubscriptionBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<title>Admin Side</title>
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
		<div class="container-fluid page-body-wrapper pt-0 proBanner-padding-top">
			<!-- partial:partials/_sidebar.html -->
			<jsp:include page="AdminSideBar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						
						
					</div>
					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total Users <i
											class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalusercount}</h2>
									
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Total PG<i
											class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">${totalpgcount}</h2>
					
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										TOtal Revenue<i
											class="mdi mdi-diamond mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">95,5741</h2>
									
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									
									
									  <canvas id="myChart" width="400" height="400"></canvas>

									
									
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
	<jsp:include page="AllJs.jsp"></jsp:include>
	<!-- End custom js for this page -->
	
	
	<script type="text/javascript" src="js/chart.js"></script>
	 <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	
	<%
	
		
		List<SubscriptionBean> plans = (List<SubscriptionBean>)request.getAttribute("plans");
		
	%>
	
	
    
 
    
    <script>
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: [
            	
            	<% for(SubscriptionBean s:plans){%>
				'<%=s.getOffername()%>',
			
			<%}%>
    		 	
            ],
            datasets: [{
                label: '# Offers-Users',
                data: [${totalsilverofferusers},${totalgoldenofferusers},${totaldiamondofferusers}],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });
    </script>
</body>

</html>