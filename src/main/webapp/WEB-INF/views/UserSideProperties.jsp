<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Properties</title>

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
				<div class="col-12">
					<div class="section-heading wow fadeInUp">
						<h2>Featured Properties</h2>
						
					</div>
				</div>
			</div>

			<div  style="display:inline-grid;grid-template-columns:30% 30% 30%;column-gap:5%;
			grid-auto-rows:1fr;
			">

			
						<c:forEach items="${rate}" var="r">
							<!-- Single Featured Property 
							class="row"
							class="col-3 col-md-6 col-xl-4"
							-->
					<div class="single-featured-property mb-50 wow fadeInUp"
						data-wow-delay="100ms" style="border:solid 1px red;" >
						<!-- Property Thumbnail -->
						<div class="property-thumb">
						
							<img src="/assets3/img/bg-img/6.jpg" alt="">

							<div class="tag">
								<span>For rent</span>
							</div>
							<!-- <div class="list-price">
								<p>$945 679</p>
							</div>  -->
						</div>
						<!-- Property Content -->
						<div class="property-content" >

							
								<h5>${r.pgname}</h5>
								<p class="location">
									<img src="/assets3/img/icons/location.png" alt="">${r.pgaddress}
								</p>
								<p>Integer nec bibendum lacus. Suspendisse dictum enim sit
									amet libero malesuada.</p>
									
									
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
								
									
									</table>
									
									
									<div
								class="property-meta-data d-flex align-items-end justify-content-between">
								<div class="new-tag">
									<img src="/assets3/img/icons/new.png" alt="">
								</div>
								<div class="bathroom">
									<img src="/assets3/img/icons/bathtub.png" alt=""> <span>2</span>
								</div>
								<div class="garage">
									<img src="/assets3/img/icons/garage.png" alt=""> <span>2</span>
								</div>
								<div class="space">
									<img src="/assets3/img/icons/space.png" alt=""> <span>120
										sq ft</span>
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
						<a href="customerdashboard" class="btn south-btn mt-50 wow fadeInUp"
							data-wow-delay="500ms">Search</a>
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



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

	 <script src="//geodata.solutions/includes/countrystatecity.js"></script> 








</body>
</html>