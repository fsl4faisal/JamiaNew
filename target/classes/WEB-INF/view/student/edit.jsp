<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<h2>Edit Student: ${student.user.name}</h2>
					<form:form commandName="student" action="student" method="post"
						role="form">
						<form:errors path="*" cssClass="errorblock" element="div" />
						<form:input type="hidden" path="id" value="${student.id}" />

						<div class="form-group">
							<label for="courseType">Role:</label>
							<form:select path="user.role" class="form-control"
								id="courseType" required="required">
								<c:forEach var="role" items="${roles}">
									<option value="${role.value}" selected>${role.name}</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<label for="courseType">Course Type:</label>
							<form:select path="courseType" class="form-control"
								id="courseType" placeholder="Enter Course Type"
								required="required">

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

							</form:select>
						</div>


						<div class="form-group">
							<label for="examinationName">Examination:</label>
							<form:select path="examinationName" class="form-control"
								id="examinationName" placeholder="Enter Examination Name"
								required="required">
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
							</form:select>
						</div>

						<div class="form-group ">
							<label for="year">Year:</label>
							<form:input type="number" class="form-control" path="year"
								id="year" value="${student.year}" placeholder="Enter year"
								required="required" />
						</div>

						<div class="form-group">
							<label for="semesterName">Part/Semester:</label>
							<form:select path="semesterName" class="form-control"
								id="semesterName" placeholder="Enter semester Name"
								required="required">
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
							</form:select>
						</div>

						<div class="form-group ">
							<label for="year">Name:</label>
							<form:input type="text" class="form-control" path="user.name"
								id="name" value="${student.user.name}" placeholder="Enter Name"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="dateOfBirth">Date of Birth:</label>

							<fmt:formatDate type="date" pattern="dd/MM/yyyy" var="fmtDate"
								timeStyle="short" value="${student.dateOfBirth}" />
							<form:input type="text" class="form-control" path="dateOfBirth"
								value="${fmtDate}" id="datepicker" required="required" />

						</div>

						<div class="form-group ">
							<label for="placeOfBirth">Place of Birth:</label>
							<form:input type="text" class="form-control"
								path="placeOfBirth.town" value="${student.placeOfBirth.town}"
								id="placeOfBirth.town" placeholder="Enter Town"
								required="required" />
							<form:input type="text" class="form-control"
								path="placeOfBirth.distt" value="${student.placeOfBirth.distt}"
								id="placeOfBirth.distt" placeholder="Enter Distt"
								required="required" />
							<form:input type="text" class="form-control"
								path="placeOfBirth.state" value="${student.placeOfBirth.state}"
								id="placeOfBirth.state" placeholder="Enter State"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Email Address:</label>
							<form:input type="email" class="form-control"
								path="user.emailAddress" value="${student.user.emailAddress}"
								id="user.emailAddress" placeholder="Enter Email Address"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Nationality:</label>
							<form:input type="text" class="form-control" path="nationality"
								id="nationality" value="${student.nationality}"
								placeholder="Enter Nationality" required="required" />
						</div>

						<div class="form-group ">
							<label for="year">Religion:</label>
							<form:input type="text" class="form-control" path="religion"
								id="religion" value="${student.religion}"
								placeholder="Enter Religion" required="required" />
						</div>

						<div class="form-group">
							<label for="gender">Gender:</label>
							<form:select path="gender" class="form-control" id="gender"
								placeholder="Enter semester Name" required="required">
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
							</form:select>
						</div>

						<div class="form-group ">
							<label for="fatherName">Father's Name:</label>
							<form:input type="text" class="form-control" path="fatherName"
								id="fatherName" value="${student.fatherName}"
								placeholder="Enter Father Name" required="required" />
						</div>

						<div class="form-group ">
							<label for="motherName">Mother's Name:</label>
							<form:input type="text" class="form-control" path="motherName"
								id="motherName" value="${student.motherName}"
								placeholder="Enter Mother Name" required="required" />
						</div>

						<div class="form-group ">
							<label for="spouseName">Spouse's Name:</label>
							<form:input type="text" class="form-control" path="spouseName"
								id="spouseName" value="${student.spouseName}"
								placeholder="Enter Spouse Name" required="required" />
						</div>

						<div class="form-group ">
							<label for="mobileNumber">Mobile Number:</label>
							<form:input type="number" class="form-control"
								path="mobileNumber" value="${student.mobileNumber}"
								id="mobileNumber" placeholder="Enter Mobile Number"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="correspondenceAddress">Correspondence
								Address:</label>
							<form:input type="text" class="form-control"
								path="correspondenceAddress.street"
								value="${student.correspondenceAddress.street}"
								id="correspondenceAddress.street" placeholder="Enter Street"
								required="required" />
							<form:input type="text" class="form-control"
								path="correspondenceAddress.city"
								value="${student.correspondenceAddress.city}"
								id="correspondenceAddress.city" placeholder="Enter City"
								required="required" />
							<form:input type="text" class="form-control"
								path="correspondenceAddress.state"
								value="${student.correspondenceAddress.state}"
								id="correspondenceAddress.state" placeholder="Enter State"
								required="required" />
							<form:input type="number" class="form-control"
								path="correspondenceAddress.pincode"
								value="${student.correspondenceAddress.pincode}"
								id="correspondenceAddress.pincode" placeholder="Enter Pincode"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="permanenteAddress">Permanent Address:</label>
							<form:input type="text" class="form-control"
								path="permanentAddress.street"
								value="${student.permanentAddress.street}"
								id="permanentAddress.street" placeholder="Enter Street"
								required="required" />
							<form:input type="text" class="form-control"
								path="permanentAddress.city"
								value="${student.permanentAddress.city}"
								id="permanentAddress.city" placeholder="Enter City"
								required="required" />
							<form:input type="text" class="form-control"
								path="permanentAddress.state"
								value="${student.permanentAddress.state}"
								id="permanentAddress.state" placeholder="Enter State"
								required="required" />
							<form:input type="number" class="form-control"
								path="permanentAddress.pincode"
								value="${student.permanentAddress.pincode}"
								id="permanentAddress.pincode" placeholder="Enter Pincode"
								required="required" />
						</div>


						<div class="form-group">
							<label for="mediumOfExamination">Medium of Examination:</label>
							<form:select path="mediumOfExamination" class="form-control"
								id="mediumOfExamination" placeholder="Enter mediumOfExamination"
								required="required">
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
							</form:select>
						</div>

						<div class="form-group ">
							<label for="enrollmentNumber">Enrollment Number:</label>
							<form:input type="text" class="form-control"
								path="enrollmentNumber" value="${student.enrollmentNumber}"
								id="enrollmentNumber" placeholder="Enter Enrollment Number"
								required="required" />
						</div>

						<div class="form-group ">
							<label for="studentId">Student Id:</label>
							<form:input type="number" class="form-control" path="studentId"
								value="${student.studentId}" id="studentId"
								placeholder="Enter student Id" required="required" />
						</div>

						<div class="form-group">
							<label for="quotaFlag">Belong to S.C/S.T/O.B.C:</label>
							<form:select path="quotaFlag" class="form-control" id="quotaFlag"
								placeholder="Enter quota" required="required">
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
							</form:select>
						</div>

						<button type="submit" value="Submit" name="edit"
							class="btn btn-info active">Edit</button>
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