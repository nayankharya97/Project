<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Room | Home</title>
<!-- Main css -->
<link rel="stylesheet" href="/admin/css/style.css">
<style>

.btn{
margin-left:250px;
}

.btn a{
width:100px;
border:2px solid black;
border-radius:20px;
background-color:#6dabe4;
margin-bottom:50px
}

</style>
</head>
<body>
<jsp:include page="../template/logoutheader.jsp" />

<br> <br> <br>
	<!-- Sign up form -->
	<section class="signup">
		<div class="container">
			<br>
			<center><h2>Admin Panel For Creating Rooms</h2></center>
			<div class="signup-image">

				<div style="display: flex; justify-content: space-between;" class="btn">
					<a href="${pageContext.request.contextPath}/sign-up" class="signup-image-link">Add Rooms</a> 
					<a href="${pageContext.request.contextPath}/viewrooms" class="signup-image-link">View Rooms</a>
					<%-- <a href="${pageContext.request.contextPath}/image-upload/viewrooms" class="signup-image-link">View Rooms</a> --%>
				</div>
			</div>
			<br> <br> <br>
		</div>
	</section>
</body>
</html>