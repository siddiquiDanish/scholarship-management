<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
	
	<head>
	<meta charset="ISO-8859-1">
	<title>Admin_Login</title>
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
				<a class="navbar-brand" href="/">Back</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Scholarship Portal</a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">(ADMIN)</a></li>
			</ul>
			
		</div>
	</nav>

<h1  align="center" style=" margin-bottom: 75px;">Student Scholarship Management Portal </h1>

<form class="form-horizontal" method="post" action="/adminLogin" modelAttribute="admin">
<fieldset>

<span style="color: red" align="center"><h3>
							<c:out value="${error}" /></h3></span>

<!-- Form Name -->
<legend align="center">Login As Admin -</legend>

<!-- EmailId as adminId-->
<div class="form-group">
  <label class="col-md-4 control-label" path="email" for="EmailId">Email:</label>  
  <div class="col-md-4">
  <input id="email" name="email" path="email" type="email" placeholder="Your Email-Id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" path="password" for="password">Password </label>
  <div class="col-md-4">
    <input id="password" path="password" name="password" type="password" placeholder="" class="form-control input-md" required="">
    
</div>
<br>
<br>
<br>
<!-- Button -->
<div class="form-group" >
  <label class="col-md-1 control-label" for="adminlogin"></label>
  <div class="col-md-1">
    <button id="adminlogin" name="adminlogin" type="submit" class="btn btn-info" style="margin-left:450px;width:150px;margin-bottom:30px">Login</button>
  </div>
</div>

       <div align="center"><p>New to Organisation?</p> 
           <p> <a  id="newregisteradmin" href="/newAdmin">Register as Admin here</a></p> </div>
    
</fieldset>
</form>


<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</body>



</html>