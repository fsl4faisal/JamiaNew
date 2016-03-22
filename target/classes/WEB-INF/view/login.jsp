<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Login</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<h2>Login</h2>
					<form action="login" method="post" role="form" id="loginForm">
						<div class="form-group ">
							<label for="user">User Name:</label> <input type="text"
								class="form-control" name="user_name" id="user_name"
								placeholder="Enter user name" required>
						</div>
						<div class="form-group">
							<label for="pwd">Password:</label> <input type="password"
								name="password" class="form-control" id="password"
								placeholder="Enter password" required>
						</div>
						<div class="checkbox">
							<label><input type="checkbox"> Remember me</label>
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>

					<c:choose>
						<c:when test="${error_message == 'Wrong user name or password'}">
							<div class="alert alert-danger">
								<strong>Login Failed!</strong>${error_message}
							</div>

						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>


					<div class="col-md-4"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
