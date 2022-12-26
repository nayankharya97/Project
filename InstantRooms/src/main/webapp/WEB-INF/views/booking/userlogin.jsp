<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script>
var addr = new URLSearchParams(window.location.search);
var id = addr.get("id");
localStorage.setItem("hotel_id", id);

</script>
<title>Welcome</title>
<!-- <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" /> -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link href="/booking/logincss.css" rel="stylesheet"/>
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
.login-wrapper{
margin-top:100px;
}

</style>
</head>
<body class="login-bg">
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
		</div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
					<div class="box">
						<div class="content-wrap">
							
								<h1>Sign In Now</h1>
						
							<form action="/generateBill" method="POST">
							<label><c:if test="${loginError}">Entered login id or password not found</c:if></label>
								 <input class="form-control" name="login" type="email"
									placeholder="Enter Your Email*" value="${loginValue}"><br>
									<input class="form-control"
									name="password" type="password" placeholder="Enter Your Password*">
									<input type="checkbox" style="visibility:hidden;" name="hotelid" id="hotelid" checked>
								<div class="action">
									<input class="btn btn-primary signup" type="submit"
										value="Submit">
								</div>
							</form>
							<script>
							var id = localStorage.getItem("hotel_id")
							hotelid.value=id
						</script>
						</div>
					</div>
					 <div class="already">
			            <p>Haven't account already?</p>
			            <a style="color:white;" class="btn btn-primary" href="/registration">Registration</a>
			        </div>
				</div>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- <script src="https://code.jquery.com/jquery.js"></script> -->
</body>
</html>