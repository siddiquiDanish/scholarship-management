<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html>
<head>
<meta charset="ISO-8859-1">
<title>Application-History</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body align="center">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Scholarship Portal</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="/studenthome">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout"><input type="button" value="Logout"
						id="userbutton" class="btn btn-danger navbar-btn""></a></li>
			</ul>
		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px; margin-top: 50px;">
		<strong>Student Scholarship Management Portal</strong>
	</h1>



	<form class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<legend align="center">Student | Application History | Saved
				Details</legend>

			<table class="table table-striped">
				
					<thead>
						<tr>
							<th scope="col" style="color:red">Details </th>
							<th scope="col"></th>
							<th scope="col"></th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">Name :</th>
							<td>${user.username}</td>
						</tr>
						<tr>
							<th scope="row">Email Id :</th>
							<td>${user.email}</td>
						</tr>
						<tr>
							<th scope="row">Mobile Number :</th>
							<td>${user.mobileNumber}</td>
						</tr>
						<tr>
							<th scope="row">Aadhar Number :</th>
							<td>${user.aadharNumber}</td>
						</tr>
						<tr>
							<th scope="row">Date of Birth :</th>
							<td>${user.dateOfBirth}</td>
						</tr>
						<tr>
							<th scope="row">Gender :</th>
							<td>${user.gender}</td>
						</tr>
						<tr>
							<th scope="row">State of Domecile/UT :</th>
							<td>${user.stateOfDomecile}</td>
						</tr>
						<tr>
							<th scope="row">Percentage marks in 12th class :</th>
							<td>${user.percentMarks}</td>
						</tr>
						<tr>
							<th scope="row">Family Annual Income :</th>
							<td>${user.familyIncome}</td>
						</tr>
						<tr>
							<th scope="row">Have Income Certificate :</th>
							<td>${user.haveCertificates}</td>
						</tr>
						<tr>
							<th scope="row">Have Personal Bank Account :</th>
							<td>${user.haveBankkAccount}</td>
						</tr>


					</tbody>
			</table>

			<p>
				<a href="/studenthome"><st>Back</st></a>
			</p>


			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>