<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DL Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script type="text/javascript">
	function handlefirstName() {
		console.log("first Name Function is Running")
		const button = document.getElementById('button')
		const fname = document.getElementById('firstName').value
		const mname = document.getElementById('middleName').value
		console.log(fname.length)
		if (fname.length > 3 && fname.length <= 40) {
			document.getElementById("error").innerHTML = "<Span style='color:green''>firstName is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error").innerHTML = "<Span style='color:red''>firstName is Invalid<span>"
		}

	}
</script>

<script type="text/javascript">
	function handlemiddleName() {
		console.log("Middle Name Function is Running")
		const button = document.getElementById('button')
		const mname = document.getElementById('middleName').value
		console.log(mname.length)
		if (mname.length > 3 && mname.length <= 40) {
			document.getElementById("error1").innerHTML = "<Span style='color:green''>MiddleName is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error1").innerHTML = "<Span style='color:red''>MiddleName is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handlelastName() {
		console.log("Last Name Function is Running")
		const button = document.getElementById('button')
		const lname = document.getElementById('lastName').value
		console.log(lname.length)
		if (lname.length > 3 && lname.length <= 40) {
			document.getElementById("error2").innerHTML = "<Span style='color:green''>lastName is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error2").innerHTML = "<Span style='color:red''>lastName is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handlecountryName() {
		console.log("country Function is Running")
		const button = document.getElementById('button')
		const coun = document.getElementById('country').value
		console.log(coun.length)
		if (coun.length > 3 && coun.length <= 40) {
			document.getElementById("error3").innerHTML = "<Span style='color:green''>Country Name is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error3").innerHTML = "<Span style='color:red''>Country Name is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handlequalificationName() {
		console.log("Qualifaction Function is Running")
		const button = document.getElementById('button')
		const qual = document.getElementById('qualification').value
		console.log(qual.length)
		if (qual.length > 2 && qual.length <= 40) {
			document.getElementById("error5").innerHTML = "<Span style='color:green''>qualification is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error5").innerHTML = "<Span style='color:red''>qualification is Invalid<span>"
		}
	}
</script>


<script type="text/javascript">
	function handleplaceOfBirthName() {
		console.log("Qualifaction Function is Running")
		const button = document.getElementById('button')
		const pob = document.getElementById('placeOfBirth').value
		console.log(pob.length)
		if (pob.length > 2 && pob.length <= 40) {
			document.getElementById("error6").innerHTML = "<Span style='color:green''>place of birth is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error6").innerHTML = "<Span style='color:red''>place of birth is Invalid<span>"
		}
	}
</script>

<script type="text/javascript">
	function handlelocationName() {
		console.log("location Function is Running")
		const button = document.getElementById('button')
		const loc = document.getElementById('location').value
		console.log(loc.length)
		if (loc.length > 2 && loc.length <= 40) {
			document.getElementById("error7").innerHTML = "<Span style='color:green''>location is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error7").innerHTML = "<Span style='color:red''location is Invalid<span>"
		}
	}
</script>


<script type="text/javascript">
	function handleEmailId() {
		console.log("EmailId Function is Running")
		const button = document.getElementById('button')
		const emailId = document.getElementById('emailId').value
		console.log(emailId.length)
		if (emailId
				.match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/)) {
			document.getElementById("error8").innerHTML = "<Span style='color:green''>EmailId is valid<span>"
			button.removeAttribute("disabled")
		} else {
			button.setAttribute("disabled", "")
			document.getElementById("error8").innerHTML = "<Span style='color:red''>EmailId is Invalid<span>"
		}
	}
</script>

</head>
<body>
	<form action="saveOn" method="post">
		<h5 style="text-align: center;">TRANSPORT DEPARTMENT, GOVERNMENT
			OF KARNATAKA</h5>
		<div class="container w-100 border border-dark border-5 mt-5">
			<h4>Application for Learner's Licence(LL)</h4>

			<select name = "rtoOffice" class="form-select form-select-sm"
				aria-label="Small select example">
				<option selected>RTO Office</option>
				<option value="ABANTWALA--KA70">ABANTWALA--KA70</option>
				<option value="ATHANI--KA71">ATHANI--KA71</option>
				<option value="BAGALKOT--KA29">BAGALKOT--KA29</option>
				<option value="BAILHONGAL--KA24">BAILHONGAL--KA24</option>
				<option value="BELAGAVI--KA22">BELAGAVI--KA22</option>
				<option value="BELLARY-KA34">BELLARY-KA34</option>
				<option value="CHAMARAJ NAGAR--KA10">CHAMARAJ NAGAR--KA10</option>
				<option value="CHANDAPURA--KA59">CHANDAPURA--KA59</option>
				<option value="CHIKKABALLAPURA--KA40">CHIKKABALLAPURA--KA40</option>
				<option value="CHITRADURGA--KA16">CHITRADURGA--KA16</option>
				<option value="DANDELI--KA65">DANDELI--KA65</option>
				<option value="JAYANAGAR--KA05">JAYANAGAR--KA05</option>
				<option value="MANGALORE--KA19">MANGALORE--KA19</option>
				<option value="NAGAMANGALA--KA54">NAGAMANGALA--KA54</option>
				<option value="NELAMANGALA--KA52">NELAMANGALA--KA52</option>
				<option value="PUTTUR--KA21">PUTTUR--KA21</option>
				<option value="RAICHUR--KA36">RAICHUR--KA36</option>
				<option value="RAJAJINAGAR--KA02">RAJAJINAGAR--KA02</option>
				<option value="RAMANAGARA--KA42">RAMANAGARA--KA42</option>
				<option value="SIRSI--KA31">SIRSI--KA31</option>
				<option value="TUMKUR--KA06">TUMKUR--KA06</option>
				<option value="UDUPI--KA20">UDUPI--KA20</option>
				<option value="VIJAYAPUR--KA28">VIJAYAPUR--KA28</option>
				<option value="YADGIRI--KA33">YADGIRI--KA33</option>
				<option value="YELAHANKA--KA50">YELAHANKA--KA50</option>
				<option value="YESHWANTHPUR--KA04">YESHWANTHPUR--KA04</option>
			</select>
			<hr>
			<span style="color: red" id="error"></span> <span style="color: red"
				id="error1"></span> <span style="color: red" id="error2"></span>
			<div class="row g-5">
				<div class="col">
					<label for="exampleFormControlInput" class="form-label">First
						Name</label> <input onblur="handlefirstName()" id="firstName" type="text"
						class="form-control" name="firstName" placeholder="First name"
						aria-label="First name" required="required">
				</div>
				<div class="col">

					<label for="exampleFormControlInput" class="form-label">Middle
						Name</label> <input onblur="handlemiddleName()" id="middleName"
						type="text" class="form-control" name="middleName"
						placeholder="Middle name" aria-label="Middle name"
						required="required">
				</div>
				<div class="col">
					<label for="exampleFormControlInput" class="form-label">Last
						Name</label> <input onblur="handlelastName()" id="lastName" type="text"
						class="form-control" name="lastName" placeholder="Last name"
						aria-label="Last name" required="required">
				</div>
			</div>
			<div class="col-md-5">
				<label for="inputEmail3" class="col-sm-1 col-form-label">Gender</label>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="gender" id="inlineRadio1" value="Male">
					<label class="form-check-label" for="inlineRadio1">Male</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="gender" id="inlineRadio2" value="Female">
					<label class="form-check-label" for="inlineRadio2">Female</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio"
						name="gender" id="inlineRadio3" value="TransGender">
					<label class="form-check-label" for="inlineRadio3">TransGender</label>
				</div>
			</div>
			<div class="row g-5">
				<div class="col">
					<label for="inputPassword4" class="form-label">State</label> <select
						class="form-select form-select-sm" name="state"
						aria-label="Small select example">
						<option selected>Enter State</option>
						<option value="Andaman and Nicobar">Andaman and Nicobar</option>
						<option value="2">Andhra Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Ladakh">Ladakh</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="West Bengal">West Bengal</option>
					</select> <span style="color: red" id="error3">
					</span> 
					<div class="mb-3">
						<label for="exampleFormControlInput" class="form-label">Country</label>
						<input onblur="handlecountryName()" id="country" type="text" class="form-control" name="country"
							placeholder="country" required="required">
					</div>
					<br>
					
					<div class="row g-5">
						<div class="col">
							<label for="inputPassword4" class="form-label">Date Of
								Birth</label> <input type="Date" class="form-control"
								placeholder="dd-mm-yyyy" aria-label="dob" name="dob" required="required">
						</div>
						<div class="col">
						
							<label for="inputPassword4" class="form-label">Age</label> 
						<input type="number" class="form-control" name ="age" placeholder="Enter Age" aria-label="age"
								required="required">
						</div>
						<div class="col">
							<label for="inputPassword4"  class="form-label">Blood
								Group</label> <select name="bloodGroup" class="form-select form-select-sm"
								aria-label="Small select example">
								<option selected>Enter BloodGroup</option>
								<option value="A+VE">A+VE</option>
								<option value="B+VE">B+VE</option>
								<option value="AB+VE">AB+VE</option>
								<option value="A-VE">A-VE</option>
								<option value="B-VE">B-VE</option>
								<option value="AB-VE">AB-VE</option>
								<option value="O+VE">O+VE</option>
								<option value="O-VE">O-VE</option>
							</select>
						</div>
					</div>
					<br> <span style="color: red" id="error5"></span> <span
						style="color: red" id="error6"></span> <span style="color: red"
						id="error7"></span>
					<div class="row g-5">
						<div class="col">
							<label for="inputPassword4" class="form-label">Qualification</label>
							<input onblur="handlequalificationName()" id="qualification"
								type="text" class="form-control" name="qualification"
								aria-label="Qualification" required="required">
						</div>

						<div class="col">
							<label for="inputPassword4" class="form-label">PlaceOfBirth</label>
							<input onblur="handleplaceofbirthName()" id="placeOfBirth"
								type="text" class="form-control" name="placeOfBirth"
								aria-label="PlaceOfBirth" required="required">
						</div>
						<div class="col">
							<label for="inputPassword4" class="form-label">Location</label> <input
								onblur="handlelocationName()" id="location" type="text"
								class="form-control" name="location" aria-label="Location" required="required">
						</div>
					</div>
					<br> <span style="color: red" id="error8"></span>
					<div class="row g-5">
						<div class="col">
							<label for="inputPassword4" class="form-label">EmailId</label> <input
								onblur="handleEmailId()" id="emailId" type="text"
								class="form-control" name="emailId" aria-label="EmailId" required="required">
						</div>
						<div class="col">
							<label for="inputPassword4" class="form-label">ContactNo</label> <input
								type="text" class="form-control" placeholder="contactNo" name="contactNo"
								aria-label="contactNo" required="required">
						</div>
						<div class="col">
							<label for="inputPassword4" class="form-label">AadharNo</label> <input
								type="text" class="form-control" aria-label="AadharNo" name="aadharNo" required="required">
						</div>
					</div>
					<br>
					<div class="row g-3">
						<div class="col">
							<label for="inputPassword4" class="form-label">Permanent
								Address</label> <input type="text" class="form-control"
								aria-label="PermanentAddress" name="permanentAddress" required="required">
						</div>
						<div class="col">
							<label for="inputPassword4" class="form-label">Current
								Address</label> <input type="text" class="form-control"
								aria-label="CurrentAddress" name="currentAddress" required="required">
						</div>
						<div class="col">
							<label for="inputPassword4" class="form-label">PinCode</label> <input
								type="number" class="form-control" aria-label="PinCode" name="pinCode" required="required">
						</div>
						<br>
						<hr>
						<h6 style="text-align: left; color: red;">Fill-up Form1
							details before submitting the application</h6>
						<h6 style="text-align: inherit;">
							1.I am willing to donate my organs, in case of accidental death?
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
								<label class="form-check-label" for="inlineRadio1">Yes</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions" id="inlineRadio2" value="option2">
								<label class="form-check-label" for="inlineRadio2">No</label>
							</div>
						</h6>
						<h6 style="text-align: inherit;">
							2. I here by declare that to the best of my knowledge and belief
							the particulars given above the true
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
								<label class="form-check-label" for="inlineRadio1"></label>
							</div>
						</h6>
					</div>
					<br> <input type="submit"  class="btn btn-success">
					<input type="Refresh" class="btn btn-success"> <input
						type="cancel" id="button" class="btn btn-success">

				</div>
			</div>
		</div>
	</form>
	<c:forEach items="${violation}" var="violation">
		<h1>${violation.messageTemplate}</h1>
	</c:forEach>
</body>
</html>