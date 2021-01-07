<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>student-home</title>
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

<h1 align="center" style="margin-bottom: 75px; margin-top: 50px;"><strong>Student
		Scholarship Management Portal</strong></h1>




<form class="form-horizontal">
<fieldset>

<!-- Form Name -->

<legend align="center" style=" margin-bottom: 40px;">${user.username} | Home</legend>

<!-- Select Basic -->
<div align="center" class="form-group">
  <label class="col-md-4 control-label" for="Student Home" > </label>
  <div class="col-md-4">
   <p> <a href="/apply"><input type="button" style="width:300px;margin-bottom:50px" value="Apply for Scholarship" name="apply" class="btn btn-info"> </a></p>
  <p><a href="/applicationhistory"><input type="button"  style="width:300px;margin-bottom:50px" value="View Application History" name="history" class="btn btn-warning"> </a></p>
    <p>  <a href="/status"><input type="button" style="width:300px;margin-bottom:50px" value="Check Status of your application" name="status" class="btn btn-success"> </a></p>
      
  </div>
</div>



<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">*Note:</label>
  <div class="col-md-4">                     
    <P>You can apply only once. Applying multiple times may result in  rejection of your application.<P>
  </div>
</div>

</fieldset>
</form>
	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	

</body>

</html>