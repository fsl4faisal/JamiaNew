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

<title>Add User</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<h2>Add User</h2>
					<form:form action="user" method="post" role="form"
						commandName="user">
						<form:errors path="*" cssClass="errorblock" element="div" />

						<div class="form-group ">
							<label for="user">User Name:</label>

							<form:input type="text" class="form-control" path="name"
								id="name" placeholder="Enter User Name" required="requried"/>

						</div>


						<div class="form-group">
							<label for="email">Email Address:</label>
							<form:input type="email" path="emailAddress" class="form-control"
								id="email" placeholder="Enter Email Address" required="requried" />

						</div>

						<div class="form-group">
							<label for="role">Role:</label>
							<form:select path="role" class="form-control" id="role"
								required="requried">
								<option disabled selected></option>
								<c:forEach var="role" items="${roles}">
									<option value="${role.value}">${role.name}</option>
								</c:forEach>
							</form:select>

						</div>

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