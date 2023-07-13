<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Register/Edit Page</title>

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

	.form-container {
		background-color: #fff;
		padding: 20px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	}

	h3 {
		color: #333;
		margin-bottom: 10px;
	}

	form {
		margin-top: 10px;
	}

	label {
		display: block;
		margin-bottom: 10px;
		font-weight: bold;
	}

	input[type="text"] {
		padding: 5px;
		border: 1px solid #ccc;
		width: 200px;
	}

	input[type="submit"] {
		padding: 5px 10px;
		border: none;
		background-color: #337ab7;
		color: #fff;
		cursor: pointer;
	}

	input[type="submit"]:hover {
		background-color: #23527c;
	}

	a {
		text-decoration: none;
		color: #337ab7;
		margin-right: 10px;
	}

	a:hover {
		text-decoration: underline;
	}

	.msg {
		margin-top: 10px;
		color: #777;
	}
</style>

</head>
<body>

<div class="container">
	<div class="form-container">
		<c:choose>
			<c:when test="${'edit' eq mode}">
				<h3>Welcome to the Customer Edit Page</h3>
				<c:set var="eid" value="${id}" ></c:set>
			</c:when>
			<c:otherwise>
				<h3>Welcome to the Customer Registration Page</h3>
			</c:otherwise>
		</c:choose>

		<form:form action="save" method="post" modelAttribute="employee">

			<c:if test="${'edit' eq mode}">
				<label for="id">ID:</label>
				<form:input path="id" id="id" readonly="true"/>
			</c:if>

			<label for="name">Name:</label>
			<form:input path="name" id="name"/>

			<label for="email">Email:</label>
			<form:input path="email" id="email"/>

			<label for="phno">Phone Number:</label>
			<form:input path="phno" id="phno"/>

			<c:choose>
				<c:when test="${'edit' eq mode}">
					<input type="submit" value="Update Customer">
				</c:when>
				<c:otherwise>
					<input type="submit" value="Register Customer">
				</c:otherwise>
			</c:choose>

		</form:form>

		<p class="msg">${msg}</p>

		<a href="/customerSpringBootCRUDProj/all">Show All</a>
		<a href="/customerSpringBootCRUDProj/">Home</a>
	</div>
</div>

</body>
</html>
