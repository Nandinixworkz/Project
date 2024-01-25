<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body class="body">
<h2>${error}</h2>

	<form action="admin" method="get">
		<div class="container w-50 border border-dark border-5 mt-5">
			<h3 style="text-align: center;">Admin Login</h3>
			<div class="mb-3">
			<label for="exampleFormControlInput" class="form-label">EmailId</label> 
				<input type="text" class="form-control" value = "${emailId}" name="emailId"
					placeholder="enter emailId" required="required">
			</div>
			<h1>${otp}</h1>
			<input type="submit" value="send otp" class="btn btn-success">
			
			</form>
			<form action="checkotp" method="get">
			<div class="mb-3">
			<label for="exampleFormControlInput" class="form-label">EmailId</label> 
				<input type="text" class="form-control" value = "${emailId}" name="emailId"
					placeholder="enter emailId" required="required">
			</div>
			
			
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">OTP</label>
				<input type="text" class="form-control" name="otp">
			</div>
			<br> 
			
			<input type="reset" type="button" class="btn btn-success"> 
			<input type="submit" type="button" class="btn btn-success"> 	
		</div>
			</form>
			</div>
</body>
</html>