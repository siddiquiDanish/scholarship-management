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
		url("https://orig00.deviantart.net/8926/f/2012/360/b/6/book_sleighing_wheeeee_gif_animation_by_retsamys-d5p8g2q.gif");
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
				<a class="navbar-brand" href="#">Scholarship</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"> Portal</a></li>
			</ul>
			
		</div>
	</nav>
	
	<h2 align="center" ><strong>Student
		Scholarship Management Portal</strong></h2>
		<h4 align="center" style="margin-bottom: 50px;color:#CB4335";><i> <b>"A child without education is like a bird without wings"</b> </i> </h4>


	<form class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<legend align="center" style="margin-bottom: 50px">|  <strong>Welcome</strong>  |</legend>


			<!-- Button (Double) -->
			<div style="margin-left: 250px" class="form-group">
				<label class="col-md-4 control-label" for="button1id"><strong></strong> </label>
				<div class="col-md-8">

					<p>
						<a href="/studentLogin"><input type="button"
							style="margin-bottom: 40px; width: 200px" value="Student Login"
							id="userbutton" class="btn btn-danger black-background white"></a>
					</p>
					<p>
						<a href="/adminLogin"><input type="button"
							style="width: 200px" value="Admin Login" id="Adminbutton"
							class="btn btn-danger black-background white"></a>
					</p>

				</div>
			</div>

		</fieldset>
	</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>