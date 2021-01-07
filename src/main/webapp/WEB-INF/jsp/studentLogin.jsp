<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
<meta charset="ISO-8859-1">
<title>Student-Login</title>
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
				<a class="navbar-brand" href="/">Back</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Scholarship Portal</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">(STUDENT)</a></li>
			</ul>

		</div>
	</nav>

	<h1 align="center" style="margin-bottom: 75px; margin-top: 50px;">
		<strong>Student Scholarship Management Portal</strong>
	</h1>




	<fieldset>
		<form:form method="post" action="/studentLogin"
			class="form-horizontal" modelAttribute="user">
			<span style="color: red"><h3>
					<c:out value="${error}"/>${error}
				</h3> <!-- Form Name --> <legend align="center">Login As Student
					-</legend> <!-- EmailId as UserId-->
				<div class="form-group">
					<form:label class="col-md-4 control-label" path="email" for="email">Email:</form:label>
					<div class="col-md-4">
						<form:errors path="email" style="color:red" />
						<form:input id="email" name="email" path="" type="email"
							placeholder="Email" class="form-control input-md" required=""></form:input>

					</div>
				</div> <!-- Password input PASSWORD-->
				<div class="form-group">
					<form:label class="col-md-4 control-label" path="password"
						for="password">Password
					:</form:label>
					<div class="col-md-4">
						<form:errors path="password" style="color:red" />
						<form:input id="password" name="password" path="" type="password"
							placeholder="" class="form-control input-md" required=""></form:input>

					</div>
				</div> <!-- Button --> <label class="col-md-0 control-label"
				for="studentlogin"></label>
				<button type="submit" id="login" class="btn btn-info"  style="margin-bottom:30px;width:150px">Login</button>
		</form:form>
		<div align="center">
			<p>New User?</p>
			<p>
				<a id="newregisteruser" href="/newUser">Register here</a>
			</p>
		</div>

	</fieldset>



	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>