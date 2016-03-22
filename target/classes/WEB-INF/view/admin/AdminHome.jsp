<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin Home</title>
</head>
<body>
	<div class="container">
		<div class="content">
			<h1>Banner</h1>
			<hr />
			<center>
				<font size="5"><a href="index.htm">Home</a> | <a
					href="about.htm">About</a> | <a href="contact.htm">Contact</a></font>
			</center>
			<hr />


			<%-- Below is List for administrative users --%>

			<h1>All User Details</h1>
			<ul>
				<c:forEach var="user" items="${users}">
					<li><a href="${user.url}">${user.name}</a>
				</c:forEach>
			</ul>
			<a href="user?add">Add a new User</a>


			<%--Below is List for Subjects --%>


			<h1>All Subject Details</h1>
			<ul>
				<c:forEach var="subject" items="${subjects}">
					<li><a href="subject?id=${subject.id}">${subject.paperName}</a>
				</c:forEach>
			</ul>
			<a href="subject?add">Add a new Subject</a>

			<%--Below is List for Students --%>

			<h1>All Student Details</h1>
			<ul>
				<c:forEach var="student" items="${students}">
					<li><a href="student?id=${student.id}">${student.user.name}</a>
				</c:forEach>
			</ul>
			<a href="student?add">Add a new Student</a>
		</div>
	</div>

</body>
</html>