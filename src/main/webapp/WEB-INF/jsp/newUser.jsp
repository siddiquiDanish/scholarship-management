<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new-user-registration</title>
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


<body>

		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/studentLogin">Back</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Scholarship Portal</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">(STUDENT)</a></li>
			</ul>

		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px;">Student
		Scholarship Management Portal</h1>


	<form:form action="/newUser" method="post" class="form-horizontal"
		modelAttribute="user">



		<form:hidden path="id" />


		<fieldset>

			<!-- Form Name -->
			<legend align="center">Register to apply for Scholarship - </legend>

			<!-- Text input for NAME-->
			<div class="form-group">
				<form:label class="col-md-4 control-label" path="username">Name</form:label>
				<div class="col-md-4">
					<form:errors path="username" style="color:red" />
					<form:input id="username" path="username" name="username"
						type="text" placeholder="Enter your full name"
						class="form-control input-md" required=""></form:input>

				</div>
			</div>

			<!-- Text input for EMAIL-->
			<div class="form-group">
				<form:label class="col-md-4 control-label" path="email" for="email">Email:</form:label>
				<div class="col-md-4">
					<form:errors path="email" style="color:red" />
					<form:input id="email" name="email" path="email" type="email"
						placeholder="Email" class="form-control input-md" required=""></form:input>

				</div>
			</div>

			<!-- Password input PASSWORD-->
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

			<!-- Password input PASSWORDCONFIRMATION-->
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