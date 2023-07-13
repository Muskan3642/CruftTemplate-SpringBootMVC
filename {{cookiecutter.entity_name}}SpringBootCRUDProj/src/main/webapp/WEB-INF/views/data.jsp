<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>{{cookiecutter.entity_name}} Data Page</title>

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

	<h2>Welcome To {{cookiecutter.entity_name}} Data Page</h2>

	<c:if test="${empty list}">
		<h4>No Data Found</h4>
	</c:if>


	<c:if test="${!empty list}">

		<table border=2>
			<tr>
				<th>Id</th>
				<th>{{cookiecutter.attribute1}}</th>
				<th>{{cookiecutter.attribute2}}</th>
				<th>{{cookiecutter.attribute3}}</th>
			</tr>

			<c:forEach items="${list}" var="ob">
				<tr>
					<td>${ob.id}</td>
					<td>${ob.{{cookiecutter.attribute1}}}</td>
					<td>${ob.{{cookiecutter.attribute2}}}</td>
					<td>${ob.{{cookiecutter.attribute3}}}</td>
					<td><a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/view?id=${ob.id}">View</a></td>
				</tr>
			</c:forEach>

		</table>

	</c:if>

	<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/reg">Register</a> ${msg} &nbsp;
	<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/">Home</a> ${msg}

</body>
</html>