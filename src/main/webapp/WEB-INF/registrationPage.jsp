<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formatting (dates) -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- form:form -->
<%@ page isErrorPage="true"%>
<!-- for rendering errors on PUT routes -->

<!--/////////////////////////////////////////////////////
//	REGISTRATION PAGE JSP
///////////////////////////////////////////////////////// -->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- //// CSS LINKS //////////////////////////////////////// -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<title>TITLE</title>
</head>
<body>
	<!-- //// HEADER /////////////////////////////////////////// -->
	<header>
		<div class="navbar navbar-dark bg-dark box-shadow">
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"> <strong
					class="text-warning">TITLE</strong>
				</a> <a class="btn btn-secondary " href="/">HOME</a>
			</div>
		</div>
	</header>

	<!-- //// MAIN AREA //////////////////////////////////////// -->
	<main role="main">
		<div class="container mt-4">
			<h1>Register!</h1>

			<p>
				<form:errors path="user.*" />
			</p>

			<form:form method="POST" action="/registration" modelAttribute="user">
				<p>
					<form:label path="username">Username:</form:label>
					<form:input path="username" />
				</p>
				<p>
					<form:label path="password">Password:</form:label>
					<form:password path="password" />
				</p>
				<p>
					<form:label path="passwordConfirmation">Password Confirmation:</form:label>
					<form:password path="passwordConfirmation" />
				</p>
				<input type="submit" value="Register!" />
			</form:form>
		</div>
	</main>


	<!-- //// JAVASCRIPT LINKS ///////////////////////////////// -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>