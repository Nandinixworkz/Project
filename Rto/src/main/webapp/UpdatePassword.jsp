<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Password</title>
</head>
<body>
<form action="updatePassword" method="get">
<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">EmailId</label>
				<input type="text" class="form-control" name="emailId"
					placeholder="EmailId" required="required">
			</div>

<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">Password</label>
				<input type="text" class="form-control" name="password"
					placeholder="password" required="required">
			</div>

<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">confirmPassword</label>
				<input type="text" class="form-control" name="confirmPassword"
					placeholder="confirmPassword" required="required">
			</div>
<input type="submit">
</form>
</body>
</html>