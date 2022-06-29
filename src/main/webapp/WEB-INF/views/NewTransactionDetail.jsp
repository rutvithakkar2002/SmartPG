<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Transaction Detail</title>
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
						
						
					</div>
					
					
					
					
					<form method="post" action="savetransactiondetail">

						User id:<select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select><br> <br> payment Id:<select name="paymentid">
							<option>--------Select Payment----------</option>
							<c:forEach items="${payment}" var="p">
								<option value="${p.paymentid}">${p.paymentid}</option>

							</c:forEach>
						</select><br> <br> Transaction for:<input type="text"
							name="transactionfor"><br> <br> Amount Paid:<input
							type="text" name="amountpaid"><br> <br> Mode Of
						Payment:<input type="text" name="modeofpayment"><br>
						<br> Date And Time:<input type="text" name="dateandtime"><br>
						<br> Payment Gateway Used:<input type="text"
							name="paymentgatewayused"><br> <br> <input
							type="submit" value="submit"> <br> <br>
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
	<!-- End custom js for this page -->
	
	
	
	
</body>
</html>










<!-- 



<form method="post" action="savetransactiondetail">

User id:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${p.city} </option> 

</c:forEach>
</select><br><br>
payment Id:<select name="paymentid">
<option>--------Select Payment----------</option>
<c:forEach items="${payment}" var="p">
<option value="${p.paymentid}">${p.paymentid}</option> 

</c:forEach>
</select><br><br>
Transaction for:<input type="text" name="transactionfor"><br><br>
Amount Paid:<input type="text" name="amountpaid"><br><br>
Mode Of Payment:<input type="text" name="modeofpayment"><br><br>
Date And Time:<input type="text" name="dateandtime"><br><br>
Payment Gateway Used:<input type="text" name="paymentgatewayused"><br><br>
<input type="submit" value="submit">
<br><br>
</form>








 -->


<!-- 
 
 				<form method="post" action="savetransactiondetail">

<label>User id:</label><select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${p.city} </option> 

</c:forEach>
</select><br><br>
<label>payment Id:</label><select name="paymentid">
<option>--------Select Payment----------</option>    
<c:forEach items="${payment}" var="p">
<option value="${p.paymentid}">${p.paymentid}</option> 

</c:forEach>
</select><br><br>
<label>Transaction for:</label><input type="text" name="transactionfor"><br><br>
Amount Paid:<input type="text" name="amountpaid"><br><br>
Mode Of Payment:<input type="text" name="modeofpayment"><br><br>
Date And Time:<input type="text" name="dateandtime"><br><br>
Payment Gateway Used:<input type="text" name="paymentgatewayused"><br><br>
<input type="submit" value="submit">
<br><br>
</form>
 
 
 
 
 
 
 
  -->
  
  
  
  
  
  <!-- 
  
  
 
  
 -->
 
 
 
 <!-- 
 
 
 
 <form method="post" action="savetransactiondetail">

						User id:<select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select><br> <br> payment Id:<select name="paymentid">
							<option>--------Select Payment----------</option>
							<c:forEach items="${payment}" var="p">
								<option value="${p.paymentid}">${p.paymentid}</option>

							</c:forEach>
						</select><br> <br> Transaction for:<input type="text"
							name="transactionfor"><br> <br> Amount Paid:<input
							type="text" name="amountpaid"><br> <br> Mode Of
						Payment:<input type="text" name="modeofpayment"><br>
						<br> Date And Time:<input type="text" name="dateandtime"><br>
						<br> Payment Gateway Used:<input type="text"
							name="paymentgatewayused"><br> <br> <input
							type="submit" value="submit"> <br> <br>
					</form>
  -->
  
  <!-- 
  <form method="post" action="savetransactiondetail">

						User id:<select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select><br> <br> payment Id:<select name="paymentid">
							<option>--------Select Payment----------</option>
							<c:forEach items="${payment}" var="p">
								<option value="${p.paymentid}">${p.paymentid}</option>

							</c:forEach>
						</select><br> <br> Transaction for:<input type="text"
							name="transactionfor"><br> <br> Amount Paid:<input
							type="text" name="amountpaid"><br> <br> Mode Of
						Payment:<input type="text" name="modeofpayment"><br>
						<br> Date And Time:<input type="text" name="dateandtime"><br>
						<br> Payment Gateway Used:<input type="text"
							name="paymentgatewayused"><br> <br> <input
							type="submit" value="submit"> <br> <br>
					</form>
  
					
   -->