
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>${student.user.name}</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2>Student Info</h2>
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
							
							<tr>
								<th scope="row">Were you ever rustigated/ expelled/ disqualified/ debarred from appearing at the examination?</th>
								<td>${student.disqualifiedDescription.disqualifiedFlag.name}</td>
							</tr>

						</tbody>
					</table>
					
					<table class="table table-bordered">
						<thead>
							<tr>
								<th colspan="4">Details for above point:</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>Previous University/Board name</th>
								<td>${student.disqualifiedDescription.previousUniversityBoardName}</td>
							</tr>

							<tr>
								<th scope="row">Previous Examination Name</th>
								<td>${student.disqualifiedDescription.previousExaminationName}</td>
							</tr>

							<tr>
								<th scope="row">Previous Year</th>
								<td>${student.disqualifiedDescription.previousYear}</td>
							</tr>

							<tr>
								<th scope="row">Previous Enrollment Number</th>
								<td>${student.disqualifiedDescription.previousEnrollmentNumber}</td>
							</tr>
							
							<tr>
								<th scope="row">Previous Roll number</th>
								<td>${student.disqualifiedDescription.previousRollNumber}</td>
							</tr>
							
							<tr>
								<th scope="row">Period of punishment</th>
								<td>${student.disqualifiedDescription.periodOfPunishment}</td>
							</tr>

						</tbody>

					</table>
					
					

					<a href="adminHome" class="btn btn-info" role="button">Back</a>
					 <a
						href="student?id=${student.id}&edit" class="btn btn-info"
						role="button">Edit Student</a> 
						<a
						href="examForm?id=${student.id}&edit"
						class="btn btn-info" role="button">Proceed To Exam Form</a>

				</div>
				<div class="col-md-2"></div>


			</div>
		</div>
	</div>
</body>
</html>