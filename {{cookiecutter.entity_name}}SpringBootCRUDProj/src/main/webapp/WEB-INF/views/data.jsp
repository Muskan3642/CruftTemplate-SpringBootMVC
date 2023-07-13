<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Data Page</title>

<style>
	body {
		font-family: Arial, sans-serif;
		margin: 0;
		padding: 0;
		background-color: #f2f2f2;
	}

	.container {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}

	.content {
		text-align: center;
	}

	h2 {
		color: #333;
		margin-bottom: 20px;
	}

	h4 {
		color: #777;
	}

	table {
		border-collapse: collapse;
		width: 100%;
	}

	th, td {
		padding: 10px;
		border: 1px solid #ccc;
		text-align: left;
	}

	th {
		background-color: #f2f2f2;
	}

	a {
		text-decoration: none;
		color: #337ab7;
		margin-right: 10px;
	}

	a:hover {
		text-decoration: underline;
	}

	.register-link {
		margin-top: 20px;
	}

	.msg {
		margin-top: 10px;
		color: #777;
	}
</style>

</head>
<body>

<div class="container">
	<div class="content">
		<h2>Welcome to the Customer Data Page</h2>

		<c:if test="${empty list}">
			<h4>No Data Found</h4>
		</c:if>

		<c:if test="${!empty list}">
			<table>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Action</th>
				</tr>

				<c:forEach items="${list}" var="ob">
					<tr>
						<td>${ob.id}</td>
						<td>${ob.name}</td>
						<td>${ob.email}</td>
						<td>${ob.phno}</td>
						<td><a href="/customerSpringBootCRUDProj/view?id=${ob.id}">View</a></td>
					</tr>
				</c:forEach>

			</table>
		</c:if>

		<a href="/customerSpringBootCRUDProj/reg" class="register-link">Register</a> ${msg} &nbsp;
		<a href="/customerSpringBootCRUDProj/all">Show All</a>
	</div>
</div>

</body>
</html>
