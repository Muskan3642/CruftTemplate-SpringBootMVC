<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>{{cookiecutter.entity_name}} Register/Edit Page</title>
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

<c:choose>
	<c:when test="${'edit' eq mode }">
		<h3>Welcome to {{cookiecutter.entity_name}} Edit Page</h3>
		<c:set var="eid"  value="${id}" ></c:set>
	</c:when>
	<c:otherwise>
		<h3>Welcome to {{cookiecutter.entity_name}} Registration Page</h3>
	</c:otherwise>
</c:choose>

<pre>
<form:form action="save" method="post" modelAttribute="employee">

<c:if test="${'edit' eq mode }">
Id     : <form:input path="id"  readOnly="true"/>	
</c:if>

{{cookiecutter.attribute1}}     : <form:input path="{{cookiecutter.attribute1}}"/>

{{cookiecutter.attribute2}}   	 : <form:input path="{{cookiecutter.attribute2}}"/>

{{cookiecutter.attribute3}}   : <form:input path="{{cookiecutter.attribute3}}"/>

<c:choose>
	<c:when test="${'edit' eq mode }">
		<input type="submit" value="Update {{cookiecutter.entity_name}}">
	</c:when>
	<c:otherwise>
		<input type="submit" value="Register {{cookiecutter.entity_name}}">
	</c:otherwise>
</c:choose>

</form:form>

</pre>

${msg}

<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/all">Show All</a> &nbsp;
<a href="/{{cookiecutter.entity_name}}SpringBootCRUDProj/">Home</a>



</body>
</html>