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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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


<title>Edit Subject ${subject.paperName}</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<h2>Edit Subject: ${subject.paperName}</h2>
					<form:form action="subject" method="post" role="form"
						commandName="subject">
						<form:errors path="*" cssClass="errorblock" element="div" />
						<form:input type="hidden" path="id" value="${subject.id}" />

						<div class="form-group ">
							<label for="paperNumber">Paper Number:</label>
							<form:input type="text" class="form-control" path="paperNumber"
								id="paperNumber" placeholder="Enter paperNumber"
								value="${subject.paperNumber}" required="required" />
						</div>

						<div class="form-group ">
							<label for="paperName">Paper Name:</label>
							<form:input type="text" class="form-control" path="paperName"
								id="paperName" placeholder="Enter paperName"
								value="${subject.paperName}" required="required" />
						</div>

						<div class="form-group">
							<label for="paperCategory">Category:</label>
							<form:select path="paperCategory" class="form-control"
								id="paperCategory" required="required">
								<c:forEach var="category" items="${categories}">
									<c:choose>
										<c:when
											test="${category.value eq subject.paperCategory.value}">
											<option value="${category.value}" selected>${category.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${category.value}">${category.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group">
							<label for="paperSemester">Semester:</label>
							<form:select path="paperSemester" class="form-control"
								id="paperSemester" required="required">

								<c:forEach var="semester" items="${semesters}">
									<c:choose>
										<c:when
											test="${semester.value eq subject.paperSemester.value}">
											<option value="${semester.value}" selected>${semester.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${semester.value}">${semester.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</form:select>
						</div>

						<div class="form-group">
							<label for="departmentName">Department:</label>
							<form:select path="departmentName" class="form-control"
								id="departmentName" required="required">

								<c:forEach var="department" items="${departments}">
									<c:choose>
										<c:when
											test="${department.value eq subject.departmentName.value}">
											<option value="${department.value}" selected>${department.name}</option>
										</c:when>
										<c:otherwise>
											<option value="${department.value}">${department.name}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</form:select>
						</div>


						<button type="submit" value="Edit" name="edit"
							class="btn btn-info active">Edit</button>
					</form:form>


					<form:form action="subject" method="post" commandName="subject">
						<form:input type="hidden" path="id" value="${subject.id}"/>
						<button type="submit" value="delete" name="delete"
							class="btn btn-info active">Delete</button>
					</form:form>

					<a href="adminHome" class="btn btn-info" role="button">Back</a>




				</div>

			</div>
		</div>

	</div>
</body>
</html>