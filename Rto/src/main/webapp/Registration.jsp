<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>${app}</h4>
<h3>${message}</h3>
<h2>User Details</h2>
		<table border="1">
			<tr>
				<th>firstName</th>
				<th>Middle Name</th>
				<th>Last Name</th>
				<th>gender</th>
				<th>State</th>
				<th>Country</th>
				<th>DOB</th>
				<th>Age</th>
				<th>Blood Group</th>
				<th>Qualification</th>
				<th>Place of Birth</th>
				<th>Rto Office</th>
			   <th>Pin code</th>
				<th>Location</th>
				<th>Email ID</th>
				<th>contactNo</th>
				<th>AadharNo</th>
				<th>permanentAddress</th>
				<th>currentAddress</th>
			</tr>
			
			<tr>
				<td>${TO.firstName}</td>
				<td>${TO.middleName}</td>
				<td>${TO.lastName}</td>
				<td>${TO.gender}</td>
				<td>${TO.state}</td>
				<td>${TO.country}</td>
				<td>${TO.dob}</td>
				<td>${TO.age}</td>
				<td>${TO.bloodGroup}</td>
				<td>${TO.qualification}</td>
				<td>${TO.placeOfBirth}</td>
				<td>${TO.rtoOffice}</td>
				<td>${TO.pinCode}</td>
				<td>${TO.location}</td>
				<td>${TO.emailId}</td>
				<td>${TO.contactNo}</td>
				<td>${TO.aadharNo}</td>
				<td>${TO.permanentAddress}</td>
				<td>${TO.currentAddress}</td>
			</tr>
		</table>
</body>
</html>