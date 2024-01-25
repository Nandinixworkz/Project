<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-Success">
		<div class="container-fluid">
		
					<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" ><h4 style="text-align: right;">${d.firstName}</h4></a>
				</ul>
				<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="Signin.jsp">Logout</a></li>
				</ul>
				</div>
				</div>
				</div>
				</nav>
			 <table border=1>
  <tr>
   <th>FirstName</th> 
  <th>DOB</th>
  <th>EmailId</th>
  <th>PhoneNo</th>
  <th>State</th>
  <th>District</th>
  <th>Password</th>
  <th>ConfirmPassword</th>
  </tr>
   <tr>
  <td>${dto.firstName}</td>
  <td>${dto.dob}</td>
  <td>${dto.emailId}</td>
  <td>${dto.phoneNo}</td>
  <td>${dto.state}</td>
  <td>${dto.district}</td>
  <td>${dto.password}</td>
  <td>${dto.confirmPassword}</td>
</tr>
</table> 
<form action="userByState" method="get">
<input type="text" name="state" placeholder="enter state">
<input type="submit">

<h4>${errormsg}</h4>
			<table border=1>
  <tr>
 <th>FirstName</th>
  <th>LastName</th>
  <th>EmailId</th>
  <th>ContactNo</th>
  <th>CurrentAddress</th>
  <th>State</th>
  <th>Status</th>
  </tr>
   <c:forEach items="${u}" var="d">
   <tr>
  <td>${d.firstName}</td>
  <td>${d.lastName}</td>
  <td>${d.dob}</td>
  <td>${d.emailId}</td>
  <td>${d.contactNo}</td>
  <td>${d.currentAddress}</td>
  <td>${d.state}</td>
  <td>${d.status}</td>
  <td><a href=updateUserStatus?id=${dto.id}>Approved</a></td>
</tr>
</c:forEach>
</table>
	</form>
	
	<br>
<div>
	<%@include file="Footer.jsp" %>
	
	</div>

</body>
</html>