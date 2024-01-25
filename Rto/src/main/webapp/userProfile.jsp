<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>${message}</h3>
<h2>User Details</h2>
		<table border="1">
			<tr>
			<th>applicationRefNumber</th>
				<th>firstName</th>
				
				<th>Country</th>
				<th>Email ID</th>
				<th>contactNo</th>
				<th>Status</th>
			</tr>
			
			<tr>
			    <td>${dto.applicationRefNumber}</td>
				<td>${dto.firstName}</td>
			
				<td>${dto.country}</td>
				<td>${dto.emailId}</td>
				<td>${dto.contactNo}</td>
				<td>${dto.status}</td>
			</tr>
		</table>
</body>
</html>
</body>
</html>