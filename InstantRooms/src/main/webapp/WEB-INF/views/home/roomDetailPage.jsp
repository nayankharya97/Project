<%@page import="com.instantrooms.entity.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rooms</title>

  <link rel="stylesheet" href="/home/css/roomDetailPage.css">
  <!-- Add icon library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- symbol link -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
    integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <!-- button links -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fontawesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

   .header a.active {
  background-color: dodgerblue;
  color: white;
  float: right;
  margin-right:20px;
  margin-top: 20px;
  border-radius: 4px;
}
#logout:hover{
    background-color: blueviolet;
}
</style>
<body>


    <c:choose>
				<c:when test="${not empty room}">
					<!-- loop over and print our employees -->
				<c:forEach var="room" items="${room}">
				

  <div class="room-main">
    <!-------------- image slider ----------------->
    <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName1}">
      </div>

      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName2}">
      </div>

      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName3}">
      </div>

      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName4}">
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName5}">
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName6}">
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName7}">
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext"></div>
        <img src="/uploads/${room.fileName8}">
      </div>

      <!-- Next and previous buttons -->
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>


    <div class="main-container">
      <!-- Hotel Name -->
      <div class="Hotel">
        <h1>${room.hotelName}</h1>
      </div>

      <!-- Hotel Address -->
      <div class="Address">
        <h3>${room.address}, 345741 ${room.city}, India</h3>
      </div>
      
      <!-- Hotel Value -->
      <div class="value">
        <h2>&#8377;${room.priceWithOffers} <small>night</small></h2>
      </div>

      

               <!-- -----------------------------------Star Rating-------------------------------  -->
       
       
  <div class="star-container">           
<c:set var="star" value="${room.starRating }" />
<c:if test="${star==5}">
<div class="star">
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
</div> 
</c:if>

<c:if test="${star==4}">
<div class="star">
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star"></span>
</div> 
</c:if>

<c:if test="${star==3}">
<div class="star">
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
</div> 
</c:if>

<c:if test="${star==2}">
<div class="star">
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
</div> 
</c:if>

<c:if test="${star==1}">
<div class="star">
    <span class="fa fa-star checked"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
    <span class="fa fa-star"></span>
</div> 
</c:if>
</div>
              <!-- ----------------------------------------------- -->
          
      
      
      
<!--       <div class="star-container">
        <div class="star">
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span>
        </div>
      </div> -->
      
      <!-- demand box -->
      <div class="demand">
        <i class='fas fa-grin-alt'></i>
        <label style="color: rgb(184, 31, 31);font-size: 30px;">This Property is in high demand!</label>
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label>15 travelers have booked today.</label>
      </div>
      
      <div class="info">
        <img src="/home/images/descriptionImg.png">
      </div>

      <!-- Description -->
      <div class="Description">
        <h2 style="text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);">Description</h2>
        <hr />
        <p>This is a family-friendly hotel that offers a wide range of accommodation types,
          from rooms to suites. All this in the peaceful surroundings of our beautiful gardens,
          will make your unforgettable holiday.
          This hotel provides guests with comfort and a memorable stay with its amenities and services.
          Guests can enjoy the in-house restaurant, kitchen, dining area at this property.
        </p>
        <p>
          This is a family-friendly hotel that offers a wide range of accommodation types,
          from rooms to suites. All this in the peaceful surroundings of our beautiful gardens,
          will make your unforgettable holiday.
          This hotel provides guests with comfort and a memorable stay with its amenities and services.
          Guests can enjoy the in-house restaurant, kitchen, dining area at this property.
        </p>
      </div>

      <!-- Amenities -->
      <div class="amenities">
        <h2 style="text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);">Amenities</h2>
        <hr>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class='fa fa-wifi'></i>
        <label>Wifi</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class='fa-solid fa-elevator'></i>

        <label>Elevator</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fas fa-swimming-pool' id=""></i>
        <del>Swimming pool</del>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <i class='fas fa-dumbbell'></i>
        <del>Gym</del>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fas fa-first-aid'></i>
        <label>First Aid</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fas fa-car-battery'></i>
        <label>Power Backup</label>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fa fa-tv'></i>
        <label>TV</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fa fa-car'></i>
        <label>Parking</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <i class='fa fa-soccer-ball-o'></i>
        <label>Play Ground</label>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fas fa-spa'></i>
        <del>Spa</del>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <i class='fa fa-snowflake-o'></i>
        <label>Air Conditioner</label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <i class='fa fa-fire-extinguisher'></i>
        <label>Fire Extinguisher</label>
        <br>
        <br>
      </div>
      
     
			

      <!-- Meals -->
      <div class="Meals">
        <h2 style="text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);">Enjoy meals during your stay</h2>
        
        <!-- Breakfast -->
        <div class="Breakfast">
          <img src="/home/images/meals/breakfast.jpg" >
          <input class="btn btn-primary" type="submit" id="submit" value="Select">
          <div class="meal-name">
            <h4>Breakfast</h4>
            <h5 style="margin-top:-12px;">Continental & Indian menu</h5>
            <h4 class="price" style="margin-top: -6px;">&#8377;150</h4>
          </div>
        </div>


        <!-- Lunch -->
        <div class="Lunch">
          <img src="/home/images/meals/Lunch.jpg" >
          <input class="btn btn-primary" type="submit" id="submit1" value="Select">
          <div class="meal-name">
            <h4>Lunch</h4>
            <h5 style="margin-top:-12px; margin-left: 16px;">Veg/Nonveg Thali</h5>
            <h4 class="price" style="margin-top: -8px;">&#8377;300</h4>
          </div>
        </div>

        <!-- Dinner -->
        <div class="Dinner">
          <img src="/home/images/meals/Dinner.jpg" >
          <input class="btn btn-primary" type="submit" id="submit2" value="Select">
          <div class="meal-name">
            <h4>Dinner</h4>
            <h5 style="margin-top:-12px; margin-left: 16px;">Veg/Nonveg Thali</h5>
            <h4 class="price" style="margin-top: -8px;">&#8377;300</h4>
          </div>
        </div>

      </div>
      
      <script>
      
      if()
      
      
      </script>

      <!-- Hotel Policy -->
      <div class="Policy">
        <h3 style="text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.4);">Hotel Policies</h3>
        <hr>
        <h4>Check-in: 12:00 PM &nbsp;&nbsp;&nbsp;&nbsp; Check-out: 11:00 AM</h4>
        <ul type="disc">
          <li class="disc">Couples are welcome.</li>
          <li class="disc">Guests can check in using any local or outstation ID proof.</li>
          <li class="disc">No Smoking and Drinking</li>
          <li class="disc">No pets are allowed.</li>
          <li class="disc">No outside food allowed.</li>
          <li class="disc">All guests staying longer than one week are requested to pay their bill every 5 days.</li>
        </ul>
      </div>

      <!-- buttons -->
      <div class="form-group form-button">
     <a class="btn-book" style=text-decoration:none;font-size:large;color:white;padding:15px;" href="/book?id=${room.id}">Continue to Book</a>
      </div>
     
    </div>

  </div>
   <br>
<br>
   </c:forEach>
				</c:when>
			 <c:otherwise>
					<center><h1>No Room Found.</h1></center>
				</c:otherwise>
			</c:choose>

  <!-- single button operation -->
  <script>
    jQuery("#submit").click(function () {
      jQuery(this).toggleClass("changeColor");
      if (jQuery(this).hasClass("changeColor")) {
        jQuery(".isSelected").prop("checked", true);
        jQuery(this).val("Remove");
        localStorage.setItem("breakfast","true");
      } else {
        jQuery(this).removeClass("changeColor");
        jQuery(".isSelected").prop("checked", false);
        jQuery(this).val("Select");
        localStorage.setItem("breakfast", "false");
      }
    });

    jQuery("#submit1").click(function () {
      jQuery(this).toggleClass("changeColor");
      if (jQuery(this).hasClass("changeColor")) {
        jQuery(".isSelected").prop("checked", true);
        jQuery(this).val("Remove");
        localStorage.setItem("lunch","true");
      } else {
        jQuery(this).removeClass("changeColor");
        jQuery(".isSelected").prop("checked", false);
        jQuery(this).val("Select");
        localStorage.setItem("lunch","false");
      }
    });

    jQuery("#submit2").click(function () {
      jQuery(this).toggleClass("changeColor");
      if (jQuery(this).hasClass("changeColor")) {
        jQuery(".isSelected").prop("checked", true);
        jQuery(this).val("Remove");
        localStorage.setItem("dinner","true");
      } else {
        jQuery(this).removeClass("changeColor");
        jQuery(".isSelected").prop("checked", false);
        jQuery(this).val("Select");
        localStorage.setItem("dinner","false");
      }
    });
  </script>

  <script src="/home/js/description.js"></script>
</body>

</html>