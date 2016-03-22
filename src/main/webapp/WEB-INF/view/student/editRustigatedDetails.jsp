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
</script>

<title>Student ${student.user.name}</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2>Student ${student.user.name}</h2>
					<form action="rustigatedDetails" method="post" role="form">

						<p>Below are the details from the database</p>
						<table class="table table-bordered">
							<tbody>
								<tr>
									<th scope="row">Role</th>
									<td>${student.user.role.name}</td>
								</tr>
								<tr>
									<th scope="row">Course Type</th>
									<td>${student.courseType.name}</td>
								</tr>

								<tr>
									<th scope="row">Examination</th>
									<td>${student.examinationName.name}</td>
								</tr>
								<tr>
									<th scope="row">Year</th>
									<td>${student.year}</td>
								</tr>
								<tr>
									<th scope="row">Part/Semester</th>
									<td>${student.semesterName.name}</td>
								</tr>

								<tr>
									<th scope="row">Name</th>
									<td>${student.user.name}</td>
								</tr>

								<tr>
									<th scope="row">Date of Birth</th>

									<td><fmt:formatDate type="date" pattern="dd/MM/yyyy"
											timeStyle="short" value="${student.dateOfBirth}" /></td>
								</tr>
							</tbody>
						</table>
						<table class="table table-bordered">
							<thead>
								<tr>
									<th colspan="3">Place of Birth</th>
								</tr>
								<tr>
									<th>Town</th>
									<th>Distt.</th>
									<th>State</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${student.placeOfBirth.town}</td>
									<td>${student.placeOfBirth.distt}</td>
									<td>${student.placeOfBirth.state}</td>
								</tr>
							</tbody>

						</table>

						<table class="table table-bordered">
							<tbody>
								<tr>
									<th scope="row">Email Address</th>
									<td>${student.user.emailAddress}</td>
								</tr>

								<tr>
									<th scope="row">Nationality</th>
									<td>${student.nationality}</td>
								</tr>

								<tr>
									<th scope="row">Religion</th>
									<td>${student.religion}</td>
								</tr>

								<tr>
									<th scope="row">Gender</th>
									<td>${student.gender.name}</td>
								</tr>

								<tr>
									<th scope="row">Father's Name</th>
									<td>${student.fatherName}</td>
								</tr>

								<tr>
									<th scope="row">Mother's Name</th>
									<td>${student.motherName}</td>
								</tr>

								<tr>
									<th scope="row">Spouse's Name</th>
									<td>${student.spouseName}</td>
								</tr>

								<tr>
									<th scope="row">Mobile Number</th>
									<td>${student.mobileNumber}</td>
								</tr>
							</tbody>

						</table>


						<table class="table table-bordered">
							<thead>
								<tr>
									<th colspan="4">Home Address</th>
								</tr>
								<tr>
									<th>Street</th>
									<th>City</th>
									<th>State</th>
									<th>Pincode</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${student.correspondenceAddress.street}</td>
									<td>${student.correspondenceAddress.city}</td>
									<td>${student.correspondenceAddress.state}</td>
									<td>${student.correspondenceAddress.pincode}</td>

								</tr>
							</tbody>

						</table>

						<table class="table table-bordered">
							<thead>
								<tr>
									<th colspan="4">Permanent Address</th>
								</tr>
								<tr>
									<th>Street</th>
									<th>City</th>
									<th>State</th>
									<th>Pincode</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${student.permanentAddress.street}</td>
									<td>${student.permanentAddress.city}</td>
									<td>${student.permanentAddress.state}</td>
									<td>${student.permanentAddress.pincode}</td>

								</tr>
							</tbody>

						</table>


						<table class="table table-bordered">
							<tbody>
								<tr>
									<th scope="row">Medium of Examination</th>
									<td>${student.mediumOfExamination.name}</td>
								</tr>

								<tr>
									<th scope="row">Enrollment Number</th>
									<td>${student.enrollmentNumber}</td>
								</tr>

								<tr>
									<th scope="row">Student Id</th>
									<td>${student.studentId}</td>
								</tr>

								<tr>
									<th scope="row">Belong to S.C/S.T/O.B.C</th>
									<td>${student.quotaFlag.name}</td>
								</tr>


							</tbody>
						</table>

						<input type="hidden" name="id" value="${student.id}">
						<p align="left">
							<strong>Details to be entered by Student:</strong>
						</p>

						<div class="form-group">
							<label for="disqualifiedFlag">Were you ever rustigated/
								expelled/ disqualified/ debarred from appearing at the
								examination?</label> <select name="disqualifiedDescription.disqualifiedFlag"
								class="form-control" id="disqualifiedDescription.disqualifiedFlag"
								placeholder="Enter yes if disqualified" required>
								<option disabled selected></option>
								<c:forEach var="flag" items="${flags}">
									<option value="${flag.value}">${flag.name}</option>
								</c:forEach>
							</select>
						</div>

						<div class="form-group ">
							<label for="permanenteAddress">Details for above point:</label> <input
								type="text" class="form-control"
								name="disqualifiedDescription.previousUniversityBoardName"
								id="disqualifiedDescription.previousUniversityBoardName"
								placeholder="Enter Previous University Board Name" required>
							<input type="text" class="form-control"
								name="disqualifiedDescription.previousExaminationName"
								id="disqualifiedDescription.previousExaminationName"
								placeholder="Enter Previous Examination Name" required>
							<input type="text" class="form-control"
								name="disqualifiedDescription.previousYear"
								id="disqualifiedDescription.previousYear"
								placeholder="Enter Previous Year" required> <input
								type="text" class="form-control"
								name="disqualifiedDescription.previousEnrollmentNumber"
								id="disqualifiedDescription.previousEnrollmentNumber"
								placeholder="Enter Previous Enrollment Number" required>
							<input type="text" class="form-control"
								name="disqualifiedDescription.previousRollNumber"
								id="disqualifiedDescription.previousRollNumber"
								placeholder="Enter Previous Roll Number" required> <input
								type="text" class="form-control"
								name="disqualifiedDescription.periodOfPunishment"
								id="disqualifiedDescription.periodOfPunishment"
								placeholder="Enter Period Of Punishment" required>
						</div>
						<button type="submit" value="Submit" name="edit"
							class="btn btn-info active">Submit</button>
						<a href="adminHome" class="btn btn-info" role="button">Back</a>

					</form>


				</div>
				<div class="col-md-2">
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>