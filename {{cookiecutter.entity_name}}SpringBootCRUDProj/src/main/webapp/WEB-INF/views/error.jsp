<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Error Page</title>

<style>
	body {
		font-family: Arial, sans-serif;
		margin: 20px;
	}

	h2 {
		color: #333;
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

<h2>There was some error. Please go to the Home Page.</h2>

<a href="/customerSpringBootCRUDProj/">Home</a>

</body>
</html>
