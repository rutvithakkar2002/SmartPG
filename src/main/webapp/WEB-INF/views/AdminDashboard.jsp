<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>Admin Side</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>


<body>

	<div class="container-scroller">

		<div class="row p-0 m-0 proBanner d-flex" id="proBanner">
		
			<div class="col-md-12 p-0 m-0">
				<div
					class="card-body card-body-padding d-flex align-items-center justify-content-between">
					<div class="ps-lg-1">
						<div class="d-flex align-items-center justify-content-between">
							<p class="mb-0 font-weight-medium me-3 buy-now-text">Free
								24/7 customer support, updates, and more with this template!</p>
							<a
								href="https://www.bootstrapdash.com/product/purple-bootstrap-admin-template/?utm_source=organic&amp;utm_medium=banner&amp;utm_campaign=buynow_demo"
								target="_blank" class="btn me-2 buy-now-btn border-0">Get
								Pro</a>
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
		<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 d-flex flex-row fixed-top">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <h2 class="navbar-brand brand-logo">SMART pG fINDER</h2>
         </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
              </div>
            </form>
          </div>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="assets/images/faces/face1.jpg" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black">David Greymaax</p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-cached me-2 text-success"></i> Activity Log </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-logout me-2 text-primary"></i> Signout </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-email-outline"></i>
                <span class="count-symbol bg-warning"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                <h6 class="p-3 mb-0">Messages</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face4.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                    <p class="text-gray mb-0"> 1 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face2.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                    <p class="text-gray mb-0"> 15 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <img src="assets/images/faces/face3.jpg" alt="image" class="profile-pic">
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                    <p class="text-gray mb-0"> 18 Minutes ago </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">4 new messages</h6>
              </div>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-bs-toggle="dropdown">
                <i class="mdi mdi-bell-outline"></i>
                <span class="count-symbol bg-danger"></span>
              </a>
              <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                <h6 class="p-3 mb-0">Notifications</h6>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-success">
                      <i class="mdi mdi-calendar"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                    <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-warning">
                      <i class="mdi mdi-settings"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                    <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-info">
                      <i class="mdi mdi-link-variant"></i>
                    </div>
                  </div>
                  <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                    <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                    <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <h6 class="p-3 mb-0 text-center">See all notifications</h6>
              </div>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
              
            </li>
            
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper pt-0 proBanner-padding-top"> 
		<!-- partial:partials/_sidebar.html -->
		<jsp:include page="AdminSideBar.jsp"/>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="mdi mdi-home"></i>
							</span> Admin Dashboard
						</h3>
						<nav aria-label="breadcrumb">
							<ul class="breadcrumb">
								<li class="breadcrumb-item active" aria-current="page"><span></span>Overview
									<i
									class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
								</li>
							</ul>
						</nav>
					</div>
					<div class="row">
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-danger card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Weekly Sales <i
											class="mdi mdi-chart-line mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">$ 15,0000</h2>
									<h6 class="card-text">Increased by 60%</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-info card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Weekly Orders <i
											class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">45,6334</h2>
									<h6 class="card-text">Decreased by 10%</h6>
								</div>
							</div>
						</div>
						<div class="col-md-4 stretch-card grid-margin">
							<div class="card bg-gradient-success card-img-holder text-white">
								<div class="card-body">
									<img src="assets/images/dashboard/circle.svg"
										class="card-img-absolute" alt="circle-image">
									<h4 class="font-weight-normal mb-3">
										Visitors Online <i
											class="mdi mdi-diamond mdi-24px float-right"></i>
									</h4>
									<h2 class="mb-5">95,5741</h2>
									<h6 class="card-text">Increased by 5%</h6>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<div class="clearfix">
										<h4 class="card-title float-left">Visit And Sales
											Statistics</h4>
										<div id="visit-sale-chart-legend"
											class="rounded-legend legend-horizontal legend-top-right float-right">
											<ul>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(218, 140, 255, 1), rgba(154, 85, 255, 1))"></span>CHN</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>USA</li>
												<li><span class="legend-dots"
													style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>UK</li>
											</ul>
										</div>
									</div>
									<canvas id="visit-sale-chart"
										class="mt-4 chartjs-render-monitor"
										style="display: block; height: 223px; width: 447px;"
										width="670" height="334"></canvas>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="chartjs-size-monitor">
										<div class="chartjs-size-monitor-expand">
											<div class=""></div>
										</div>
										<div class="chartjs-size-monitor-shrink">
											<div class=""></div>
										</div>
									</div>
									<h4 class="card-title">Traffic Sources</h4>
									<canvas id="traffic-chart" width="427" height="213"
										style="display: block; height: 142px; width: 285px;"
										class="chartjs-render-monitor"></canvas>
									<div id="traffic-chart-legend"
										class="rounded-legend legend-vertical legend-bottom-left pt-4">
										<ul>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(54, 215, 232, 1), rgba(177, 148, 250, 1))"></span>Search
												Engines<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(6, 185, 157, 1), rgba(132, 217, 210, 1))"></span>Direct
												Click<span class="float-right">30%</span></li>
											<li><span class="legend-dots"
												style="background: linear-gradient(to right, rgba(255, 191, 150, 1), rgba(254, 112, 150, 1))"></span>Bookmarks
												Click<span class="float-right">40%</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Recent Tickets</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>Assignee</th>
													<th>Subject</th>
													<th>Status</th>
													<th>Last Update</th>
													<th>Tracking ID</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td><img src="assets/images/faces/face1.jpg"
														class="me-2" alt="image"></td>
													<td>Fund is not recieved</td>
													<td><label class="badge badge-gradient-success">DONE</label>
													</td>
													<td>Dec 5, 2017</td>
													<td>WD-12345</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face2.jpg"
														class="me-2" alt="image"> Stella Johnson</td>
													<td>High loading time</td>
													<td><label class="badge badge-gradient-warning">PROGRESS</label>
													</td>
													<td>Dec 12, 2017</td>
													<td>WD-12346</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face3.jpg"
														class="me-2" alt="image"> Marina Michel</td>
													<td>Website down for one week</td>
													<td><label class="badge badge-gradient-info">ON
															HOLD</label></td>
													<td>Dec 16, 2017</td>
													<td>WD-12347</td>
												</tr>
												<tr>
													<td><img src="assets/images/faces/face4.jpg"
														class="me-2" alt="image"> John Doe</td>
													<td>Loosing control on server</td>
													<td><label class="badge badge-gradient-danger">REJECTED</label>
													</td>
													<td>Dec 3, 2017</td>
													<td>WD-12348</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Recent Updates</h4>
									<div class="d-flex">
										<div
											class="d-flex align-items-center me-4 text-muted font-weight-light">
											<i class="mdi mdi-account-outline icon-sm me-2"></i> <span>jack
												Menqu</span>
										</div>
										<div
											class="d-flex align-items-center text-muted font-weight-light">
											<i class="mdi mdi-clock icon-sm me-2"></i> <span>October
												3rd, 2018</span>
										</div>
									</div>
									<div class="row mt-3">
										<div class="col-6 pe-1">
											<img src="assets/images/dashboard/img_1.jpg"
												class="mb-2 mw-100 w-100 rounded" alt="image"> <img
												src="assets/images/dashboard/img_4.jpg"
												class="mw-100 w-100 rounded" alt="image">
										</div>
										<div class="col-6 ps-1">
											<img src="assets/images/dashboard/img_2.jpg"
												class="mb-2 mw-100 w-100 rounded" alt="image"> <img
												src="assets/images/dashboard/img_3.jpg"
												class="mw-100 w-100 rounded" alt="image">
										</div>
									</div>
									<div class="d-flex mt-5 align-items-top">
										<img src="assets/images/faces/face3.jpg"
											class="img-sm rounded-circle me-3" alt="image">
										<div class="mb-0 flex-grow">
											<h5 class="me-2 mb-2">School Website - Authentication
												Module.</h5>
											<p class="mb-0 font-weight-light">It is a long
												established fact that a reader will be distracted by the
												readable content of a page.</p>
										</div>
										<div class="ms-auto">
											<i class="mdi mdi-heart-outline text-muted"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Project Status</h4>
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Due Date</th>
													<th>Progress</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Herman Beck</td>
													<td>May 15, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-success"
																role="progressbar" style="width: 25%" aria-valuenow="25"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Messsy Adam</td>
													<td>Jul 01, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-danger"
																role="progressbar" style="width: 75%" aria-valuenow="75"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>3</td>
													<td>John Richards</td>
													<td>Apr 12, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-warning"
																role="progressbar" style="width: 90%" aria-valuenow="90"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>4</td>
													<td>Peter Meggik</td>
													<td>May 15, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-primary"
																role="progressbar" style="width: 50%" aria-valuenow="50"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Edward</td>
													<td>May 03, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-danger"
																role="progressbar" style="width: 35%" aria-valuenow="35"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td>5</td>
													<td>Ronald</td>
													<td>Jun 05, 2015</td>
													<td>
														<div class="progress">
															<div class="progress-bar bg-gradient-info"
																role="progressbar" style="width: 65%" aria-valuenow="65"
																aria-valuemin="0" aria-valuemax="100"></div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 grid-margin stretch-card"></div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<footer class="footer">
					<div class="container-fluid d-flex justify-content-between">
						<span
							class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright
							© bootstrapdash.com 2021</span> <span
							class="float-none float-sm-end mt-1 mt-sm-0 text-end">
							Free <a
							href="https://www.bootstrapdash.com/bootstrap-admin-template/"
							target="_blank">Bootstrap admin template</a> from
							Bootstrapdash.com
						</span>
					</div>
				</footer>
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