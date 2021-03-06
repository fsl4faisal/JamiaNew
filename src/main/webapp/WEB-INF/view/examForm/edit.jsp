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
					<form:form action="examForm" method="post" role="form"
						commandName="student" enctype="multipart/form-data">
						<form:input type="hidden" path="id" value="${student.id}" />
						<form:input type="hidden" path="submittedByStudent" value="YES" />
						<form:errors path="*" cssClass="errorblock" element="div" />
						<p>Below are the details from the database</p>
						<table class="table table-bordered">
							<tbody>

								<tr>
									<th scope="row">Role</th>
									<td>${student.user.role.name}</td>
									<form:input type="hidden" path="user.role" />
								</tr>
								<tr>
									<th scope="row">Course Type</th>
									<td>${student.courseType.name}</td>
									<form:input type="hidden" path="courseType" />
								</tr>

								<tr>
									<th scope="row">Examination</th>
									<td>${student.examinationName.name}</td>
									<form:input type="hidden" path="examinationName" />
								</tr>
								<tr>
									<th scope="row">Year</th>
									<td>${student.year}</td>
									<form:input type="hidden" path="year" />
								</tr>
								<tr>
									<th scope="row">Part/Semester</th>
									<td>${student.semesterName.name}</td>
									<form:input type="hidden" path="semesterName" />
								</tr>

								<tr>
									<th scope="row">Name</th>
									<td>${student.user.name}</td>
									<form:input type="hidden" path="user.name" />
								</tr>

								<tr>
									<th scope="row">Date of Birth</th>

									<td><fmt:formatDate type="date" pattern="dd/MM/yyyy"
											timeStyle="short" value="${student.dateOfBirth}" /></td>
									<form:input type="hidden" path="dateOfBirth" />
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
									<form:input type="hidden" path="placeOfBirth.town" />
									<td>${student.placeOfBirth.distt}</td>
									<form:input type="hidden" path="placeOfBirth.distt" />
									<td>${student.placeOfBirth.state}</td>
									<form:input type="hidden" path="placeOfBirth.state" />
								</tr>
							</tbody>

						</table>

						<table class="table table-bordered">
							<tbody>
								<tr>
									<th scope="row">Email Address</th>
									<td>${student.user.emailAddress}</td>
									<form:input type="hidden" path="user.emailAddress" />
								</tr>

								<tr>
									<th scope="row">Nationality</th>
									<td>${student.nationality}</td>
									<form:input type="hidden" path="nationality" />
								</tr>

								<tr>
									<th scope="row">Religion</th>
									<td>${student.religion}</td>
									<form:input type="hidden" path="religion" />
								</tr>

								<tr>
									<th scope="row">Gender</th>
									<td>${student.gender.name}</td>
									<form:input type="hidden" path="gender" />
								</tr>

								<tr>
									<th scope="row">Father's Name</th>
									<td>${student.fatherName}</td>
									<form:input type="hidden" path="fatherName" />
								</tr>

								<tr>
									<th scope="row">Mother's Name</th>
									<td>${student.motherName}</td>
									<form:input type="hidden" path="motherName" />
								</tr>

								<tr>
									<th scope="row">Spouse's Name</th>
									<td>${student.spouseName}</td>
									<form:input type="hidden" path="spouseName" />
								</tr>

								<tr>
									<th scope="row">Mobile Number</th>
									<td>${student.mobileNumber}</td>
									<form:input type="hidden" path="mobileNumber" />
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
									<form:input type="hidden" path="correspondenceAddress.street" />
									<td>${student.correspondenceAddress.city}</td>
									<form:input type="hidden" path="correspondenceAddress.city" />
									<td>${student.correspondenceAddress.state}</td>
									<form:input type="hidden" path="correspondenceAddress.state" />
									<td>${student.correspondenceAddress.pincode}</td>
									<form:input type="hidden" path="correspondenceAddress.pincode" />

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
									<form:input type="hidden" path="permanentAddress.street" />
									<td>${student.permanentAddress.city}</td>
									<form:input type="hidden" path="permanentAddress.city" />
									<td>${student.permanentAddress.state}</td>
									<form:input type="hidden" path="permanentAddress.state" />
									<td>${student.permanentAddress.pincode}</td>
									<form:input type="hidden" path="permanentAddress.pincode" />

								</tr>
							</tbody>

						</table>


						<table class="table table-bordered">
							<tbody>
								<tr>
									<th scope="row">Medium of Examination</th>
									<td>${student.mediumOfExamination.name}</td>
									<form:input type="hidden" path="mediumOfExamination" />
								</tr>

								<tr>
									<th scope="row">Enrollment Number</th>
									<td>${student.enrollmentNumber}</td>
									<form:input type="hidden" path="enrollmentNumber" />
								</tr>

								<tr>
									<th scope="row">Student Id</th>
									<td>${student.studentId}</td>
									<form:input type="hidden" path="studentId" />
								</tr>

								<tr>
									<th scope="row">Belong to S.C/S.T/O.B.C</th>
									<td>${student.quotaFlag.name}</td>
									<form:input type="hidden" path="quotaFlag" />
								</tr>


							</tbody>
						</table>


						<p align="left">
							<strong>Details to be entered by Student:</strong>
						</p>

						<div class="form-group">


							<form:label path="photoContent" for="photo">Photo:</form:label>
							<input type="file" class="filestyle" name="photo"
								id="photoContent" placeholder="Upload Photo" required="required" />

							<form:label path="signatureContent" for="singature">Signature:</form:label>
							<input type="file" class="filestyle" name="signature"
								id="signatureContent" placeholder="Upload Signature"
								required="required" /> 
								
								<label for="disqualifiedFlag">Were
								you ever rustigated/ expelled/ disqualified/ debarred from
								appearing at the examination?</label>
							<form:select path="disqualifiedDescription.disqualifiedFlag"
								class="form-control"
								id="disqualifiedDescription.disqualifiedFlag"
								placeholder="Enter yes if disqualified" required="required">
								<option disabled selected></option>
								<c:forEach var="flag" items="${flags}">
									<c:choose>
										<c:when
											test="${flag.value eq student.disqualifiedDescription.disqualifiedFlag.value}">
											<option value="${flag.value}" selected>${flag.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${flag.value}">${flag.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group ">
							<label for="permanenteAddress">Details for above point:</label>
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.previousUniversityBoardName"
								id="disqualifiedDescription.previousUniversityBoardName"
								placeholder="Enter Previous University Board Name"
								required="required" />
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.previousExaminationName"
								id="disqualifiedDescription.previousExaminationName"
								placeholder="Enter Previous Examination Name"
								required="required" />
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.previousYear"
								id="disqualifiedDescription.previousYear"
								placeholder="Enter Previous Year" required="required" />
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.previousEnrollmentNumber"
								id="disqualifiedDescription.previousEnrollmentNumber"
								placeholder="Enter Previous Enrollment Number"
								required="required" />
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.previousRollNumber"
								id="disqualifiedDescription.previousRollNumber"
								placeholder="Enter Previous Roll Number" required="required" />
							<form:input type="text" class="form-control"
								path="disqualifiedDescription.periodOfPunishment"
								id="disqualifiedDescription.periodOfPunishment"
								placeholder="Enter Period Of Punishment" required="required" />
						</div>

						<div class="form-group ">
							<p align="left">
								<strong>Subjects/Papers in which you wishes to be
									examined(Select option of papers, if any):</strong>
							</p>
							<p align="left">
								<strong>Qualifying Papers:</strong>

								<form:select type="text" class="form-control"
									path="subjects[0].id" id="subjects"
									placeholder="Select Qualifying Paper" required="required">
									<option disabled selected></option>
									<c:forEach var="qualifyingPaper" items="${qualifyingPapers}">
										<option value="${qualifyingPaper.id}">(${qualifyingPaper.paperNumber}
											, ${qualifyingPaper.paperName})</option>

									</c:forEach>
								</form:select>

								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Compulsary Papers:</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[1].id" id="subjects" --%>
								<%-- 									placeholder="Select Compulsary Paper" required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="compulsaryPaper" items="${compulsaryPapers}"> --%>
								<%-- 										<option value="${compulsaryPaper.id}">(${compulsaryPaper.paperNumber} --%>
								<%-- 											, ${compulsaryPaper.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Core Course(Hons):</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[2].id" id="subjects" --%>
								<%-- 									placeholder="Select Core Courses(Hons)" required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="coreCourseHons" items="${coreCoursesHons}"> --%>
								<%-- 										<option value="${coreCourseHons.id}">(${coreCourseHons.paperNumber} --%>
								<%-- 											, ${coreCourseHons.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->

								<!-- 							<p align="left"> -->
								<!-- 								<strong>Core Course(Subsidiary):</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[3].id" id="subjects" --%>
								<%-- 									placeholder="Select Core Course(Subsidiary)" --%>
								<%-- 									required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="coreCourseSubsidiary" --%>
								<%-- 										items="${coreCoursesSubsidiary}"> --%>
								<%-- 										<option value="${coreCourseSubsidiary.id}">(${coreCourseSubsidiary.paperNumber} --%>
								<%-- 											, ${coreCourseSubsidiary.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Choice Based Course (Elective):</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[4].id" id="subjects" --%>
								<%-- 									placeholder="Select Choice Based Course (Elective)" --%>
								<%-- 									required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="choiceBasedCourse" --%>
								<%-- 										items="${choiceBasedCourses}"> --%>
								<%-- 										<option value="${choiceBasedCourse.id}">(${choiceBasedCourse.paperNumber} --%>
								<%-- 											, ${choiceBasedCourse.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Skill Enhancement Course(SEC):</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[5].id" id="subjects" --%>
								<%-- 									placeholder="Select Skill Enhancement Course(SEC)" --%>
								<%-- 									required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="skillEnhancementCourse" --%>
								<%-- 										items="${skillEnhancementCourses}"> --%>
								<%-- 										<option value="${skillEnhancementCourse.id}">(${skillEnhancementCourse.paperNumber} --%>
								<%-- 											, ${skillEnhancementCourse.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Ability Skill Enhancement(AECC):</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[6].id" id="subjects" --%>
								<%-- 									placeholder="Select Ability Skill Enhancement(AECC):" --%>
								<%-- 									required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="abilityEnhancementCourse" --%>
								<%-- 										items="${abilityEnhancementCourses}"> --%>
								<%-- 										<option value="${abilityEnhancementCourse.id}">(${abilityEnhancementCourse.paperNumber} --%>
								<%-- 											, ${abilityEnhancementCourse.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
								<!-- 							<p align="left"> -->
								<!-- 								<strong>Audit Course:</strong> -->
								<%-- 								<form:select type="text" class="form-control" --%>
								<%-- 									path="subjects[7].id" id="subjects" --%>
								<%-- 									placeholder="Select Qualifying Paper" required="required"> --%>
								<!-- 									<option disabled selected></option> -->
								<%-- 									<c:forEach var="auditCourse" items="${auditCourses}"> --%>
								<%-- 										<option value="${auditCourse.id}">(${auditCourse.paperNumber} --%>
								<%-- 											, ${auditCourse.paperName})</option> --%>

								<%-- 									</c:forEach> --%>
								<%-- 								</form:select> --%>
								<!-- 							</p> -->
						</div>
						<button type="submit" value="Submit" name="edit"
							class="btn btn-info active">Submit</button>
						<a href="adminHome" class="btn btn-info" role="button">Back</a>

					</form:form>


				</div>
				<div class="col-md-2">
					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>