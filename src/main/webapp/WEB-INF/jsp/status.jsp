<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
	<title>Status</title>
	<meta charset="ISO-8859-1">
	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
			<style>
body {
	background-image:
		url("https://i.pinimg.com/originals/4f/08/61/4f08615d13b54a033bbfed9962524b77.jpg");
	min-height: 80%;
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
	
	<form class="form-horizontal">
	<fieldset>

	<!-- Form Name -->
	<legend><h1 style="margin-bottom:75px">Status<h2></h1></legend>

		<h3>Your Application is : </h3>
		<h2 style="color:red"><strong>${user.status}</strong></h2>
		
	</fieldset>
	</form>
	
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	    
	    </body>
</html>