<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body class="body">

	<form action="userLogin" method="get">
		<div class="container w-50 border border-dark border-5 mt-5">
			<h3 style="text-align: center;">User Login</h3>
			<div class="mb-3">
			<label for="exampleFormControlInput" class="form-label">ApplicationNo/ContactNo</label> 
				<input type="text" class="form-control" name="apporcontno"
					placeholder="applicationRefNumber/contactNo" required="required">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">DateOfBirth</label>
				<input type="text" class="form-control" name="dob"
					placeholder="enter dob" required="required">
			</div>
			<br> 
			<input type="submit" value="login" class="btn btn-success">	
		</div>
			</form>
			</div>
</body>
</html>