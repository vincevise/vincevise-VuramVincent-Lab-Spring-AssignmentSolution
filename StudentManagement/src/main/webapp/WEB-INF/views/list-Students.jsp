<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Student Fest Directory</title>
</head>
<body>

	<div class="container">

		<h3>Student Fest Directory</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/StudentManagemt/students/search" class="form-inline">

			<!-- Add a button -->
			<a href="/StudentManagement/students/showFormForAdd"
				class="btn btn-primary btn-sm mb-3"> Add Student </a> 
				
			<a href="/StudentManagement/logout" class="btn btn-primary btn-sm mb-3 mx-auto">Logout</a>

		</form>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="tempStud">
					<tr>
						<td><c:out value="${tempStud.name}" /></td>
						<td><c:out value="${tempStud.department}" /></td>
						<td><c:out value="${tempStud.country}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/StudentManagement/students/showFormForUpdate?studentId=${tempStud.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/StudentManagement/students/delete?studentId=${tempStud.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">
								Delete </a>

						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>