<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>{{cookiecutter.entity_name}} Welcome Page</title>
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
</style>
</head>
<body>

<h2>Welcome to {{cookiecutter.entity_name}} Website</h2>

<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/all">View All</a> &nbsp;
<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/reg">Register</a>

</body>
</html>