<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
					<h2>Edit Student: ${student.user.name}</h2>
					<form action="student" method="post" role="form">

						<input type="hidden" name="id" value="${student.id}">

						<div class="form-group">
							<label for="courseType">Role:</label> <select name="user.role"
								class="form-control" id="courseType" required>
								<c:forEach var="role" items="${roles}">
									<option value="${role.value}" selected>${role.name}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group">
							<label for="courseType">Course Type:</label> <select
								name="courseType" class="form-control" id="courseType"
								placeholder="Enter Course Type" required>

								<c:forEach var="course_type" items="${course_types}">
									<c:choose>
										<c:when
											test="${course_type.value eq student.courseType.value}">
											<option value="${course_type.value}" selected>${course_type.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${course_type.value}">${course_type.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>

							</select>
						</div>


						<div class="form-group">
							<label for="examinationName">Examination:</label> <select
								name="examinationName" class="form-control" id="examinationName"
								placeholder="Enter Examination Name" required>
								<c:forEach var="examination_name" items="${examination_names}">
									<c:choose>
										<c:when
											test="${examination_name.value eq student.examinationName.value}">
											<option value="${examination_name.value}" selected>${examination_name.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${examination_name.value}">${examination_name.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<div class="form-group ">
							<label for="year">Year:</label> <input type="number"
								class="form-control" name="year" id="year"
								value="${student.year}" placeholder="Enter year" required>
						</div>

						<div class="form-group">
							<label for="semesterName">Part/Semester:</label> <select
								name="semesterName" class="form-control" id="semesterName"
								placeholder="Enter semester Name" required>
								<c:forEach var="semester" items="${semesters}">
									<c:choose>
										<c:when test="${semester.value eq student.semesterName.value}">
											<option value="${semester.value}" selected>${semester.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${semester.value}">${semester.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<div class="form-group ">
							<label for="year">Name:</label> <input type="text"
								class="form-control" name="user.name" id="name"
								value="${student.user.name}" placeholder="Enter Name" required>
						</div>

						<div class="form-group ">
							<label for="dateOfBirth">Date of Birth:</label>

							<fmt:formatDate type="date" pattern="dd/MM/yyyy" var="fmtDate"
								timeStyle="short" value="${student.dateOfBirth}" />
							<input type="text" class="form-control" name="dateOfBirth"
								value="${fmtDate}" id="datepicker" required readonly>

						</div>

						<div class="form-group ">
							<label for="placeOfBirth">Place of Birth:</label> <input
								type="text" class="form-control" name="placeOfBirth.town"
								value="${student.placeOfBirth.town}" id="placeOfBirth.town"
								placeholder="Enter Town" required> <input type="text"
								class="form-control" name="placeOfBirth.distt"
								value="${student.placeOfBirth.distt}" id="placeOfBirth.distt"
								placeholder="Enter Distt" required> <input type="text"
								class="form-control" name="placeOfBirth.state"
								value="${student.placeOfBirth.state}" id="placeOfBirth.state"
								placeholder="Enter State" required>
						</div>

						<div class="form-group ">
							<label for="year">Email Address:</label> <input type="email"
								class="form-control" name="user.emailAddress"
								value="${student.user.emailAddress}" id="user.emailAddress"
								placeholder="Enter Email Address" required>
						</div>

						<div class="form-group ">
							<label for="year">Nationality:</label> <input type="text"
								class="form-control" name="nationality" id="nationality"
								value="${student.nationality}" placeholder="Enter Nationality"
								required>
						</div>

						<div class="form-group ">
							<label for="year">Religion:</label> <input type="text"
								class="form-control" name="religion" id="religion"
								value="${student.religion}" placeholder="Enter Religion"
								required>
						</div>

						<div class="form-group">
							<label for="gender">Gender:</label> <select name="gender"
								class="form-control" id="gender"
								placeholder="Enter semester Name" required>
								<c:forEach var="gender" items="${genders}">
									<c:choose>
										<c:when test="${gender.value eq student.gender.value}">
											<option value="${gender.value}" selected>${gender.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${gender.value}">${gender.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<div class="form-group ">
							<label for="fatherName">Father's Name:</label> <input type="text"
								class="form-control" name="fatherName" id="fatherName"
								value="${student.fatherName}" placeholder="Enter Father Name"
								required>
						</div>

						<div class="form-group ">
							<label for="motherName">Mother's Name:</label> <input type="text"
								class="form-control" name="motherName" id="motherName"
								value="${student.motherName}" placeholder="Enter Mother Name"
								required>
						</div>

						<div class="form-group ">
							<label for="spouseName">Spouse's Name:</label> <input type="text"
								class="form-control" name="spouseName" id="spouseName"
								value="${student.spouseName}" placeholder="Enter Spouse Name"
								required>
						</div>

						<div class="form-group ">
							<label for="mobileNumber">Mobile Number:</label> <input
								type="number" class="form-control" name="mobileNumber"
								value="${student.mobileNumber}" id="mobileNumber"
								placeholder="Enter Mobile Number" required>
						</div>

						<div class="form-group ">
							<label for="correspondenceAddress">Correspondence
								Address:</label> <input type="text" class="form-control"
								name="correspondenceAddress.street"
								value="${student.correspondenceAddress.street}"
								id="correspondenceAddress.street" placeholder="Enter Street"
								required> <input type="text" class="form-control"
								name="correspondenceAddress.city"
								value="${student.correspondenceAddress.city}"
								id="correspondenceAddress.city" placeholder="Enter City"
								required> <input type="text" class="form-control"
								name="correspondenceAddress.state"
								value="${student.correspondenceAddress.state}"
								id="correspondenceAddress.state" placeholder="Enter State"
								required> <input type="number" class="form-control"
								name="correspondenceAddress.pincode"
								value="${student.correspondenceAddress.pincode}"
								id="correspondenceAddress.pincode" placeholder="Enter Pincode"
								required>
						</div>

						<div class="form-group ">
							<label for="permanenteAddress">Permanent Address:</label> <input
								type="text" class="form-control" name="permanentAddress.street"
								value="${student.permanentAddress.street}"
								id="permanentAddress.street" placeholder="Enter Street" required>
							<input type="text" class="form-control"
								name="permanentAddress.city"
								value="${student.permanentAddress.city}"
								id="permanentAddress.city" placeholder="Enter City" required>
							<input type="text" class="form-control"
								name="permanentAddress.state"
								value="${student.permanentAddress.state}"
								id="permanentAddress.state" placeholder="Enter State" required>
							<input type="number" class="form-control"
								name="permanentAddress.pincode"
								value="${student.permanentAddress.pincode}"
								id="permanentAddress.pincode" placeholder="Enter Pincode"
								required>
						</div>


						<div class="form-group">
							<label for="mediumOfExamination">Medium of Examination:</label> <select
								name="mediumOfExamination" class="form-control"
								id="mediumOfExamination" placeholder="Enter mediumOfExamination"
								required>
								<c:forEach var="medium_of_examination"
									items="${medium_of_examinations}">
									<c:choose>
										<c:when
											test="${medium_of_examination.value eq student.mediumOfExamination.value}">
											<option value="${medium_of_examination.value}" selected>${medium_of_examination.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${medium_of_examination.value}">${medium_of_examination.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<div class="form-group ">
							<label for="enrollmentNumber">Enrollment Number:</label> <input
								type="text" class="form-control" name="enrollmentNumber"
								value="${student.enrollmentNumber}" id="enrollmentNumber"
								placeholder="Enter Enrollment Number" required>
						</div>

						<div class="form-group ">
							<label for="studentId">Student Id:</label> <input type="number"
								class="form-control" name="studentId"
								value="${student.studentId}" id="studentId"
								placeholder="Enter student Id" required>
						</div>

						<div class="form-group">
							<label for="quotaFlag">Belong to S.C/S.T/O.B.C:</label> <select
								name="quotaFlag" class="form-control" id="quotaFlag"
								placeholder="Enter quota" required>
								<c:forEach var="flag" items="${flags}">
									<c:choose>
										<c:when test="${flag.value eq student.quotaFlag.value}">
											<option value="${flag.value}" selected>${flag.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${flag.value}">${flag.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</select>
						</div>

						<button type="submit" value="Submit" name="edit"
							class="btn btn-info active">Edit</button>
						<a href="adminHome" class="btn btn-info" role="button">Back</a>



					</form>


				</div>
				<div class="col-md-4">
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>