<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer DashBoard</title>

<jsp:include page="UserSideCss.jsp"></jsp:include>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">



<style>
body {
	margin: 0;
	padding: 0;
}

.header {
	height: 100vh;
	font-family: sans-serif;
}

.hide {
	display:;
}

.myDIV:hover+.hide {
	display: block;
	color: red;
}
</style>




<!-- 









 -->

























</head>
<body>
	<!-- <h1>Customer Dashboard</h1> -->

	<jsp:include page="UserSideheader.jsp"></jsp:include>
	<!-- ##### Hero Area Start ##### -->
	<section class="hero-area">
		<div class="hero-slides owl-carousel">
			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(/assets3/img/bg-img/hero1.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12">
							<div class="hero-slides-content">
								<h2 data-animation="fadeInUp" data-delay="100ms">Find your
									home</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(/assets3/img/bg-img/hero2.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12">
							<div class="hero-slides-content">
								<h2 data-animation="fadeInUp" data-delay="100ms">Find your
									dream house</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Single Hero Slide -->
			<div class="single-hero-slide bg-img"
				style="background-image: url(/assets3/img/bg-img/hero3.jpg);">
				<div class="container h-100">
					<div class="row h-100 align-items-center">
						<div class="col-12">
							<div class="hero-slides-content">
								<h2 data-animation="fadeInUp" data-delay="100ms">Find your
									perfect house</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Hero Area End ##### -->

	<!-- ##### Advance Search Area Start ##### -->
	<div class="south-search-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="advanced-search-form">
						<!-- Search Title -->
						<div class="search-title">
							<p>Search for your home</p>
						</div>
						<!-- Search Form -->


						<form action="result" method="post">
							<div class="row">


								<div class="col-12 col-md-4 col-lg-4">
									<div class="form-group">
										<select name="country" class="countries form-control"
											id="countryId">
											<option value="">Select Country</option>
											<option value="india">India</option>

										</select>
									</div>
								</div>



								<div class="col-12 col-md-4 col-lg-4">
									<div class="form-group">
										<select name="state" class="states form-control" id="stateId">
											<option value="">Select State</option>
											<option value="Gujarat">Gujarat</option>
										</select>


									</div>
								</div>

								<div class="col-12 col-md-4 col-lg-4">
									<div class="form-group">
										<select name="city" class="cities form-control" id="cityId">
											<option value="">Select City</option>
											<option value="Ahmedabad">Ahmedabad</option>
											<option value="Surat">Surat</option>
											<option value="Rajkot">Rajkot</option>
										</select>
									</div>
								</div>

								<div class="col-12 col-md-4 col-lg-9">
									<!-- 		<div class="d-flex">
										<input type="input" class="form-control" name="input"
											placeholder="Enter Area">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
									<button type="submit" class="button"
										style="background-color: #947054; border: none; border-radius: 5px; color: white; width: 150px; height: 35px;">Search</button>

								</div>

							</div>
							</form>

							<!-- 		<div class="col-12 col-md-4 col-xl-3">
									<div class="form-group">
										<select class="form-control" id="listings">
											<option>All Listings</option>
											<option>Listings 1</option>
											<option>Listings 2</option>
											<option>Listings 3</option>
											<option>Listings 4</option>
											<option>Listings 5</option>
										</select>
									</div>
								</div> -->

							<!-- <div class="col-12 col-md-4 col-xl-2">
									<div class="form-group">
										<select class="form-control" id="bedrooms">
											<option>Bedrooms</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5+</option>
										</select>
									</div>
								</div> -->

							<!-- 		<div class="col-12 col-md-4 col-xl-2">
									<div class="form-group">
										<select class="form-control" id="bathrooms">
											<option>Bathrooms</option>
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5+</option>
										</select>
									</div>
								</div> -->

							<!-- 	<div class="col-12 col-md-8 col-lg-12 col-xl-5 d-flex">
									
									<div class="slider-range">
										<div data-min="120" data-max="820" data-unit=" sq. ft"
											class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
											data-value-min="120" data-value-max="820">
											<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
											<span class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0"></span> <span
												class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0"></span>
										</div>
										<div class="range">120 sq. ft - 820 sq. ft</div>
									</div> -->

							<!-- Distance Range -->
							<!-- 	<div class="slider-range">
										<div data-min="10" data-max="1300" data-unit=" mil"
											class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
											data-value-min="10" data-value-max="1300">
											<div class="ui-slider-range ui-widget-header ui-corner-all"></div>
											<span class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0"></span> <span
												class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0"></span>
										</div>
										<div class="range">10 mil - 1300 mil</div>
									</div>
								</div> -->

							<!-- 		<div class="col-12 search-form-second-steps">
									<div class="row">

										<div class="col-12 col-md-4 col-lg-3">
											<div class="form-group">
												<select class="form-control" id="types">
													<option>All Types</option>
													<option>Apartment <span>(30)</span></option>
													<option>Land <span>(69)</span></option>
													<option>Villas <span>(103)</span></option>
												</select>
											</div>
										</div> -->

							<!-- 		<div class="col-12 col-md-4 col-lg-3">
											<div class="form-group">
												<select class="form-control" id="catagories2">
													<option>All Catagories</option>
													<option>Apartment</option>
													<option>Bar</option>
													<option>Farm</option>
													<option>House</option>
													<option>Store</option>
												</select>
											</div>
										</div> -->

							<!-- 		<div class="col-12 col-md-4 col-lg-3">
											<div class="form-group">
												<select class="form-control" id="Actions">
													<option>All Actions</option>
													<option>Sales</option>
													<option>Booking</option>
												</select>
											</div>
										</div> -->

							<!-- 			<div class="col-12 col-md-4 col-lg-3">
											<div class="form-group">
												<select class="form-control" id="city2">
													<option>All City</option>
													<option>City 1</option>
													<option>City 2</option>
													<option>City 3</option>
												</select>
											</div>
										</div> -->

							<!-- 		<div class="col-12 col-md-4">
											<div class="form-group">
												<select class="form-control" id="Actions3">
													<option>All Actions</option>
													<option>Sales</option>
													<option>Booking</option>
												</select>
											</div>
										</div> -->

							<!-- 	<div class="col-12 col-md-4">
											<div class="form-group">
												<select class="form-control" id="city3">
													<option>All City</option>
													<option>City 1</option>
													<option>City 2</option>
													<option>City 3</option>
												</select>
											</div>
										</div> -->

							<!-- <div class="col-12 col-md-4">
											<div class="form-group">
												<select class="form-control" id="city5">
													<option>All City</option>
													<option>City 1</option>
													<option>City 2</option>
													<option>City 3</option>
												</select>
											</div>
										</div> -->
					</div>
					
				</div>

				<div class="col-12 d-flex justify-content-between align-items-end">
					<!-- More Filter -->
					<!-- 	<div class="more-filter">
										<a href="#" id="moreFilter">+ More filters</a>
									</div> -->
					<!-- Submit -->
					<!-- <div class="form-group mb-0">
										<button type="submit" class="btn south-btn">Search</button>
									</div> -->



				</div>
			</div>
			</form>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!-- ##### Advance Search Area End ##### -->

	<!-- ##### Featured Properties Area Start ##### -->


	<section class="featured-properties-area section-padding-100-50">
		<div class="container">
			<div class="row">
				<div class="col-10">
					<div class="section-heading wow fadeInUp">
						<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Featured
							Properties</h2>

					</div>
				</div>
			</div>

			<div
				style="display: inline-grid; grid-template-columns: 30% 30% 30%; column-gap: 5%; grid-auto-rows: 1fr;">


			
				 <c:forEach items="${rate}" var="r">
			
						


						<div class="single-featured-property mb-50 wow fadeInUp"
							data-wow-delay="100ms" style="border: solid 1px red;">
							<!-- Property Thumbnail -->



							<div class="property-thumb" class="carousel slide"
								data-ride="carousel">


								<!-- 	<img src="/assets3/img/bg-img/6.jpg" alt=""> -->

								<img src="${r.mainimgurl}" alt="imagee" width="400" height="400">

								<div class="tag">
									<span>For rent</span>
								</div>
								<!-- <div class="list-price">
								<p>$945 679</p>
							</div>  -->
							</div>
							<!-- Property Content -->
							<div class="property-content">


								<h5>${r.pgname}</h5>
								<p class="location">
									<img src="/assets3/img/icons/location.png" alt="" width="500"
										height="600">${r.pgaddress}&nbsp;&nbsp;${r.city}
								</p>


								<!--  -->
								<p>More reliable and confortable place to stay on rent.</p>


								<table>

									<tr>
										<td>OneSharing</td>
										<td>${r.onesharing}</td>
									</tr>

									<tr>
										<td>TwoSharing</td>
										<td>${r.twosharing}</td>
									</tr>

									<tr>
										<td>ThreeSharing</td>
										<td>${r.threesharing}</td>
									</tr>

									<tr>
										<td>FourSharing</td>
										<td>${r.foursharing}</td>
									</tr>

									<tr>
										<td>phoneno</td>
										<td>${r.phno}</td>
									</tr>

								</table>

								<br>
								<br>
								<div
									class="property-meta-data d-flex align-items-end justify-content-between">
									<div class="new-tag">
										<!-- <img src="/assets3/img/icons/new.png" alt=""> -->
										<div class="myDIV">
											<img src="/assets3/img/icons/wifiimg.jpg" alt="cfd" width="5"
												height="5">
										</div>
										<div class="hide">Wi-fi</div>
									</div>
									<div class="new-tag">

										<img src="/assets3/img/icons/air-conditioner.jpg" alt="cfd"
											width="5" height="5">
									</div>
									<div class="new-tag">
										<img src="/assets3/img/icons/food.png" alt="cfd" width="5"
											height="5">
									</div>
									<div class="new-tag">
										<img src="/assets3/img/icons/cleaning.png" alt="" width="5"
											height="20">
									</div>
								</div>



							</div>


						</div>
				</c:forEach>

			</div>
		</div>
	</section>





	<!-- ##### Featured Properties Area End ##### -->

	<!-- ##### Call To Action Area Start ##### -->
	<section class="call-to-action-area bg-fixed bg-overlay-black"
		style="background-image: url(/assets3/img/bg-img/cta.jpg)">
		<div class="container h-100">
			<div class="row align-items-center h-100">
				<div class="col-12">
					<div class="cta-content text-center">
						<h2 class="wow fadeInUp" data-wow-delay="300ms">Are you
							looking for a place to rent?</h2>
						<!-- 		<h6 class="wow fadeInUp" data-wow-delay="400ms">Suspendisse
							dictum enim sit amet libero malesuada feugiat.</h6>   -->
						<a href="customerdashboard"
							class="btn south-btn mt-50 wow fadeInUp" data-wow-delay="500ms">Search</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Call To Action Area End ##### -->

	<!-- ##### Testimonials Area Start ##### -->
	<section class="south-testimonials-area section-padding-100">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-heading wow fadeInUp" data-wow-delay="250ms">
						<h2>Client Review</h2>

					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<div class="testimonials-slides owl-carousel wow fadeInUp"
						data-wow-delay="500ms">

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="/assets3/img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="/assets3/img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>

						<!-- Single Testimonial Slide -->
						<div class="single-testimonial-slide text-center">
							<h5>Perfect Home for me</h5>
							<p>Etiam nec odio vestibulum est mattis effic iturut magna.
								Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum
								est mattis effic iturut magna. Pellentesque sit am et tellus
								blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est
								mat tis effic iturut magna.</p>

							<div class="testimonial-author-info">
								<img src="/assets3/img/bg-img/feature6.jpg" alt="">
								<p>
									Daiane Smith, <span>Customer</span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Testimonials Area End ##### -->

	<!-- ##### Editor Area Start ##### -->
	<!-- 	<section class="south-editor-area d-flex align-items-center">
		
		<div class="editor-content-area">
			
			<div class="section-heading wow fadeInUp" data-wow-delay="250ms">
				<img src="/assets3/img/icons/prize.png" alt="">
				<h2>jeremy Scott</h2>
				<p>Realtor</p>
			</div>
			<p class="wow fadeInUp" data-wow-delay="500ms">Etiam nec odio
				vestibulum est mattis effic iturut magna. Pellentesque sit amet
				tellus blandit. Etiam nec odiomattis effic iturut magna.
				Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.
				Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur
				rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu
				varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id.
				Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna
				vehicula.</p>
			<div class="address wow fadeInUp" data-wow-delay="750ms">
				<h6>
					<img src="assets3/img/icons/phone-call.png" alt=""> +45 677
					8993000 223
				</h6>
				<h6>
					<img src="assets3/img/icons/envelope.png" alt="">
					office@template.com
				</h6>
			</div>
			<div class="signature mt-50 wow fadeInUp" data-wow-delay="1000ms">
				<img src="assets3/img/core-img/signature.png" alt="">
			</div>
		</div>

		<div class="editor-thumbnail">
			<img src="assets3/img/bg-img/editor.jpg" alt="">
		</div>
	</section>   -->
	<!-- ##### Editor Area End ##### -->

	<!-- ##### Footer Area Start ##### -->

	<jsp:include page="UserSideFooter.jsp"></jsp:include>


	<!-- ##### Footer Area End ##### -->

	<jsp:include page="UserSideAllJs.jsp"></jsp:include>



	<!--  	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

	 <script src="//geodata.solutions/includes/countrystatecity.js"></script> 



<!-- <script>

function loadModules(){
	let projectId = $("#projectId")[0].value 
	
	
	$("#moduleId").empty(); 
	
	$.get("getmodulesbyproject",{projectId:projectId}).done(function(data){
			console.log(data); 
			console.log(data[0]); 
            for(let i=0;i<data.length;i++){ 
				$("#moduleId").append($("<option     />").val(data[i].moduleId).text(data[i].moduleName));
            }
            
	 });
}


</script> -->






</body>
</html>