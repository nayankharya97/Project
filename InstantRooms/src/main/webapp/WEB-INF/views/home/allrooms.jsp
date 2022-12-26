<%@page import="com.instantrooms.entity.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.com">

<head>

<script>
var addr = new URLSearchParams(window.location.search);
var startdate = addr.get("startdate");
var enddate = addr.get("enddate");
var roomcount = addr.get("roomcount");
localStorage.setItem("startdate", startdate);
localStorage.setItem("enddate", enddate);
localStorage.setItem("roomcount", roomcount);
</script>


  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>All Rooms</title>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
    crossorigin="anonymous"></script>

  <style>
    .ratingchecked {
      color: orange;
    }

    .carousel-inner>.carousel-item>img {
      height: 310px;
    }
  </style>

  

</head>

<body onload="checkStorage();">
<% String currentCity = (String)request.getAttribute("currentCity");%> 
  <div class="col-md-12">
    <div class="row">
      <div
        style="margin-left:20px;margin-top: 15px;width: max-content; padding-right:20px;margin-left: 20px;position:fixed;"
        class="col-md-3 border-right">


          <div class="border-bottom">

          <div style="padding-left: 30px;" class="slider-container"><label for="myRange"
              style="font-size: large; margin-top: 20px;margin-top: 10px;"
              class=" font-weight-bold text-dark">Price</label><br>
            <p class="col-md-12 row">
            <p style="color: green;font-size: large;">&#x20b9;<span style="font-size: 20px;" class="text-red" id="demo"></span>
            </p>
          </div>
          <input style="width: 250px;margin-left: 25px;" type="range" id="myRange" class="slider" min="500" max="5000">

          </p>
        </div> 
					<!-- --------------checkboxes------------- -->
        <div style="padding-left: 30px; padding-right: 50px; margin-top: ;">
          <div style="margin-top: 20px;"><label for="facilities" style="font-size: x-large;"
              class="font-weight-bold text-dark">Facilities</label></div>
              
          <form action="/applyfilter" method="get">
          
          <input style="visibility:hidden;" class="form-check-input" type="checkbox" name="city" value="<%=currentCity%>" checked>
          
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="parking" id="parking">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Parking
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="wifi" id="wifi">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                WiFi
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="pool" id="pool">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Pool
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="gym" id="gym">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Gym
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="spa" id="spa">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Spa
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="playground" id="playground">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Playground
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="powerBackup" id="powerBackup">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Power Backup
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="elevator" id="elevator">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                Elevator
              </label>
            </div>
            <div style="font-size: 110%;margin-left: 20px;margin-top: 20px;">
              <input style="size:50px;" class="form-check-input" type="checkbox" xyz="off" name="facility" value="firstAid" id="firstAid">
              <label style="margin-left: 10px;" class="form-check-label" for="flexCheckDefault">
                First Aid
              </label>
            </div>
            <input style="margin-top: 40px;margin-left:10px;" class="btn btn-primary" type="submit"
              value="Apply Filters">
          </form>

        </div>
      </div>
      
     			 <!------------------ checkbox script---------------------- -->
     			 
     			 <script>
     			 
     			 document.getElementById("parking").addEventListener("click", ()=>{
     	            if(document.getElementById("parking").getAttribute("xyz") == "off"){
     	                document.getElementById("parking").setAttribute("xyz", "on");
     	                localStorage.setItem("parking", "on");
     	            }else{
     	                document.getElementById("parking").setAttribute("xyz", "off");
     	                localStorage.removeItem("parking");
     	            }
     	        });
     	        
     	        document.getElementById("wifi").addEventListener("click", ()=>{
     	            if(document.getElementById("wifi").getAttribute("xyz") == "off"){
     	                document.getElementById("wifi").setAttribute("xyz", "on");
     	                localStorage.setItem("wifi", "on");
     	            }else{
     	                document.getElementById("wifi").setAttribute("xyz", "off");
     	                localStorage.removeItem("wifi");
     	            }
     	        });
     	        
     	        document.getElementById("pool").addEventListener("click", ()=>{
     	            if(document.getElementById("pool").getAttribute("xyz") == "off"){
     	                document.getElementById("pool").setAttribute("xyz", "on");
     	                localStorage.setItem("pool", "on");
     	            }else{
     	                document.getElementById("pool").setAttribute("xyz", "off");
     	                localStorage.removeItem("pool");
     	            }
     	        });
     	        
     	        document.getElementById("gym").addEventListener("click", ()=>{
     	            if(document.getElementById("gym").getAttribute("xyz") == "off"){
     	                document.getElementById("gym").setAttribute("xyz", "on");
     	                localStorage.setItem("gym", "on");
     	            }else{
     	                document.getElementById("gym").setAttribute("xyz", "off");
     	                localStorage.removeItem("gym");
     	            }
     	        });
     	        
     	        document.getElementById("powerBackup").addEventListener("click", ()=>{
     	            if(document.getElementById("powerBackup").getAttribute("xyz") == "off"){
     	                document.getElementById("powerBackup").setAttribute("xyz", "on");
     	                localStorage.setItem("powerBackup", "on");
     	            }else{
     	                document.getElementById("powerBackup").setAttribute("xyz", "off");
     	                localStorage.removeItem("powerBackup");
     	            }
     	        });
     	        
     	        document.getElementById("firstAid").addEventListener("click", ()=>{
     	            if(document.getElementById("firstAid").getAttribute("xyz") == "off"){
     	                document.getElementById("firstAid").setAttribute("xyz", "on");
     	                localStorage.setItem("firstAid", "on");
     	            }else{
     	                document.getElementById("firstAid").setAttribute("xyz", "off");
     	                localStorage.removeItem("firstAid");
     	            }
     	        });

     	        document.getElementById("elevator").addEventListener("click", ()=>{
     	            if(document.getElementById("elevator").getAttribute("xyz") == "off"){
     	                document.getElementById("elevator").setAttribute("xyz", "on");
     	                localStorage.setItem("elevator", "on");
     	            }else{
     	                document.getElementById("elevator").setAttribute("xyz", "off");
     	                localStorage.removeItem("elevator");
     	            }
     	        });

     	        document.getElementById("playground").addEventListener("click", ()=>{
     	            if(document.getElementById("playground").getAttribute("xyz") == "off"){
     	                document.getElementById("playground").setAttribute("xyz", "on");
     	                localStorage.setItem("playground", "on");
     	            }else{
     	                document.getElementById("playground").setAttribute("xyz", "off");
     	                localStorage.removeItem("playground");
     	            }
     	        });
     	        
     	        document.getElementById("spa").addEventListener("click", ()=>{
     	            if(document.getElementById("spa").getAttribute("xyz") == "off"){
     	                document.getElementById("spa").setAttribute("xyz", "on");
     	                localStorage.setItem("spa", "on");
     	            }else{
     	                document.getElementById("spa").setAttribute("xyz", "off");
     	                localStorage.removeItem("spa");
     	            }
     	        });
     	        
     	        
     	        function checkStorage(){
     	            if(localStorage.getItem("parking") == "on"){
     	                document.getElementById("parking").click();
     	                document.getElementById("parking").setAttribute("xyz", "on");
     	            }
     	            if(localStorage.getItem("wifi") == "on"){
     	                document.getElementById("wifi").click();
     	                document.getElementById("wifi").setAttribute("xyz", "on");
     	            }
     	            if(localStorage.getItem("firstAid") == "on"){
     	                document.getElementById("firstAid").click();
     	                document.getElementById("firstAid").setAttribute("xyz", "on");
     	            }
     	            
     	            if(localStorage.getItem("elevator") == "on"){
     	                document.getElementById("elevator").click();
     	                document.getElementById("elevator").setAttribute("xyz", "on");
     	            }
     	            
     	            if(localStorage.getItem("playground") == "on"){
     	                document.getElementById("playground").click();
     	                document.getElementById("playground").setAttribute("xyz", "on");
     	            }
     	            if(localStorage.getItem("gym") == "on"){
     	                document.getElementById("gym").click();
     	                document.getElementById("gym").setAttribute("xyz", "on");
     	            }
     	            
     	            if(localStorage.getItem("spa") == "on"){
     	                document.getElementById("spa").click();
     	                document.getElementById("spa").setAttribute("xyz", "on");
     	            }
     	            
     	            if(localStorage.getItem("powerBackup") == "on"){
     	                document.getElementById("powerBackup").click();
     	                document.getElementById("powerBackup").setAttribute("xyz", "on");
     	            }
     	            if(localStorage.getItem("pool") == "on"){
     	                document.getElementById("pool").click();
     	                document.getElementById("pool").setAttribute("xyz", "on");
     	            }
     	        }
     			 
     			 
     			 </script>
      
      <!-- ----------------------------Sorting-------------------------------- -->
      
      <div class="col-md-9" style="margin-left: 350px;">

        <div style="padding-top:50px;padding-bottom: 8px;" class="col-md-12 border-bottom">
          <div class="row">

            <p class="col-md-1" style="font-size: medium;margin-top: 4px;"></p>
            <select style="width: 200px;margin-bottom: 20px;" class="form-select" aria-label="Default select example"
              id='sortselect'>
              <option selected="" disabled="">----- Price Range -----</option>
              <option value="pOne">Under &#x20b9;1000</option>
              <option value="pTwo">Under &#x20b9;2000</option>
            <!--   <option value="pThree">Under &#x20b9;3000</option> -->
              <option value="pAbove">Above &#x20b9;2000</option>
            </select>
            <p class="col-md-1" style="font-size: medium;margin-top: 4px;margin-right: 150px;"></p>
            <select style="width: 200px;margin-bottom: 20px;" class="form-select" aria-label="Default select example"
              id='pselect'>
              <option>------ Sort By ------</option>
              <option value="sLow">Price Low To High</option>
              <option value="sHigh">Price High To Low</option>
              <option value="sRating">Guest Ratings</option>
            </select>
          </div>
        </div>
        
        <!-- -----------------------------------loop starts---------------------------------- -->
        
        <c:choose>
				<c:when test="${not empty rooms}">
					<!-- loop over and print our employees -->
				<c:forEach var="room" items="${rooms}">
				
				
        
        <div class="col-md-12">
          <div style="margin-top: 30px;" class="row">
           
           <!--Image Slider Without Css-->

            <div style="width: 630px;" id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-interval="false">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="/uploads/${room.fileName1}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName2}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName3}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName4}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName5}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName6}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName7}" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="/uploads/${room.fileName8}" class="d-block w-100" alt="...">
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>

<!---------------------------------details-------------------------------  -->
            
            <div class="col-md-5">
              <p style="font-size: x-large;" class="font-weight-bold text-dark"><a href="/roomDetailPage?id=${room.id}" style="text-decoration:none; color:brown;">${room.hotelName}</a></p>
              <p style="opacity: 90%;font-size: medium;" class="font-weight-bold">${room.address}</p>
              <p style="font-size: medium;" class="font-weight-bold">${room.city}</p>
              
       <!-- -----------------------------------Star Rating-------------------------------  -->
       
       
             
<c:set var="star" value="${room.starRating }" />
<c:if test="${star==5}">
<div style="margin-top: 20px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span style="margin-left:10px;color:#57e32c"><b> Excellent</b></span>
</div> 
</c:if>

<c:if test="${star==4}">
<div style="margin-top: 20px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#b7dd29"><b> Very Good</b></span>
</div> 
</c:if>

<c:if test="${star==3}">
<div style="margin-top: 20px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ffe234"><b> Average</b></span>
</div> 
</c:if>

<c:if test="${star==2}">
<div style="margin-top: 20px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ffa534"><b> Bad</b></span>
</div> 
</c:if>

<c:if test="${star==1}">
<div style="margin-top: 20px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ff4545"><b> Worst</b></span>
</div> 
</c:if>
              <!-- ----------------------------------------------- -->
              
              
              <div style="margin-top: 20px;" class="row">
                <div class="col-md-12">
                  <i style="padding-right: 5px;margin-left: 5px;" class='fas fa-parking'></i>
                  <span>Parking Facility</span><i style="padding-right: 5px;margin-left: 10px;"
                    class='fas fa-door-open'></i><span>Private Entrance</span><i
                    style="padding-right: 5px;margin-left: 10px;" class='fas fa-user-shield'></i><span>Reception</span>
                </div>

              </div>

<!-- -------------------------------price---------------------------------- -->

              <div class="col-md-12">
                <div class="row">
                  <div class=" col-md-7">

                    <div class="row">
                      <div>
                        <div class="row">
                          <div style="margin-top: 20px;">
                            <span style="font-size: xx-large;" class="text-success">&#x20b9;${room.priceWithOffers}</span><span
                              style="font-size: x-large;text-decoration: line-through;margin-left: 10px;"
                              class="text-danger">&#x20b9;${room.priceWithoutOffers}</span><br>
                            <span class="text-warning" style="margin-left:8px;">${room.discount}% off</span>
                          </div>
                          <p style="margin-left:5px;opacity:50%;font-size:small;">per room per night</p>
                        </div>


                      </div>
                    </div>
                  </div>
                  <div class="col-md-5">

                    <button style="margin-top: 60px;margin-left: 15px;" type="button" class="btn btn-success"><a href="/book?id=${room.id}" style="text-decoration: none; color:white;">Book Now</a></button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        	
			
         
        </c:forEach>
				</c:when>
				<c:otherwise>
					<center><h1>No Room Found.</h1></center>
				</c:otherwise>
			</c:choose>
			
			
		


  <!--for price slider-->
  <script>
    var slider = document.getElementById("myRange");
    var output = document.getElementById("demo");
    output.innerHTML = slider.value; // Display the default slider value

    // Update the current slider value (each time you drag the slider handle)
    slider.oninput = function () {
      output.innerHTML = this.value;
    }
  </script>

  <!--for select option tag-->
  <script>
    document.getElementById('sortselect').addEventListener('change', function () {
      val = $("#sortselect").val();

      console.log(val)
      if (val === 'pOne') {
        window.open('/under1k?city=<%=currentCity%>', '_self');
      }
      if (val === 'pTwo') {
        window.open('/under2k?city=<%=currentCity%>', '_self');
      }
      if (val === 'pAbove') {
        window.open('/above2k?city=<%=currentCity%>', '_self');
      }
    });
  </script>
  <script>
    document.getElementById('pselect').addEventListener('change', function () {
      val = $("#pselect").val();

      console.log(val)
      if (val === 'sRating') {
        window.open('/starOrder?city=<%=currentCity%>', '_self');
      }
      if (val === 'sLow') {
        window.open('/ascOrder?city=<%=currentCity%>', '_self');
      }
      if (val === 'sHigh') {
        window.open('/desOrder?city=<%=currentCity%>', '_self');
      }
    });
  </script>

</body>
</html>