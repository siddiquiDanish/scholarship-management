<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply-Online</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-image:
		url("https://i.pinimg.com/originals/89/61/0e/89610e51686fc18228e108cc081d0bdd.jpg");
	min-height: 100%;
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
				<li><a href="/adminhome">Home</a></li>
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


	<form:form class="form-horizontal" method="post" action="/adminReview"
		modelAttribute="user">

		<form:hidden path="id" />
		<fieldset>

			<form:hidden path="password" />
			<form:hidden path="stateOfDomecile" />

			<form:hidden path="haveCertificates" />

			<form:hidden path="haveBankkAccount" />

			<div align="center" style="margin-bottom: 20px" class="form-group">
				<form:label path="username">Name :</form:label>
				<form:input path="username" id="username" value="${user.username}"
					readonly="true" />
				<form:label path="email">Email Id :</form:label>
				<form:input path="email" id="email" value="${user.email}"
					readonly="true" />
			</div>


			<!-- Mobile no.-->
			<div class="form-group">
				<form:label path="mobileNumber" class="col-md-4 control-label"
					for="phone">Phone Number :</form:label>
				<div class="col-md-4">
					<form:input path="mobileNumber" id="mobileNumber"
						name="mobileNumber" type="tel" value="${user.mobileNumber}"
						class="form-control input-md" readonly="true" />

				</div>
			</div>

			<!-- UniqueId-->
			<div class="form-group">
				<form:label path="aadharNumber" id="aadharNumber"
					class="col-md-4 control-label" for="aadharNumber">Aadhar Number : </form:label>
				<div class="col-md-4">
					<form:input path="aadharNumber" id="aadharNumber"
						name="aadharNumber" type="text" value="${user.aadharNumber}"
						class="form-control input-md" readonly="true" />
				</div>

				<div align="center" class="form-group">
					<!-- Date input -->
					<form:label path="dateOfBirth" for="dateOfBirth">Date of Birth :</form:label>
					<form:input path="dateOfBirth" value="${dateOfBirth}" type="date"
						id="dateOfBirth" name="dateOfBirth" readonly="true" />
				</div>


			</div>

			<!-- gender -->

			<div style="margin-left:490px" class="form-group">
				<form:label path="gender"  for="gender">Gender :</form:label>
				<form:input path="gender"  style="margin-left:30px"  id="gender" value="${user.gender}"
					readonly="true" />
			</div>

			<!-- Select Basic -->
			<div class="form-group">
						<form:label path="stateOfDomecile" class="col-md-4 control-label"
							for="stateOfDomecile">State of Domecile :</form:label>
						<div class="col-md-4">
							<form:select path="stateOfDomecile" name="stateOfDomecile"
								id="stateOfDomecile" value="${user.stateOfDomecile }" style="width:350px;height:35px"
								disabled="true">
								<form:option value="">${user.stateOfDomecile }</form:option>
								
							</form:select>
						</div>
					</div>

				<!-- 12th percentage-->
				<div>
					<div align="center" class="form-group">
						<form:label path="percentMarks" class="col-md-4 control-label"
							for="percentage">Percentage
					obtained in 12th Class :</form:label>
						<div class="col-md-2">
							<form:input path="" id="percentMarks" name="percentMarks"
								type="text" value="${user.percentMarks}"
								class="form-control input-md" readonly="true" />

						</div>
					</div>

					<!-- Income-->
					<div class="form-group">
						<form:label path="familyIncome" class="col-md-4 control-label"
							for="familyIncome">Family
					Annual Income :</form:label>
						<div class="col-md-4">
							<form:input path="" id="familyIncome" name="familyIncome"
								type="text" class="form-control input-md"
								value="${user.familyIncome}" readonly="true" />

						</div>
					</div>

					<!-- Select applicable -->
					<div class="form-group">
						<form:label path="haveCertificates" class="col-md-4 control-label"
							for="haveCertificates">Do You Have Income Certificates :</form:label>
						<div class="col-md-4">
							<form:select path="haveCertificates" name="haveCertificates"
								id="haveCertificates" value="${user.haveCertificates }"
								disabled="true">
								<form:option value="">--Select--</form:option>
								<form:option value="YES">YES</form:option>
								<form:option value="NO">NO</form:option>
							</form:select>
						</div>
					</div>

					<div class="form-group">
						<form:label path="haveBankkAccount" class="col-md-4 control-label"
							for="haveBankkAccount">Do You Have Bank Account :</form:label>
						<div class="col-md-4">
							<form:select path="haveBankkAccount" name="haveBankkAccount"
								id="haveBankkAccount" value="${haveBankkAccount}"
								disabled="true">
								<form:option value="">--Select--</form:option>
								<form:option value="YES">YES</form:option>
								<form:option value="NO">NO</form:option>
							</form:select>
						</div>
					</div>

					<!-- Multiple Radios (inline) -->
					<div class="form-group">
						<form:label class="col-md-4 control-label" path="category">Category :</form:label>
						<div class="col-md-4">
							<form:input type="text" path="category" value="${user.category }"
								readonly="true" />
						</div>
					</div>
		</fieldset>

		<div align="center" class="form-group">
			<form:select id="status" path="status" style="width:100px;height:30px" required="required"  >
				<form:option value="">Select Action</form:option>
				<form:option value="Approved">Approve</form:option>
				<form:option value="Rejected">Reject</form:option>

			</form:select>

			<button type="submit" id="btn" class="btn btn-success" role="button"
				aria-pressed="true">Update</button>

		</div>


	</form:form>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>