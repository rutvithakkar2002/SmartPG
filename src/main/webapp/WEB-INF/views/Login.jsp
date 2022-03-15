
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<%-- <html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<h1>Login form</h1>

<form action="login" method="POST" >
Email:<input type="text" name="email"><br><br>
Password:<input type="password" name="password"><br><br>
<input type="submit" value="Login">
</form>
${error}${msg}


<a href="signup">New User?</a> | 
<a href="forgetpassword">ForgetPassword</a>



</body>
</html> 
 --%>
<head>

<title>Login 10</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bo otstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/css/A.style.css.pagespeed.cf.eQk9-CoeFP.css">
<script defer=""
	src="/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0cmFja3MlMjIlM0ElNUIlNUQlMkMlMjJ0JTIyJTNBJTIyTG9naW4lMjAxMCUyMiUyQyUyMnclMjIlM0ExMjgwJTJDJTIyaCUyMiUzQTcyMCUyQyUyMmolMjIlM0E1NzclMkMlMjJlJTIyJTNBMTI4MCUyQyUyMmwlMjIlM0ElMjJodHRwcyUzQSUyRiUyRnByZXZpZXcuY29sb3JsaWIuY29tJTJGdGhlbWUlMkZib290c3RyYXAlMkZsb2dpbi1mb3JtLTIwJTJGJTIyJTJDJTIyciUyMiUzQSUyMmh0dHBzJTNBJTJGJTJGY29sb3JsaWIuY29tJTJGJTIyJTJDJTIyayUyMiUzQTI0JTJDJTIybiUyMiUzQSUyMlVURi04JTIyJTJDJTIybyUyMiUzQS0zMzAlN0Q="></script>
<script nonce="94d42271-b5d5-48c0-b6fe-f5747dcb81ae">(function(w,d){!function(a,e,t,r,z){a.zarazData=a.zarazData||{},a.zarazData.executed=[],a.zarazData.tracks=[],a.zaraz={deferred:[]};var s=e.getElementsByTagName("title")[0];s&&(a.zarazData.t=e.getElementsByTagName("title")[0].text),a.zarazData.w=a.screen.width,a.zarazData.h=a.screen.height,a.zarazData.j=a.innerHeight,a.zarazData.e=a.innerWidth,a.zarazData.l=a.location.href,a.zarazData.r=e.referrer,a.zarazData.k=a.screen.colorDepth,a.zarazData.n=e.characterSet,a.zarazData.o=(new Date).getTimezoneOffset(),a.dataLayer=a.dataLayer||[],a.zaraz.track=(e,t)=>{for(key in a.zarazData.tracks.push(e),t)a.zarazData["z_"+key]=t[key]},a.zaraz._preSet=[],a.zaraz.set=(e,t,r)=>{a.zarazData["z_"+e]=t,a.zaraz._preSet.push([e,t,r])},a.dataLayer.push({"zaraz.start":(new Date).getTime()}),a.addEventListener("DOMContentLoaded",(()=>{var t=e.getElementsByTagName(r)[0],z=e.createElement(r);z.defer=!0,z.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a.zarazData))),t.parentNode.insertBefore(z,t)}))}(w,d,0,"script");})(window,document);</script>
</head>

<body class="img js-fullheight" style="background-image: url(&quot;assets/images/xbg.jpg.pagespeed.ic.tiVxeakBSd.webp&quot;); height: 407px;">
<section class="ftco-section">
<div class="container">
<div class="row justify-content-center">

</div>
<div class="row justify-content-center	">
<div class="col-md-6 col-lg-4">
<div class="login-wrap p-0">
<h3 class="mb-4 text-center">Have an account?</h3>


<form action="login" method="POST" class="signin-form">
<div class="form-group">
<input type="text" name="email" class="form-control" placeholder="Enter Your Email" required>
</div>
<div class="form-group">
<input id="password-field" type="password" name="password" class="form-control" placeholder="Enter Password" required>
<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
</div>
<div class="form-group">
<button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
</div>


<!-- <a href="signup">New User?</a> | 
<a href="forgetpassword">ForgetPassword</a>   -->





<div class="form-group d-md-flex">
<div class="w-50">
<label class="checkbox-wrap checkbox-primary">Remember Me
<input type="checkbox" >
<span class="checkmark"></span>
</label>
</div>
</div>


${error}${msg}


<div class="form-group d-md-flex">
<div class="w-50 text-md-left">
<a href="forgetpassword" style="color: #fff">Forgot Password</a>
</div>


<div class="w-50 text-md-right">
<a href="newuser" style="color: #fff">New User?</a>
</div>
</div>


</form>

<div class="social d-flex text-center">
<a href="#" class="px-2 py-2 mr-md-1 rounded"><span class="ion-logo-facebook mr-2"></span> Facebook</a>
<a href="#" class="px-2 py-2 ml-md-1 rounded"><span class="ion-logo-twitter mr-2"></span> Twitter</a>
</div>
</div>
</div>
</div>
</div>

</section>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.js+bootstrap.min.js+main.js.pagespeed.jc.9eD6_Mep8S.js"></script><script>eval(mod_pagespeed_T07FyiNNgg);</script>
<script>eval(mod_pagespeed_zB8NXha7lA);</script>
<script>eval(mod_pagespeed_xfgCyuItiV);</script>
<script defer="" src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon="{&quot;rayId&quot;:&quot;6e9976144ea58b0c&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2021.12.0&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>


</body>