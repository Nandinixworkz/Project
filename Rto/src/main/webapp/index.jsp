<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RTO</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
 .centerimage {
	 display: block;
	 margin-left: 600px; 
	 margin-right: auto;
	 float: left;
} 
.text-border h6{
 text-indent: 20px;
}

.navbar {
	background-color: lightblue;
	font-size: 20px;
}

.text {
	text-align: center;
}
.clm{
  width:100%;
  height:100%;
  padding: 5px;
}
</style>
</head>
<body>
<img  class="centerimage" alt="picture" 
		src="https://dbt.karnataka.gov.in/benmgmt/Images/1024px-Seal_of_Karnataka_white_background.png"
		width="90" height="70">
	<br>
	<div class="text-border">
	<h4>Transport Department</h4>
	<h6>Government of Karnataka</h6>
	</div>
	
	<nav class="navbar navbar-expand-lg bg-Success">
		<div class="container-fluid">

			<img alt="logo"
				src="https://raw.githubusercontent.com/X-workzDev01/xworkzwebsite/master/src/main/webapp/assets/images/Logo.png"
				width="80" height="50"> 
				<img alt="Homelogo"
				src="https://tse2.mm.bing.net/th?id=OIP.wJKV6UpPabGDFwfcj50UagHaH3&pid=Api&P=0&h=180"
				width="40" height="40">

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
				</ul>
						<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Admin.jsp">Admin</a></li>
				</ul>
				<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Userlogin.jsp">Userlogin</a>
				</ul>
				<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignUp.jsp">SignUp</a>
				</ul>
				<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignIn.jsp">Signin</a>
				</ul>
									<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="DLRegistration.jsp">DLRegistration</a>
				</ul>
				<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Password.jsp">Password</a>
				</ul>
				
				<br>
				<ul class="nav nav-pills nav-fill nav justify-content-end">
				<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="UpdatePassword.jsp">UpdatePassword</a>
				</ul>
			</div>
		</div>
	</nav>
	<!-- <div class="row"> -->
	<div class="clm">
	<img alt="picture"
		src="http://www.drivespark.com/img/2014/08/18-karnatak-rto.jpg"
		height="700" width="800">
	 </div>
	<!-- 	<div class="clm">
	<img alt="picture"
		src="https://transport.karnataka.gov.in/storage/slids/1680084851.jpg"
		height="450" width="1000">
		</div>
		</div> -->
		
	<div>
	<%@include file="Footer.jsp" %>
	
	</div>
</body>
</html>