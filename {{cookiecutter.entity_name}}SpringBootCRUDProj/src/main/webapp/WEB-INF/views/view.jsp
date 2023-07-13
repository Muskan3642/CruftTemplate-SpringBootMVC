<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer View Page</title>

<style>
	body {
		font-family: Arial, sans-serif;
		margin: 20px;
	}

	h2 {
		color: #333;
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
		display: inline-block;
		padding: 10px 20px;
		border: none;
		border-radius: 4px;
		background-color: #337ab7;
		color: #fff;
		text-decoration: none;
		margin-right: 10px;
	}

	a:hover {
		background-color: #23527c;
	}

	.msg {
		margin-top: 10px;
		color: #777;
	}
</style>

</head>
<body>

<h2>Welcome to the Customer View Page</h2>

<table>
	<tr>
		<th>Id</th>
		<td>${emp.id}</td>
	</tr>
	<tr>
		<th>Name</th>
		<td>${emp.name}</td>
	</tr>
	<tr>
		<th>Email</th>
		<td>${emp.email}</td>
	</tr>
	<tr>
		<th>Phone Number</th>
		<td>${emp.phno}</td>
	</tr>

	<tr>
		<th>Delete</th>
		<td>
			<a href="/customerSpringBootCRUDProj/delete?id=${emp.id}">Delete</a>
		</td>
	</tr>
	<tr>
		<th>Update</th>
		<td>
			<a href="/customerSpringBootCRUDProj/getUpdate?id=${emp.id}">Update</a>
		</td>
	</tr>
</table>

<a href="/customerSpringBootCRUDProj/all">View All</a>
<a href="/customerSpringBootCRUDProj/reg">Register</a>
<a href="/customerSpringBootCRUDProj/">Home</a>

<p class="msg">${msg}</p>

</body>
</html>
