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
			<jsp:include page="AdminSideBar.jsp" />
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header"></div>



 
								<form action="savesubscribedusers" method="post">
						<label>Userid:</label><select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select>
						
						
		<br>				
<%-- 						
<br><br>
PG Id:<select name="pgid">
								<option>----Select PG----</option>
								<c:forEach items="${pg}" var="p">
									<option value="${p.pgid}">${p.pgname} : ${p.pgaddress}</option>

								</c:forEach>
							</select><br>
					 --%>	
						
						
						<br> <label>subid:</label><select name="subid">
							<option>--------Select Subscription----------</option>
							<c:forEach items="${subscription}" var="s">
								<option value="${s.subid}">${s.offername}:${s.timeduration}:${s.amount}
								</option>

							</c:forEach>
						</select> <br>
						<br> <label>Start Date Of Subscription :</label> <input
							type="text" name="startdateofsub"
							value="${s.startdateofsubscription}" /><br>
						<Br> <label>End Date Of Subscription :</label> <input
							type="text" name="enddateofsub"
							value="${s.enddateofsubscription}" /><br>
						<Br> <input type="submit" value="Add Subscribed Users" /> <br>
						<br>
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



	<jsp:include page="AllJs.jsp"></jsp:include>
</body>

</html>



<!-- 


<h1>New SubScribed Users</h1>
<form action="savesubscribedusers" method="post" >
Userid:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email} </option> 

</c:forEach>
</select><br><br>
subid:<select name="subid">
<option>--------Select Subscription----------</option>
<c:forEach items="${subscription}" var="s">
<option value="${s.subid}">${s.timeduration}:${s.amount} </option> 

</c:forEach>
</select>
<br><br>
Start Date Of Subscription : <input type="text" name="startdateofsub" value="${s.startdateofsubscription}"/><br><Br>
End Date Of Subscription : <input type="text" name="enddateofsub" value="${s.enddateofsubscription}"/><br><Br>

<input type="submit" value="Add Subscribed Users"/>
<br><br>
</form>
 -->





<!-- 
 
 
 <h1>New SubScribed Users</h1>
<form action="savesubscribedusers" method="post" >
Userid:<select name="userId">
<option>--------Select User----------</option>
<c:forEach items="${user}" var="u">
<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email} </option> 

</c:forEach>
</select><br><br>
subid:<select name="subid">
<option>--------Select Subscription----------</option>
<c:forEach items="${subscription}" var="s">
<option value="${s.subid}">${s.timeduration}:${s.amount} </option> 

</c:forEach>
</select>
<br><br>
Start Date Of Subscription : <input type="text" name="startdateofsub" value="${s.startdateofsubscription}"/><br><Br>
End Date Of Subscription : <input type="text" name="enddateofsub" value="${s.enddateofsubscription}"/><br><Br>

<input type="submit" value="Add Subscribed Users"/>
<br><br>
</form>
 
  -->
  
  
  
  
  <!-- 
  
  
  	<form action="savesubscribedusers" method="post">
						<label>Userid:</label><select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select><br><br>
						
						
						
						PG Id:<select name="pgid">
								<option>----Select PG----</option>
								<c:forEach items="${pg}" var="p">
									<option value="${p.pgid}">${p.pgname} : ${p.pgaddress}</option>

								</c:forEach>
							</select><br>
						
						
						
						<br> <label>subid:</label><select name="subid">
							<option>--------Select Subscription----------</option>
							<c:forEach items="${subscription}" var="s">
								<option value="${s.subid}">${s.offername}:${s.timeduration}:${s.amount}
								</option>

							</c:forEach>
						</select> <br>
						<br> <label>Start Date Of Subscription :</label> <input
							type="text" name="startdateofsub"
							value="${s.startdateofsubscription}" /><br>
						<Br> <label>End Date Of Subscription :</label> <input
							type="text" name="enddateofsub"
							value="${s.enddateofsubscription}" /><br>
						<Br> <input type="submit" value="Add Subscribed Users" /> <br>
						<br>
					</form>

					
  
  
  
   -->
   
   <!-- 
   		
								<form action="savesubscribedusers" method="post">
						<label>Userid:</label><select name="userId">
							<option>--------Select User----------</option>
							<c:forEach items="${users}" var="u">
								<option value="${u.userId}">${u.firstName}:${u.lastName}:${u.email}
								</option>

							</c:forEach>
						</select><br><br>
						
						
						
						PG Id:<select name="pgid">
								<option>----Select PG----</option>
								<c:forEach items="${pg}" var="p">
									<option value="${p.pgid}">${p.pgname} : ${p.pgaddress}</option>

								</c:forEach>
							</select><br>
						
						
						
						<br> <label>subid:</label><select name="subid">
							<option>--------Select Subscription----------</option>
							<c:forEach items="${subscription}" var="s">
								<option value="${s.subid}">${s.offername}:${s.timeduration}:${s.amount}
								</option>

							</c:forEach>
						</select> <br>
						<br> <label>Start Date Of Subscription :</label> <input
							type="text" name="startdateofsub"
							value="${s.startdateofsubscription}" /><br>
						<Br> <label>End Date Of Subscription :</label> <input
							type="text" name="enddateofsub"
							value="${s.enddateofsubscription}" /><br>
						<Br> <input type="submit" value="Add Subscribed Users" /> <br>
						<br>
					</form>
								
   
    -->