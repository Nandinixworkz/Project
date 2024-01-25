<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
.navbar {
	background-color: lightblue;
	font-size: 20px;
}

</style>
</head>
<body>

	<nav class="navbar navbar-expand-lg bg-Success">
		<div class="container-fluid">

			<img alt="logo"
				src="https://raw.githubusercontent.com/X-workzDev01/xworkzwebsite/master/src/main/webapp/assets/images/Logo.png"
				width="80" height="50"> 
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="SignUp.jsp"><h4 style="font-size: 30px;">${d.firstName}</h4></a></li>
						<li class="nav-item">
						<a class="nav-link" heref="SignIn.jsp">SignOut</a>
						</li>
				</ul>
				</div>
				</div>
</nav>
<br>
<form action="state" method="get">
<input typr="text" name="state" placeholder="enter state">
<input type="submit">
<h4>${errormsg}</h4>
<table border=2>
  <tr>
  <th>FirstName</th> 
  <th>LastName</th>
  <th>DOB</th>
  <th>EmailId</th>
  <th>PhoneNo</th>
  <th>State</th>
  <th>District</th>
  <th>Password</th>
  <th>ConfirmPassword</th>
  </tr>
  <c:forEach items="${dto}" var="dto">
  <tr>
 <td>${dto.firstName}</td> 
  <td>${dto.lastName}</td>
  <td>${dto.dob}</td>
  <td>${dto.emailId}</td>
  <td>${dto.phoneNo}</td>
  <td>${dto.state}</td>
  <td>${dto.district}</td>
  <td>${dto.password}</td>
  <td>${dto.confirmPassword}</td>
</tr>
</c:forEach>
</table>
</form>
</body>
</html>