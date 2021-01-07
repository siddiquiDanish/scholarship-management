<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta charset="ISO-8859-1">
<title>New-Admin-registration</title>
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

<body >
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/adminLogin">Back</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Scholarship Portal</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">(ADMIN)</a></li>
			</ul>
			
		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px;">Student
		Scholarship Management Portal</h1>


	<form:form action="/newAdmin" method="post" class="form-horizontal"
		modelAttribute="admin">
		<fieldset>

			<!-- Form Name -->
			<legend align="center">Register to access Admin Portal - </legend>

			<!-- Text input for NAME-->
			<div class="form-group">
				<form:label class="col-md-4 control-label" path="usernameAdmin">Name</form:label>
				<div class="col-md-4">
					<form:errors path="usernameAdmin" style="color:red" />
					<form:input id="usernameAdmin" path="usernameAdmin" name="usernameAdmin"
						type="text" placeholder="Enter your full name"
						class="form-control input-md" required=""></form:input>

				</div>
			</div>
			</div>
			
			<!-- Text input for Designation-->
			<div class="form-group">
				<form:label class="col-md-4 control-label" path="designation">Designation</form:label>
				<div class="col-md-4">
					
					<form:input id="designation" path="designation" name="designation"
						type="text" placeholder="Your Designation in the Organisation"
						class="form-control input-md" required=""></form:input>

				</div>
			</div>
			</div>

			<!-- Text input for EMAIL-->
			<div class="form-group">
				<label class="col-md-4 control-label" path="email" for="Email">Email:</label>
				<div class="col-md-4">
				<form:errors path="email" style="color:red" />
					<input id="Email" name="Email" path="email" type="text" placeholder="Email"
						class="form-control input-md" required>

				</div>
			</div>

			<!-- Password input for PASSWORD-->
			<div class="form-group">
				<form:label class="col-md-4 control-label" path="password"
					for="password">Password
					:</form:label>
				<div class="col-md-4">
					<form:errors path="password" style="color:red" />
					<form:input id="password" name="password" path="password"
						type="password" placeholder="" class="form-control input-md"
						required=""></form:input>

				</div>
			</div>

			<!-- Password input CONFIRMPASSWORD-->
			<div class="form-group">
				<form:label class="col-md-4 control-label"
					path="passwordConfirmation" for="passwordConfirmation">Confirm Password</form:label>
				<div class="col-md-4">
					<form:errors path="passwordConfirmation" style="color:red" />
					<form:input id="passwordConfirmation" name="passwordConfirmation"
						path="passwordConfirmation" type="password" placeholder=""
						class="form-control input-md" required=""></form:input>

				</div>
			</div>

			<!--SUBMIT Button -->
			<div style="margin-left: 560px" class="form-group">

				<div class="col-md-4">
					<button id="submit" type="submit" name="submit"
						class="btn btn-success">Submit</button>
				</div>
			</div>

		</fieldset>
	</form:form>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>