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

<title>${subject.paperName}</title>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<h2>Subject Info</h2>
					<p>Below are the details from the database</p>
					<table class="table table-reflow">
						<tbody>
							<tr>
								<th scope="row">Paper Number</th>
								<td>${subject.paperNumber}</td>
							</tr>
							<tr>
								<th scope="row">Paper Name</th>
								<td>${subject.paperName}</td>
							</tr>
							<tr>
								<th scope="row">Category</th>
								<td>${subject.paperCategory.name}</td>
							</tr>
							<tr>
								<th scope="row">Semester</th>
								<td>${subject.paperSemester.name}</td>
							</tr>
							<tr>
								<th scope="row">Department</th>
								<td>${subject.departmentName.name}</td>
							</tr>

						</tbody>
					</table>

					<a href="adminHome" class="btn btn-info" role="button">Back</a> 
					<a href="subject?id=${subject.id}&edit" class="btn btn-info" role="button">Edit</a>
				

				</div>
				<div class="col-md-4"></div>

				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</body>
</html>