<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<title>${user.name}</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<h2>User Info</h2>
					<p>Below are the details from the database</p>
					<table class="table table-reflow">
						<tbody>
							<tr>
								<th scope="row">Name</th>
								<td>${user.name}</td>
							</tr>
							<tr>
								<th scope="row">Role</th>
								<td>${user.role.name}</td>
							</tr>
							<tr>
								<th scope="row">Email Address</th>
								<td>${user.emailAddress}</td>
							</tr>
						</tbody>
					</table>

					<a href="adminHome" class="btn btn-info" role="button">Back</a> 
					<a href="${user.url}&edit" class="btn btn-info" role="button">Edit User</a>
							

				</div>
				<div class="col-md-4"></div>

				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</body>
</html>