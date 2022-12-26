<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.com">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Room | Sign up</title>
<!-- Font Icon -->
<link rel="stylesheet" href="/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="/admin/css/style.css">
<!-- Main js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
<style>
#wrapper
{
  width:220px;
  border: 1px solid #888;
  display: inline-block;
  padding:20px;
  margin:20px;
  
}
.btn{
width:100px;
border:2px solid black;
border-radius:20px;
background-color:#6dabe4;
margin-bottom:50px
}

</style>
</head>
<body>
	<center><h3>ADD NEW HOTEL ROOM</h3></center>
	<!-- Sign up form -->
	<section class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h3 class="form-title">ENTER ROOM DETAILS</h3>
					<form class="register-form" name="register-form" id="register-form" >
					
					
						<div class="form-group">
							<label for="hotelname"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="hotelname" id="hotelname" placeholder="Hotel Name" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<div class="form-group">
						    <label for="managername"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="managername" id="managername" placeholder="Manager Name" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<div class="form-group">
						    <label for="manageremail"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input type="email" name="manageremail" id="manageremail" placeholder="Manager Email" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<div class="form-group">
						    <label for="address"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="address" id="address" placeholder="Full Address" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<div class="form-group">
							<label for="city"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="city" id="city" placeholder="city" />
							<div class="help-block" id="error_city"></div>
						</div>
						
					     <div class="form-group">
							<label for="state"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="state" id="state" placeholder="State" />
							<div class="help-block" id="error_state"></div>
						</div>
						
						<div class="form-group">
						    <label for="pincode"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="pincode" id="pincode" placeholder="Pin Code" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<div class="form-group">
						    <label for="price"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="price" id="price" placeholder="Price" />
							<div class="help-block" id="error_name"></div>
						</div>
						
						<!-- -------------------------------facilities------------------------------------ -->
						  <p><b>Select Facilities Provided By you</b></p>
						
					<div class="facility">
						
							  <div id="wrapper">
							  <p>Do you have Parking Facility?</p>
							  <p><input type="radio" name="parking" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="parking" value="no" >No</p>
							  </div> 
							  
							   <div id="wrapper">
							  <p>Do you have Free Wifi?</p>
							  <p><input type="radio" name="wifi" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="wifi" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Swimming Pool?</p>
							  <p><input type="radio" name="pool" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="pool" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Gym?</p>
							  <p><input type="radio" name="gym" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="gym" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Spa?</p>
							  <p><input type="radio" name="spa" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="spa" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Play-Ground?</p>
							  <p><input type="radio" name="playground" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="playground" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Power Backup?</p>
							  <p><input type="radio" name="powerbackup" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="powerbackup" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Elevator?</p>
							  <p><input type="radio" name="elevator" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="elevator" value="no" >No</p>
							  </div> 
							  
							  <div id="wrapper">
							  <p>Do you have Emergency FirstAid kit?</p>
							  <p><input type="radio" name="firstaid" value="yes" checked>Yes</p>
							  <hr>
							  <p><input type="radio" name="firstaid" value="no" >No</p>
							  </div> 
									
						</div>

						<!-- -------------------------------Images------------------------------------ -->
						  <p><b>Upload Some Room Images</b></p>
						
						<div class="form-group">
							<label for="attachment"><i class="zmdi zmdi-file"></i></label>
							<input type="file" name="file1" accept="*" id="file1" />
							<div class="help-block" id="error_file"></div>
						</div>
						
						<div class="form-group">
							<label for="attachment"><i class="zmdi zmdi-file"></i></label>
							<input type="file" name="file2" accept="*" id="file2" />
							<div class="help-block" id="error_file"></div>
						</div>
						
						<div class="form-group">
							<label for="attachment-3"><i class="zmdi zmdi-file"></i></label>
							<input type="file" name="file3" accept="*" id="file3" />
							<div class="help-block" id="error_file"></div>
						</div>
						
						<div class="form-group">
							<label for="attachment-4"><i class="zmdi zmdi-file"></i></label>
							<input type="file" name="file4" accept="*" id="file4" />
							<div class="help-block" id="error_file"></div>
						</div>
						
							<div class="form-group">
							<label for="attachment-5"><i class="zmdi zmdi-file"></i></label>
							<input type="file" name="file5" accept="*" id="file5" />
							<div class="help-block" id="error_file"></div>
						</div>
						
						<div class="form-group form-button">
							<input type="button" id="signup" class="form-submit" value="Submit" />
						</div>
					</form><br>
					<center><div id="success" style="color: green;font-weight: bold;font-size: 15px;"></div></center>
					<center><div id="error" style="color: red;font-weight: bold;font-size: 15px;"></div></center>
  <center>
  <img src="/images/loader.gif" alt="loader" style="width: 130px;height: 100px;" id="loader">
  </center>
				</div>
				<div class="signup-image">
					<figure>
						<img src="/admin/images/signup-image.jpg" alt="sing up image">
					</figure>
				</div>
				
				
			</div>
			<!-- ---------------------- -->
				<div style="display: flex; justify-content: space-between; margin-left:250px;margin-right:250px; margin-bottom:50px;">
						<div class="btn"><a href="${pageContext.request.contextPath}/viewrooms"
							class="signup-image-link">View Rooms</a></div> 
							<div class="btn"><a href="${pageContext.request.contextPath}/home"
							class="signup-image-link">Go Home</a></div>
					</div>
		</div>
		
	</section>

	<!-- JS -->
	<script src="/admin/vendor/jquery/jquery.min.js"></script>
	<script src="/admin/js/main.js"></script>
</body>
</html>