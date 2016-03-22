<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<%--For datepicker --%>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" href="/resources/demos/style.css">

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>


<script>
	$(function() {
		$("#datepicker").datepicker();
	});

	$(".readonly").keydown(function(e) {
		e.preventDefault();
	});
</script>


<title>Add Student</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h2>Add Student</h2>
					<form:form action="student" method="post" role="form"
						commandName="student">
						<form:errors path="*" cssClass="errorblock" element="div" />

						<div class="form-group">
							<label for="role">Role:</label>
							<form:select path="user.role" class="form-control" id="role"
								required="required">
								<c:forEach var="role" items="${roles}">
									<option value="${role.value}">${role.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group">
							<label for="courseType">Course Type:</label>
							<form:select path="courseType" class="form-control"
								id="courseType" placeholder="Enter Course Type"
								required="required">
								<option disabled selected></option>
								<c:forEach var="course_type" items="${course_types}">
									<option value="${course_type.value}">${course_type.name}</option>
								</c:forEach>
							</form:select>
						</div>


						<div class="form-group">
							<label for="examinationName">Examination:</label>
							<form:select path="examinationName" class="form-control"
								id="examinationName" placeholder="Enter Examination Name"
								required="required">
								<option disabled selected></option>
								<c:forEach var="examination_name" items="${examination_names}">
									<option value="${examination_name.value}">${examination_name.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group ">
							<label for="year">Year:</label>
							<form:input type="number" class="form-control" path="year"
								id="year" placeholder="Enter year" required="required" />
						</div>

						<div class="form-group">
							<label for="semesterName">Part/Semester:</label>
							<form:select path="semesterName" class="form-control"
								id="semesterName" placeholder="Enter semester Name"
								required="required">
								<option disabled selected></option>
								<c:forEach var="semester" items="${semesters}">
									<option value="${semester.value}">${semester.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group ">
							<label for="year">Name:</label>
							<form:input type="text" class="form-control" path="user.name"
								id="name" placeholder="Enter Name" required="required" />
						</div>

						<%--class readonly will prevent the form for submission if value is empty --%>

						<div class="form-group ">
							<label for="dateOfBirth">Date of Birth:</label>
							<form:input type="text" class="form-control readonly"
								path="dateOfBirth" id="datepicker" required="required" />

						</div>

						<div class="form-group ">
							<label for="placeOfBirth">Place of Birth:</label>
							<form:input type="text" class="form-control"
								path="placeOfBirth.town" id="placeOfBirth.town"
								placeholder="Enter Town" required="required" />
							<form:input type="text" class="form-control"
								path="placeOfBirth.distt" id="placeOfBirth.distt"
								placeholder="Enter Distt" required="required" />
							<form:input type="text" class="form-control"
								path="placeOfBirth.state" id="placeOfBirth.state"
								placeholder="Enter State" required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Email Address:</label>
							<form:input type="email" class="form-control"
								path="user.emailAddress" id="user.emailAddress"
								placeholder="Enter Email Address" required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Nationality:</label>
							<form:input type="text" class="form-control" path="nationality"
								id="nationality" placeholder="Enter Nationality"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Religion:</label>
							<form:input type="text" class="form-control" path="religion"
								id="religion" placeholder="Enter Religion" required="required" />
						</div>

						<div class="form-group">
							<label for="gender">Gender:</label>
							<form:select path="gender" class="form-control" id="gender"
								placeholder="Enter semester Name" required="required">
								<option disabled selected></option>
								<c:forEach var="gender" items="${genders}">
									<option value="${gender.value}">${gender.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group ">
							<label for="fatherName">Father's Name:</label>
							<form:input type="text" class="form-control" path="fatherName"
								id="fatherName" placeholder="Enter Father Name"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="motherName">Mother's Name:</label>
							<form:input type="text" class="form-control" path="motherName"
								id="motherName" placeholder="Enter Mother Name"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="spouseName">Spouse's Name:</label>
							<form:input type="text" class="form-control" path="spouseName"
								id="spouseName" placeholder="Enter Spouse Name"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="mobileNumber">Mobile Number:</label>
							<form:input type="number" class="form-control"
								path="mobileNumber" id="mobileNumber"
								placeholder="Enter Mobile Number" required="required" />
						</div>

						<div class="form-group ">
							<label for="correspondenceAddress">Correspondence
								Address:</label>
							<form:input type="text" class="form-control"
								path="correspondenceAddress.street"
								id="correspondenceAddress.street" placeholder="Enter Street"
								required="required" />
							<form:input type="text" class="form-control"
								path="correspondenceAddress.city"
								id="correspondenceAddress.city" placeholder="Enter City"
								required="required" />
							<form:input type="text" class="form-control"
								path="correspondenceAddress.state"
								id="correspondenceAddress.state" placeholder="Enter State"
								required="required" />
							<form:input type="number" class="form-control"
								path="correspondenceAddress.pincode"
								id="correspondenceAddress.pincode" placeholder="Enter Pincode"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="permanenteAddress">Permanent Address:</label>
							<form:input type="text" class="form-control"
								path="permanentAddress.street" id="permanentAddress.street"
								placeholder="Enter Street" required="required" />
							<form:input type="text" class="form-control"
								path="permanentAddress.city" id="permanentAddress.city"
								placeholder="Enter City" required="required" />
							<form:input type="text" class="form-control"
								path="permanentAddress.state" id="permanentAddress.state"
								placeholder="Enter State" required="required" />
							<form:input type="number" class="form-control"
								path="permanentAddress.pincode" id="permanentAddress.pincode"
								placeholder="Enter Pincode" required="required" />
						</div>


						<div class="form-group">
							<label for="mediumOfExamination">Medium of Examination:</label>
							<form:select path="mediumOfExamination" class="form-control"
								id="mediumOfExamination" placeholder="Enter mediumOfExamination"
								required="required">
								<option disabled selected></option>
								<c:forEach var="medium_of_examination"
									items="${medium_of_examinations}">
									<option value="${medium_of_examination.value}">${medium_of_examination.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group ">
							<label for="enrollmentNumber">Enrollment Number:</label>
							<form:input type="text" class="form-control"
								path="enrollmentNumber" id="enrollmentNumber"
								placeholder="Enter Enrollment Number" required="required" />
						</div>

						<div class="form-group ">
							<label for="studentId">Student Id:</label>
							<form:input type="number" class="form-control" path="studentId"
								id="studentId" placeholder="Enter student Id"
								required="required" />
						</div>

						<div class="form-group">
							<label for="quotaFlag">Belong to S.C/S.T/O.B.C:</label>
							<form:select path="quotaFlag" class="form-control" id="quotaFlag"
								placeholder="Enter quota" required="required">
								<option disabled selected></option>
								<c:forEach var="flag" items="${flags}">
									<option value="${flag.value}">${flag.name}</option>
								</c:forEach>
							</form:select>
						</div>

						<p align="left">
							<strong> Below Details are to be entered by Student.</strong>
						</p>


						<button type="submit" value="Submit" name="add"
							class="btn btn-info active">Submit</button>
						<a href="adminHome" class="btn btn-info" role="button">Back</a>

					</form:form>


				</div>
				<div class="col-md-4">
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>