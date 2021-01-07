<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin_Home</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	<style>
body {
	background-image:
		url("https://www.99images.com/download-image/135156/2000x1343");
	min-height: 80%;
	background-attachment: fixed;
	background-size: cover;
	backgorund-repeat: no-repeat;
}
</style>
</head>
			
<body align="center">
<h4 id="usernameAdmin"   >${admin.usernameAdmin} <span style="color:teal">[${admin.designation}<span>] </h4>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Scholarship Portal</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/logout"><input type="button" value="Logout"
						id="userbutton" class="btn btn-danger navbar-btn""></a></li>
			</ul>
		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px;margin-bottom: 40px">Student
		Scholarship Management Portal</h1>


	


			<!-- Table -->
			<legend align="center" style="color: red"> Applications
				Recieved </legend>

			<table class="table">

				<thead class="thead-darksus">

					<tr>
						<th scope="col">Application id</th>
						<th scope="col">Name</th>
						<th scope="col">12th Percentage</th>
						<th scope="col">Family Income</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="user">
						<tr>
							<td>${user.id}</td>
							<td>${user.username}</td>
							<td>${user.percentMarks}</td>
							<td>${user.familyIncome}</td>
							<td><a href="/adminReview?id=${user.id }"><input
									type="button" width: 50px" value="Review" id="Reviewbutton"
									class="btn btn-info"></a> </td>
						</tr>
					</c:forEach>

				</tbody>

			</table>





			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>