<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.com">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Rooms | All Rooms</title>
<!-- Main css -->
<!-- <link rel="stylesheet" href="/css/style.css"> -->
<link rel="stylesheet" href="/admin/css/styles.css">
<link rel="stylesheet" href="/admin/css/test.css"> 
</head>
<body style="background-color:#F0F3F4;">	
<jsp:include page="../template/logoutheader.jsp" />
<br>
	<!-- Rooms Adding form -->
	<section class="signup">
		
				<br>
				<!--  add our html table here -->
				<c:set var="count" value="0" scope="page" /><br><div class="content-box-header panel-heading">
							<div class="panel-title ">

								<input type="text" id="myInput" onkeyup="myFunction()"
									placeholder="Search for names..">
									
							</div>
						</div><br><br>
				
				
				
				<table border="1" style="border: 1px solid black;" id="myTable">
					<tr>
						<th>ID</th>
						<th>Hotel Name</th>
						<th>Manager Name</th>
						<th>Manager Email</th>
						<th>Hotel Address</th>
						<th>City</th>
						<th>State</th>
						<th>PinCode</th>
						<th>Price Without Offer</th>
						<th>Price With Offer</th>
						<th>Star Rating</th>
						
						<th>Facilities</th>
						
						
					<!-- 	<th>File Name</th>
						<th>File Size</th>
						<th>File Type</th> -->
						<th>Image 1</th>
						<th>Image 2</th>
						<th>Image 3</th>
						<th>Image 4</th>
						<th>Image 5</th>
						<th>Image 6</th>
						<th>Image 7</th>
						<th>Image 8</th>
						
						<th>Created Date</th>
						<th>Delete</th>
						<th>Edit</th>
					</tr>
			<c:choose>
				<c:when test="${not empty roomList}">
					<!-- loop over and print our employees -->
				<c:forEach var="theRoom" items="${roomList}">
				<%-- <c:set var="count" value="${count + 1}" scope="page"/> --%>
					<tr>
						<td>${theRoom.id}</td>
						<td>${theRoom.hotelName} </td>
						<td>${theRoom.managerName}</td>
						<td>${theRoom.managerEmail}</td>
						<td>${theRoom.address}</td>
						<td>${theRoom.city} </td>
						<td>${theRoom.state} </td>
						<td>${theRoom.pinCode}</td>
						<td>${theRoom.priceWithoutOffers}</td>
						<td>${theRoom.priceWithOffers}</td>
						<td>${theRoom.starRating}</td>
						
						<td>${theRoom.facility}</td>
						
					<%-- 	<td> ${theEmployee.fileName} </td>
						<td> ${theEmployee.fileSize} </td>
						<td> ${theEmployee.fileType} </td> --%>
						<td><img src="/uploads/${theRoom.fileName1}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName2}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName3}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName4}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName5}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName6}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName7}" width="170" height="150" /> </td>
						<td><img src="/uploads/${theRoom.fileName8}" width="170" height="150" /> </td>
						<td> ${theRoom.createdDate} </td>
		<td> 
		
						<a href="/delete?id=${theRoom.id}" class="btn btn-sm btn-danger">Delete</a>
		</td>
		<td><a class="btn btn-sm btn-primary"
						th:href="@{/edit/{id}(id=${theRoom.id})}">Edit</a></td>
					</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
					<center><h1>No Room Found.</h1></center>
				</c:otherwise>
			</c:choose>
				
</table>

				<br><br>
				<div style="display: flex; justify-content: space-between;">
						<a href="${pageContext.request.contextPath}/viewrooms"
							class="signup-image-link">View Rooms</a>
							<a href="${pageContext.request.contextPath}/sign-up" class="signup-image-link">Add Rooms</a> 
							 <a
							href="${pageContext.request.contextPath}/home"
							class="signup-image-link">Go Home</a>
					</div>
			
			<br> <br> <br>
	
	</section>
	
	<script>
		function myFunction() {
			// Declare variables 
			var input, filter, table, tr, td, i;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[1];
				if (td) {
					if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
	
</body>
</html>