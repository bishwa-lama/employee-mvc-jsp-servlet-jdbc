<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${employee == null}">
					<form action="register" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
							Edit Employee
						</c:if>
						<c:if test="${employee == null}">
							Add New Employee
						</c:if>
					</h2>
				</caption>

				<c:if test="${employee != null}">
					<input type="hidden" name="id"
						value="<c:out value='${employee.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${employee.firstName}' />"
						class="form-control" name="firstName" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${employee.lastName}' />"
						class="form-control" name="lastName" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${employee.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${employee.username}' />"
						class="form-control" name="username">
				</fieldset>
				<fieldset class="form-group">
					<label>Password</label> <input type=password
						value="<c:out value='${employee.password}' />"
						class="form-control" name="password">
				</fieldset>
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${employee.address}' />" class="form-control"
						name="address">
				</fieldset>
				<fieldset class="form-group">
					<label>Contact Number</label> <input type="text"
						value="<c:out value='${employee.contact}' />" class="form-control"
						name="contact">
				</fieldset>
				<fieldset class="form-group">
					<label>Department</label> <input type="text"
						value="<c:out value='${employee.department}' />"
						class="form-control" name="department">
				</fieldset>
				<fieldset class="form-group">
					<label>Salary</label> <input type="text"
						value="<c:out value='${employee.salary}' />" class="form-control"
						name="salary">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<a href="https://www.google.com" class="navbar-brand">
					Employee Management App </a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/register"
					class="nav-link">Employee</a></li>
			</ul>
		</nav>
	</header>
	<div align="center">
		<h1>Employee Registration Form</h1>
		<form action="<%=request.getContextPath()%>/register" method="post">
			<table style="with: 80%">
				<tr>
					<td>First Name</td>
					<td><input type="text" name="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name</td>
					<td><input type="text" name="lastName" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>UserName</td>
					<td><input type="text" name="username" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Contact No</td>
					<td><input type="text" name="contact" /></td>
				</tr>
				<tr>
					<td>Department</td>
					<td><input type="text" name="department" /></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><input type="text" name="salary" /></td>
				</tr>
			</table>
			<input type="submit" value="Submit" />
		</form>
	</div>

</body>
</html> --%>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Employee Management Application</title>
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Employee
					Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/register"
					class="nav-link">Employee</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${employee != null}">
					<form action="update" method="post"></form>
				</c:if>
				<c:if test="${employee == null}">
					<form action="insert" method="post"></form>
				</c:if>

				<caption>
					<h2>
						<c:if test="${employee != null}">
                                    Edit Employee
                                </c:if>
						<c:if test="${employee == null}">
                                    Add New Employee
                                </c:if>
					</h2>
				</caption>
			
				<c:if test="${employee != null}">
					<input type="hidden" name="id" value="<c:out value='${employee.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>First Name</label> <input type="text"
						value="<c:out value='${employee.firstName}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Last Name</label> <input type="text"
						value="<c:out value='${employee.lastName}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<c:out value='${employee.email}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${employee.username}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Password</label> <input type=password
						value="<c:out value='${employee.password}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${employee.address}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Contact Number</label> <input type="text"
						value="<c:out value='${employee.contact}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Department</label> <input type="text"
						value="<c:out value='${employee.department}' />" class="form-control"
						name="email">
				</fieldset>
				<fieldset class="form-group">
					<label>Salary</label> <input type="text"
						value="<c:out value='${user.salary}' />" class="form-control"
						name="country">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html> --%>