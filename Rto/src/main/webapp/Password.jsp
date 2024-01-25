<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password</title>
</head>
<body>
<form action="password" method="get">
<div class="container w-50 border border-dark border-5 mt-5">

<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">EmailId</label>
				<input type="text" value="${emailId}" class="form-control" name="emailId"
					placeholder="EmailId" required="required">
			</div>
			<h1>${otp1}</h1>
			<input type="submit" value="Send otp">
</form>

<form action="password" method="get">
<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">EmailId</label>
				<input type="text" value="${emailId}" class="form-control" name="emailId"
					placeholder="EmailId" required="required">
			</div>

<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">OTP</label>
				<input type="text" value="${otp}" class="form-control" name="otp"
					placeholder="EmailId" required="required">
			</div>
		
   
            <input type="submit" class="btn btn-success">
			<input type="submit" value="Back" class="btn btn-secondary"> 	


</form>
</body>
</html>