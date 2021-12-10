<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Employee Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.google.com" class="navbar-brand"> Employee
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Employee</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">

		<div class="container">
			<h3 class="text-center">List of Employees</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/newForm" class="btn btn-success">Add
					New Employee</a>
			</div>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>FirstName</th>
						<th>LastName</th>
						<th>Email</th>
						<th>User Name</th>
						<th>Password</th>
						<th>Address</th>
						<th>Contact Number</th>
						<th>Department</th>
						<th>Salary</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="employee" items="${listEmployee}">
						<tr>
							<td><c:out value="${employee.id}" /></td>
							<td><c:out value="${employee.firstName}" /></td>
							<td><c:out value="${employee.lastName}" /></td>
							<td><c:out value="${employee.email}" /></td>
							<td><c:out value="${employee.username}" /></td>
							<td><c:out value="${employee.password}" /></td>
							<td><c:out value="${employee.address}" /></td>
							<td><c:out value="${employee.contact}" /></td>
							<td><c:out value="${employee.department}" /></td>
							<td><c:out value="${employee.salary}" /></td>
							<td><a href="edit?id=<c:out value='${employee.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?id=<c:out value='${employee.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>