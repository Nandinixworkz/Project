<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script type="text/javascript">
	function handleName() {
		console.log("first Name Function is Running")
		const button = document.getElementById('button')
		const fname = document.getElementById('firstName').value
		console.log(fname.length)
		if (fname.length > 3 && fname.length <= 20) {
			document.getElementById("err").innerHTML = "<Span style='color:green''>Name is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err").innerHTML = "<Span style='color:red''>Name is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handleLastName() {
		console.log("Last Name Function is Running")
		const button = document.getElementById('button')
		const lname = document.getElementById('lastName').value
		console.log(lname.length)
		if (lname.length > 3 && lname.length <= 20) {
			document.getElementById("err4").innerHTML = "<Span style='color:green''>LastName is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err4").innerHTML = "<Span style='color:red''>LastName is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handlePassword() {
		console.log("Password Function is Running")
		const button = document.getElementById('button')
		const pword = document.getElementById('password').value
		console.log(pword.length)
		if (pword.length > 3 && pword.length <= 20) {
			document.getElementById("err2").innerHTML = "<Span style='color:green''>Password is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err2").innerHTML = "<Span style='color:red''>Password is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handleConfirmpassword() {
		console.log("ConfirmPassword Function is Running")
		const button = document.getElementById('button')
		const pword = document.getElementById('password').value
		const cpassword = document.getElementById('ConfirmPassword').value
		if (pword == cpassword) {
			document.getElementById("err3").innerHTML = "<Span style='color:green''>password and confirmpassword is match<span>"
				button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err3").innerHTML = "<Span style='color:red''>password and confirmpassword is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handleStateName() {
		console.log("State Function is Running")
		const button = document.getElementById('button')
		const state = document.getElementById('state').value
		console.log(state.length)
		if (state.length > 3 && state.length <= 20) {
			document.getElementById("err5").innerHTML = "<Span style='color:green''>State Name is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err5").innerHTML = "<Span style='color:red''>State Name is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handleDistrictName() {
		console.log("District Function is Running")
		const button = document.getElementById('button')
		const district = document.getElementById('district').value
		console.log(district.length)
		if (district.length > 3 && district.length <= 20) {
			document.getElementById("err6").innerHTML = "<Span style='color:green''>District Name is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err6").innerHTML = "<Span style='color:red''>District Name is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handleEmailId() {
		console.log("EmailId Function is Running")
		const button = document.getElementById('button')
		const emailId = document.getElementById('emailId').value
		console.log(emailId.length)
		if (emailId.match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {
			document.getElementById("err7").innerHTML = "<Span style='color:green''>EmailId is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("err7").innerHTML = "<Span style='color:red''>EmailId is Invalid<span>"
		}
	}
</script>

<style type="text/css">
.body {
	background-color: white;
}
</style>
</head>
<body class="body">
	<h5 style="text-align: center">SignUp Page</h5>

	<form action="save" method="post">
		<div class="container w-50 border border-dark border-5 mt-5">
			<h3 style="text-align: center;">Registration Here</h3>
			<font color="red"><h5>${message}</h5></font> <span style="color: red"
				id="err"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">FirstName</label>
				<input onblur="handleName()" id="firstName" type="text"
					class="form-control" name="firstName" placeholder="enter firstName"
					required="required">
			</div>


			<span style="color: red" id="err4"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">LastName</label>
				<input onblur="handleLastName()" id="lastName" type="text"
					class="form-control" name="lastName" placeholder="enter lastName"
					required="required">
			</div>


			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">Dob</label>
				<input type="Date" class="form-control" name="dob"
					placeholder="enter dob" required="required">
			</div>

			<span style="color: red" id="err7"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">EmailId</label>
				<input onblur="handleEmailId()" id="emailId" type="text"
					class="form-control" name="emailId" placeholder="enter emailId"
					required="required">
				<h6 style="text-decoration: none;">${errorMessage}</h6>
			</div>


			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">PhoneNo</label>
				<input type="number" class="form-control" name="phoneNo"
					placeholder="enter phoneNo" required="required">
			</div>

			<span style="color: red" id="err5"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">State</label>
				<input onblur="handleStateName()" id="state" type="text"
					class="form-control" name="state" placeholder="enter state"
					required="required">
			</div>

			<span style="color: red" id="err6"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">District</label>
				<input onblur="handleDistrictName()" id="district" type="text"
					class="form-control" name="district" placeholder="enter district"
					required="required">
			</div>


			<span style="color: red" id="err2"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">Password</label>
				<input onblur="handlePassword()" id="password" type="text"
					class="form-control" name="password" placeholder="enter password"
					required="required">
			</div>


			<span style="color: red" id="err3"></span>
			<div class="mb-3">
				<label for="exampleFormControlInput" class="form-label">ConfirmPassword</label>
				<input onblur="handleConfirmpassword()" id="ConfirmPassword"
					type="ConfirmPassword" class="form-control" name="ConfirmPassword"
					placeholder="enter confirmPassword" required="required">
			</div>


			<div class="form-check">
				<input class="form-check-input" type="checkbox" value=""
					id="flexCheckDefault" required="required"> <label
					class="form-check-label" for="flexCheckDefault"> Confirm
					Registration </label>
			</div>

			<br> <input type="submit" id="button" class="btn btn-dark">
			<input type="reset" class="btn btn-dark">
		</div>
	</form>
	<c:forEach items="${violation}" var="violation">
		<h2>${violation.messageTemplate}</h2>
	</c:forEach>
	<br>
	<div>
		<%@include file="Footer.jsp"%>
	</div>
</body>
</html>