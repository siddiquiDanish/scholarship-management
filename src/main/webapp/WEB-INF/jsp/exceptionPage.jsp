<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-image:
		url("https://i.pinimg.com/originals/4f/08/61/4f08615d13b54a033bbfed9962524b77.jpg");
	min-height: 110%;
	background-attachment: fixed;
	background-size: cover;
	backgorund-repeat: no-repeat;
}
</style>

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

	<h2 style="margin-bottom:90px">
		<strong>Student Scholarship Management Portal</strong>
	</h2>

	<h1 style="color:red"  ><strong>Oops!</strong></h1>
	<h1>Something went wrong.</h1>
	<a href="#"><h4>Contact Support</h4></a>
	


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>