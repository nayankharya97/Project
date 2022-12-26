<%@page import="com.instantrooms.entity.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- mobile metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="initial-scale=1, maximum-scale=1">
  <!-- site metas -->
  <title>Details</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- bootstrap css -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <!-- style css -->
  <link rel="stylesheet" href="/booking/bill.css">
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
    media="screen">
  <style>
    .ratingchecked {
      color: orange;
    }
  </style>
</head>

<body>
  <! -- style="padding-top:60px; padding-bottom: 60px;margin-top: 50px; -->
  
 
  
  <%--  <jsp:include page="../template/header.jsp" /> --%>
    <c:choose>
				<c:when test="${not empty room}">
					<!-- loop over and print our employees -->
				<c:forEach var="detail" items="${room}">
				
				
<% String currentUseremail = (String)request.getAttribute("currentUseremail"); 
String currentUsername = (String)request.getAttribute("currentUsername"); 
String currentUserno = (String)request.getAttribute("currentUserno"); 

%>

 <!-- ---------------get values from local storage-------------- -->
  <script>
  var roomCount = localStorage.getItem("roomcount");
  var startdate = localStorage.getItem("startdate");
  var enddate = localStorage.getItem("enddate");
  var breakfast = localStorage.getItem("breakfast");
  var lunch = localStorage.getItem("lunch");
  var dinner = localStorage.getItem("dinner");
  </script>
  
    <!-- ----------------------------------------------- -->
				
				
    <div class=" container col-md-12">
    <div class="col-md-12" style="padding-top:10px; padding-bottom: 60px;margin-top: 60px;">
      <div class="row">
        <button type="button" class="btn btn-default" aria-label="Left Align">
          <span class="glyphicon glyphicon-align-left" aria-hidden="true"><</span>
        </button>
        <div style="font-size:medium;margin-left: 5px;margin-top: 5px;" class="font-weight-bold"> Modify your booking
        </div>
      </div>
      <div class="row">
        <div class=" col-md-7" style="margin-top: 50px ;">
          <div class="p-3 mb-2 bg-success text-white">
            <p style="margin-left: 200px;">Enter Booking Details</p>
          </div>
          <br>
          <div style="margin-left: 80px;">
            <p>We will use these details to share your booking information</p>
          </div>

         
          <br>
          <br>
          <form action="/successfull" method="Post">
          <input type="checkbox" name="room_id" value="${detail.id}" style="visibility:hidden" checked>
           <input type="checkbox" name="checkin_date" id="checkin_date" style="visibility:hidden" checked>
           <input type="checkbox" name="checkout_date" id="checkout_date" style="visibility:hidden" checked>
           <input type="checkbox" name="total_rooms" id="total_rooms" style="visibility:hidden" checked>
            <input type="checkbox" name="total_bill" id="total_bill" style="visibility:hidden" checked>
          
          
            <input placeholder="Enter Name" style="width: 300px;margin-left:150px;margin-top: 10px;" class="form-control type=" text"
               name="name" value="<%=currentUsername%>" />
            <br>
            <input placeholder="Enter Email" style="width: 300px;margin-left:150px;margin-top: 10px;" class="form-control type=" text"
               name="email" value="<%=currentUseremail%>" />
            <br>
            <input placeholder="Enter Mobile" style="width: 300px;margin-left:150px;margin-top: 10px;" class="form-control type=" text"
               name="contactno" value="<%=currentUserno%>" />
            <br><br>
            <input type="submit" style="width: 500px;height:50px;margin-left: 50px;margin-top: 20px;"
              class="btn btn-success form-control" value="Confirm Details" />
          </form>
        </div>
        <div class="border-left offset-md-1 col-md-4">
          <div class="row">
            <span style="font-size: large;" class="font-weight-bold text-dark col-md-8">${detail.hotelName}</span>
            <img style="height: 60px;width:125px;" src="/uploads/${detail.fileName1}" alt="Room Image" />
          </div>
          
          <!-- -----------------------------------Star Rating-------------------------------  -->
       
       
             
<c:set var="star" value="${detail.starRating }" />
<c:if test="${star==5}">
<div style="margin-left: 1%; margin-top: 5px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span style="margin-left:10px;color:#57e32c"><b> Excellent</b></span>
</div> 
</c:if>

<c:if test="${star==4}">
<div style="margin-left: 1%; margin-top: 5px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#b7dd29"><b> Very Good</b></span>
</div> 
</c:if>

<c:if test="${star==3}">
<div style="margin-left: 1%; margin-top: 5px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ffe234"><b> Average</b></span>
</div> 
</c:if>

<c:if test="${star==2}">
<div style="margin-left: 1%; margin-top: 5px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ffa534"><b> Bad</b></span>
</div> 
</c:if>

<c:if test="${star==1}">
<div style="margin-left: 1%; margin-top: 5px;"> 
    <span class="fa fa-star ratingchecked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span style="margin-left:10px;color:#ff4545"><b> Worst</b></span>
</div> 
</c:if>
            
          

    
    
          
          
          <div style="margin-left:1%; margin-top: 5px;" class="font-weight-bold text-dark" id="no_of_nights">1 night</div>
          <div style="white-space: nowrap;padding-bottom: 20px;margin-top: 20px;" class="border-bottom row">
            <div style="margin-top: 10px;" class="col-md-8">
              <i style="margin-left: 1%;" class="fa fa-calendar" aria-hidden="true"></i>
              <span class="font-weight-bold text-dark" style="margin-left: 1%;" id="date">12/09 - 13/09 2022</span>
            </div>.
            <div style="margin-top: 10px;" class="col-md-4 font-weight-bold text-dark" id="no_of_rooms">1 Room, 2 Guests</div>
          </div>
          <div class="row">
            <div class="col-md-10 font-weight-bold text-dark" style="margin-top: 20px;" id="total_room_price1">Room price for 1 Night X 2
              Guests </div>
            <div class="font-weight-bold text-dark" style="margin-left:3px; margin-top: 20px;" id="total_room_price2"><span>&#8377</span>1000
            </div>
          </div>
          <div class="row">
            <div class="col-md-9 font-weight-bold text-dark" style="margin-top: 20px;">BreakFast</div>
            <div class="font-weight-bold text-dark" style="margin-left:30px; margin-top: 20px;" id="breakfast"><span>&#8377</span>200
            </div>
          </div>
          <div class="row">
            <div class="col-md-9 font-weight-bold text-dark" style="margin-top: 20px;">Lunch</div>
            <div class="font-weight-bold text-dark" style="margin-left:30px; margin-top: 20px;" id="lunch"><span>&#8377</span>500
            </div>
          </div>
          <div class="row">
            <div class="col-md-9 font-weight-bold text-dark" style="margin-top: 20px;" >Dinner</div>
            <div class="font-weight-bold text-dark" style="margin-left:30px; margin-top: 20px;" id="dinner"><span>&#8377</span>800
            </div>
          </div>
          <div class="row border-bottom">
            <div class="col-md-9 font-weight-bold text-dark" style="margin-top: 20px;">Discount</div>
            <div class="font-weight-bold text-dark" style="padding-bottom: 20px; margin-left:30px; margin-top: 20px;" id="total_discount">
              -<span>&#8377</span>100</div>
          </div>
          <div style="margin-top: 7px;" class="row">
            <div style="margin-left:20px; margin-top: 10px;font-size: large;" class="font-weight-bold text-dark">Payable
              Amount</div>
            <div class="font-weight-bold text-dark" style="margin-left: 130px; margin-top: 20px;font-size: large;" id="final_bill">
              <span>&#8377</span>554</div>
          </div>
          <div style=" margin-left: 10px;" class="font-weight-bold">inclusive of all taxes</div>
        </div>
      </div>
    </div>
    </div>
    
    <script>
   
    //convert date
    var start = startdate.split('-');
 // Please pay attention to the month (parts[1]); JavaScript counts months from 0:
 // January - 0, February - 1, etc.
    var start1 = new Date(start[0], start[1] - 1, start[2]); 
 //console.log(start1.toDateString());
 
   var end = enddate.split('-');
   var end1 = new Date(end[0], end[1] - 1, end[2]); 
   
   //calculate no of days from date
   
    let diffInMilliSeconds = Math.abs(end1 - start1) / 1000;

    // calculate days
    const days = Math.floor(diffInMilliSeconds / 86400);
    diffInMilliSeconds -= days * 86400;
    //console.log('calculated days', days);
    
    ////calculate total room price accoring to days and no of rooms
    
    
    var price = ${detail.priceWithOffers}
    var price = price*roomCount
    var totalPrice = price*days
    
    ////calculate discount
    
    if(totalPrice <= 5000){
    	var discount = 700
    }else{
    	var discount = 1400
    }
    ///calculate meals
    
    if(breakfast == "true"){
    	var f_breakfast = 150
    }else{
    	var f_breakfast = 0
    }
    
    if(lunch == "true"){
    	var f_lunch = 300
    }else{
    	var f_lunch = 0
    }
    
    if(dinner == "true"){
    	var f_dinner = 300
    }else{
    	var f_dinner = 0
    }
    ///calculate final bill
    
    var final_bill = totalPrice + f_breakfast + f_lunch + f_dinner - discount
    
    ////////////////////////////////////////////////////////////////////////
   
   document.getElementById("date").innerHTML = start1.toDateString()+" - "+end1.toDateString()
   
   document.getElementById("no_of_rooms").innerHTML = roomCount+" Room, "+roomCount*2+" Guests"
   
   document.getElementById("no_of_nights").innerHTML = days+" days"
   
   document.getElementById("total_room_price1").innerHTML = roomCount+" Room Price for "+days+" days"
   
   document.getElementById("total_room_price2").innerHTML = totalPrice
   
   document.getElementById("total_discount").innerHTML = discount
   
   document.getElementById("breakfast").innerHTML = f_breakfast
   
   document.getElementById("lunch").innerHTML = f_lunch
   
   document.getElementById("dinner").innerHTML = f_dinner
   
   document.getElementById("final_bill").innerHTML = final_bill
   
   
   /* ----------setting values in input */
   
     document.getElementById("checkin_date").value = startdate
    document.getElementById("checkout_date").value = enddate
    document.getElementById("total_rooms").value = roomCount
    document.getElementById("total_bill").value = final_bill
  
    </script>
    

    
    </c:forEach>
				</c:when>
			</c:choose>
    
</body>
</html>