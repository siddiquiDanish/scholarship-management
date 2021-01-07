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
	<h1 align="center" style="margin-bottom: 75px; margin-top: 50px;">
		<strong>Student Scholarship Management Portal</strong>
	</h1>


	<form:form method="post" modelAttribute="application"
		class="form-horizontal">
		<fieldset>
		

			<!-- Mobile no.-->
			<div class="form-group">
				<form:label path="mobileNumber" class="col-md-4 control-label"
					for="phone">Phone
					Number:</form:label>
				<form:errors path="mobileNumber" style="color:red" />
				<div class="col-md-4">
					<form:input path="mobileNumber" id="mobileNumber"
						name="mobileNumber" type="tel" placeholder="Enter Phone number"
						class="form-control input-md" required="required" minlength="10" maxlength="10" />

				</div>
			</div>

			<!-- UniqueId-->
			<div class="form-group">
				<form:label path="aadharNumber" class="col-md-4 control-label"
					for="aadharNumber">Aadhar
					Number:</form:label>
				<form:errors path="aadharNumber" style="color:red" />
				<div class="col-md-4">
					<form:input path="aadharNumber" id="aadharNumber"
						name="aadharNumber" type="tel"
						placeholder="12 digit Aadhar Number" class="form-control input-md"
						required="required" minlength="12" maxlength="12" />
				</div>

				<div align="center" class="form-group">
					<!-- Date input -->

					<form:label path="dateOfBirth" for="dateOfBirth">Date of Birth:</form:label>
					<form:input path="dateOfBirth" type="date" id="dateOfBirth" required="required"
						name="dateOfBirth" />
				</div>


			</div>

			<!-- gender -->
			<div class="form-group">
				<form:label path="gender" class="col-md-4 control-label"
					for="gender">Gender</form:label>
				<div class="col-md-4">
					<div class="radio">
						<form:radiobutton path="gender" name="gender" required="required" id="gender"
							value="Male" />
						Male

					</div>
					<div class="radio">
						<form:radiobutton path="gender" name="gender" required="required" id="gender"
							value="Female" />
						Female
					</div>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<form:label path="stateOfDomecile" class="col-md-4 control-label"
					for="selectbasic">State
					of Domecile/UT:</form:label>
				<div class="col-md-4">
					<div class="col-md-4">
						<form:select path="stateOfDomecile" id="stateOfDomecile" required="required" style="width:350px"
							name="stateOfDomecile" class="form-control">
							<form:option value="Andhra Pradesh (AP)">Andhra Pradesh (AP)</form:option>
							<form:option value="Arunachal Pradesh (AR)">Arunachal Pradesh (AR)</form:option>
							<form:option value="Assam (AS)">Assam (AS)</form:option>
							<form:option value="Bihar (BR)">Bihar (BR)</form:option>
							<form:option value="Chhattisgarh (CG)">Chhattisgarh (CG)</form:option>
							<form:option value="Goa (GA)">Goa (GA)</form:option>
							<form:option value="Gujarat (GJ)">Gujarat (GJ)</form:option>
							<form:option value="Haryana (HR)">Haryana (HR)</form:option>
							<form:option value="Himachal Pradesh (HP)">Himachal Pradesh (HP)</form:option>
							<form:option value="Jammu and Kashmir (JK)">Jammu and Kashmir (JK)</form:option>
							<form:option value="Jharkhand (JH)">Jharkhand (JH)</form:option>
							<form:option value="Karnataka (KA)">Karnataka (KA)</form:option>
							<form:option value="Kerala (KL)">Kerala (KL)</form:option>
							<form:option value="Madhya Pradesh (MP)">Madhya Pradesh (MP)</form:option>
							<form:option value="Maharashtra (MH)">Maharashtra (MH)</form:option>
							<form:option value="Manipur (MN)">Manipur (MN)</form:option>
							<form:option value="Meghalaya (ML)">Meghalaya (ML)</form:option>
							<form:option value="Mizoram (MZ)">Mizoram (MZ)</form:option>
							<form:option value="Nagaland (NL)">Nagaland (NL)</form:option>
							<form:option value="Odisha(OR)">Odisha(OR)</form:option>
							<form:option value="Punjab (PB)">Punjab (PB)</form:option>
							<form:option value="Rajasthan (RJ)">Rajasthan (RJ)</form:option>
							<form:option value="Sikkim (SK)">Sikkim (SK)</form:option>
							<form:option value="Tamil Nadu (TN)">Tamil Nadu (TN)</form:option>
							<form:option value="Telangana (TS)">Telangana (TS)</form:option>
							<form:option value="Tripura (TR)">Tripura (TR)</form:option>
							<form:option value="Uttar Pradesh (UP)">Uttar Pradesh (UP)</form:option>
							<form:option value="Uttarakhand (UK)">Uttarakhand (UK)</form:option>
							<form:option value="West Bengal (WB)">West Bengal (WB)</form:option>
							<form:option value="Andaman and Nicobar Islands(AN)">Andaman and Nicobar Islands(AN)</form:option>
							<form:option value="Chandigarh (CH)">Chandigarh (CH)</form:option>
							<form:option value="Dadra and Nagar Haveli (DN)">Dadra and Nagar Haveli (DN)</form:option>
							<form:option value="Daman and Diu (DD)">Daman and Diu (DD)</form:option>
							<form:option
								value="National Capital Territory of Delhi
							(DL)">National Capital Territory of Delhi
							(DL)</form:option>
							<form:option value="Lakshadweep (LD)">Lakshadweep (LD)</form:option>
							<form:option value="Pondicherry">Pondicherry (PY)</form:option>
						</form:select>
					</div>
				</div>
				
				<!-- 12th percentage-->
				<div>
				<div class="form-group">
					<form:label path="percentMarks" class="col-md-2 control-label"
						for="percentage">Percentage
					obtained in 12th Class :</form:label>
					<div class="col-md-2">
						<form:input path="" id="percentMarks" name="percentMarks"
							type="text" placeholder="in %age"  style="width:80px" class="form-control input-md"
							required="required" />

					</div>
				</div>

				<!-- Income-->
				<div class="form-group">
					<form:label path="familyIncome" class="col-md-4 control-label"
						for="familyIncome">Family
					Annual Income</form:label>
					<div class="col-md-4">
						<form:input path="" id="familyIncome" name="familyIncome"
							type="text" placeholder="In Rs." class="form-control input-md"
							required="required" />

					</div>
				</div>

				<!-- Select applicable -->
				<div class="form-group">
					<form:label path="haveCertificates" class="col-md-4 control-label"
						for="haveCertificates">Do You Have Income Certificates:</form:label>
					<div class="col-md-4">
						<form:select path="haveCertificates" name="haveCertificates" required="required"
							id="haveCertificates">
							<form:option value="">--Select--</form:option>
							<form:option value="YES">YES</form:option>
							<form:option value="NO">NO</form:option>
						</form:select>
					</div>
				</div>

				<div class="form-group">
					<form:label path="haveBankkAccount" class="col-md-4 control-label"
						for="haveBankkAccount">Do You Have Bank Accounts:</form:label>
					<div class="col-md-4">
						<form:select path="haveBankkAccount" name="haveBankkAccount"
							id="haveBankkAccount" required="required">
							<form:option value="">--Select--</form:option>
							<form:option value="YES">YES</form:option>
							<form:option value="NO">NO</form:option>
						</form:select>
					</div>
				</div>

				<!-- Multiple Radios (inline) -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="category">Category:</label>
					<div class="col-md-4">
						<label class="radio-inline" for="category"> <form:radiobutton
								path="category" name="category" id="category" value="General" required="required" />
							General
						</label> <label class="radio-inline" for="category"> <form:radiobutton
								path="category" name="category" id="category" value="OBC" required="required"/>
							OBC
						</label> <label class="radio-inline" for="category"> <form:radiobutton
								path="category" name="category" id="category" value="ST" required="required"/> ST
						</label> <label class="radio-inline" for="category"> <form:radiobutton
								path="category" name="category" id="category" value="SC" required="required"/> SC
						</label>
					</div>
				</div>

				<!-- Multiple Checkboxes -->
				<!--   <div class="form-group">
					<label class="col-md-4 control-label" for="">Declaration</label>
					<div class="col-md-4">
								<form:label path="" for="declaration-0"> <input type="checkbox"
							name="declaration" id="declaration-0" value="1" required="required"> I hereby
							declare that the information provided above is true, complete and
							correct to the best of my knowledge.
						</form:label> 
					</div>
				</div>-->

				<!-- Button (Double) -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submitapplication"></label>
					<div class="col-md-8">
						<button id="submitapplication" name="submitapplication"
							type="submit" class="btn btn-success">Submit</button>
						<button id="resetapplication" name="resetapplication" type="reset"
							class="btn btn-info">Reset</button>
					</div>
				</div>
		</fieldset>

		<div class="form-group">
			<label class="col-md-4 control-label" for="textarea">*Note:</label>
			<div class="col-md-4">
				<P style="color: red">Please fill the form carefully .You cannot
					edit your personal information once submitted.
				<P>
			</div>
		</div>

	</form:form>


	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>