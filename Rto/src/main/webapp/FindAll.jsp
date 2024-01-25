<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FindAll</title>
</head>
<body>

<form action="findAll" method="get">
<input type="submit" class="btn btn-dark">
<h2>User Details</h2>
<table border=1>
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