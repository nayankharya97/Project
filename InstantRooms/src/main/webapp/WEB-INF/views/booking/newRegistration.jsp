<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Registration</title>
<link href="<c:url value="/booking/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/booking/styles.css" />" rel="stylesheet">
<style>
.form-control
{
border-radius:10px;
padding:10px;
margin:10px 0;
width:100%;
border:1px solid #999;
outline:none;}

h1
{
color:#1c8adb;
margin-bottom:30px;
text-align:center;
}

</style>
</head>

<body class="login-bg">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Logo -->
					<div class="logo">
						<h1></h1>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
					<div class="box">
						<div class="content-wrap">
						
					<h1>Create Account </h1>
						<label><c:if test="${loginError }">Login is already in use. Try another</c:if></label>
							<form:form modelAttribute="newUser">
						<!-- 	<label>Email*</label> -->
							<form:input class="form-control" placeholder="Enter Your Email*" path="email"/>
							<form:errors path="email"></form:errors><br>
						<!-- 	<label>Create Password*</label> -->
							<form:input class="form-control" placeholder="Create Your Password*" path="password"/>
							<form:errors path="password"></form:errors><br>
						<!-- 	<label>Name*</label> -->
							<form:input class="form-control" placeholder="Enter Your Full Name*" path="name"/>
							<form:errors path="name"></form:errors><br>
						<!-- 	<label>Phone no*</label> -->
							<form:input class="form-control" placeholder="Enter Your Contact no*" path="contactno"/>
						
							
							
								
								<div class="action">
									<button type="submit" class="btn btn-primary signup">
										Registration
									</button>
								</div>
							</form:form>
						</div>
					</div>
					<div class="already">
						<p>
							Have account already?
						</p>
						<a href="/book">Login</a>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/booking/bootstrap.min.js"></script>
<!-- 	<script src="resources/js/custom.js"></script> -->
</body>
</html> 
