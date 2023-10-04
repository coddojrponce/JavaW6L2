<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/style.css/"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script defer src="/js/script.js"></script>

</head>
<body class="h-fit">
	<div class="bold text-white w-full p-4 bg-primary shadow">
	My Cool App
	</div>
	<div class="w-full min-vh-100 h-fit bg-light p-4 d-flex justify-content-center">
	
		<div id="register-form" class="rounded h-fit w-50 border p-4">
			<h2>Register</h2>
			<form:form class="d-flex flex-column gap-2" action="/register" modelAttribute="register">
				<div class="w-full d-flex flex-column">
					<form:label path="firstName">First Name:</form:label>
					<form:input class="border ring-secondary rounded" path="firstName"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="firstName"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="lastName">Last Name:</form:label>
					<form:input class="border ring-secondary rounded" path="lastName"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger"  path="lastName"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="email">Email:</form:label>
					<form:input class="border ring-secondary rounded" path="email"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="email"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="password">Password:</form:label>
					<form:input class="border ring-secondary rounded" path="password"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="password"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="confirm">Confirm Password:</form:label>
					<form:input class="border ring-secondary rounded" path="confirm"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="confirm"></form:errors>
				</div>
				<div>
					<input class="btn btn-primary" type="submit" value="Register" />
				</div>
				
				<div class="d-flex justify-content-center">
								<p onclick="login()" id="login-instead" class="blink text-primary bold">log in instead !</p>
				
				</div>
			
			</form:form>
		</div>	
		
		<div id="login-form" class="hide rounded h-fit w-50 border p-4">
			<h2>Login</h2>
			<form:form class="d-flex flex-column gap-2" action="/login" modelAttribute="login">
				
				<div class="w-full d-flex flex-column">
					<form:label path="email">Email:</form:label>
					<form:input  class="border ring-secondary rounded" path="email"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="email"></form:errors>
				</div>
				<div class="w-full d-flex flex-column">
					<form:label path="password">Password:</form:label>
					<form:input class="border ring-secondary rounded" path="password"></form:input>
					<form:errors class=" m-1 p-1 text-white rounded bg-danger" path="password"></form:errors>
				</div>
				
				<div>
					<input class="btn btn-primary" type="submit" value="Login" />
				</div>
				
				<div class="d-flex justify-content-center">
						<p onclick="register()" id="login-instead" class="blink text-primary bold">Register instead !</p>
				
				</div>
			
			</form:form>
		</div>
		
		<div>
		</div>
	
	</div>
	
	

</body>
</html>