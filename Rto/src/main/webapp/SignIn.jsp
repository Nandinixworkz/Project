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
<%-- <h2>${error}</h2> --%>
<h3>${up}</h3>

	<form action="login" method="get">
		<div class="container w-50 border border-dark border-5 mt-5">
			<h3 style="text-align: center;">Login Here</h3>
			<div class="mb-3">
				<!-- <label for="exampleFormControlInput" class="form-label">EmailId</label> -->
				<input type="text" class="form-control" name="emailId"
					placeholder="enter emailId" required="required">
			</div>
			<div class="mb-3">
				<!-- <label for="exampleFormControlInput" class="form-label">Password</label> -->
				<input type="text" class="form-control" name="password"
					placeholder="enter password" required="required">
			</div>
			<div>
			<a href="Password.jsp">ForgetPassword</a>
			</div>
			<!-- <div class="mb-3">
				 <label for="exampleFormControlInput" class="form-label">ConfirmPassword</label>
				<input type="text" class="form-control" name="confirmPassword"
					placeholder="enter ConfirmPassword" required="required">
			</div> -->
			<br> 
			<input type="submit" value="login" class="btn btn-success">
			<input type="reset" value="back" class="btn btn-success"> 	
		</div>
			</form>
			</div>
</body>
</html>