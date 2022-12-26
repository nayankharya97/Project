<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instant Rooms</title>

    <!-- FAVICON -->
    <link rel="icon" type="image/png" href="/home/images/Favicon.jpg">

    <!-- Bootstrap 5 CDN Links -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js">

    <!-- Link Swiper's CSS -->
    <!-- <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>

    <!-- Custom File's Link-->
    <link rel="stylesheet" href="/home/css/style.css">
    <link rel="stylesheet" href="/home/css/responsive-style.css">
    
<!--     <style>
    localStorage.clear();
    </style> -->

</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="100" onload="localStorage.clear()" >
  
    <!-- Navbar Section -->
    <header class="header_wrapper">
        <nav class="navbar navbar-expand-lg ">
            <div style="height:100px;" class="container">
              
                <a class="logo" href="#">
                <img src="/home/images/logo.jpeg" class="img-fluid" alt="logo" width="130px" height="5px">
              </a>

              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <!-- <span class="navbar-toggler-icon"></span> -->
                <i class="fas fa-stream navbar-toggler-icon"></i>
              </button>

              <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                <ul class="navbar-nav menu-navbar-nav">
                  <li style="margin-left:10px; class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" aria-current="page" href="#home">Home</a>
                  </li>
                  <li style="margin-left:10px;" class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" href="/contactUs">Contact Us</a>
                  </li>
                  <li style="margin-left:10px;" class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" href="/allrooms">All Rooms</a>
                  </li>
                  <li style="margin-left:10px;" class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" href="/aboutUs">About Us</a>
                  </li>
                  <li style="margin-left:10px;" class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" aria-current="page" href="/business">Business</a>
                  </li>
                  <li style="margin-left:10px;" class="nav-item">
                    <a style="padding:13px;" class="btn btn-success" href="/list_your_property">List Your Property</a>
                  </li>
                  <!-- <li class="nav-item mt-3 mt-lg-0">
                    <a class="btn btn-success" href="#">Book Now</a>
                  </li> -->
                  <li style="margin-left:10px;">
                    <a style="padding:13px;" class="btn btn-primary" href="/adminlogin">Admin Login</a>
                  </li>
                </ul> 
              </div>
            </div>
          </nav>
          
          <!-- -----------------------Search box link----------------------- -->
          
          <jsp:include page="./searchbox.jsp" />
          

    </header>

    <!-- Navbar Section exit -->
    
    <!-- Banner Section -->
    <section id="home" class="banner_wrapper p-0">
      <div style="margin-top:20px;" class="swiper mySwiper">
        <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide" style="background-image:url(/home/images/slider/slider1.webp);">
            <div class="slide-caption text-center">
              <div>
                  <h1>Welcome to InstantRooms</h1>
                  <p> Dear hotel guest, we welcome you to our facility and send gifts for both.
                     We hope you would have a pleasant stay here and enjoy the offers during your reside.</p>
              </div>
            </div>
          </div>
          <div class="swiper-slide" style="background-image:url(/home/images/slider/slider2.webp);">
            <div class="slide-caption text-center">
              <div>
                  <h1>Welcome to InstantRooms</h1>
                  <p> Dear hotel guest, we welcome you to our facility and send gifts for both.
                     We hope you would have a pleasant stay here and enjoy the offers during your reside.</p>
              </div>
            </div>
          </div>
        </div>
        
        <!-- If we need pagination -->
        <div class="swiper-pagination"></div>

      </div>
      <!-- <div class="container booking-area">
        <form class="row">
          <div class="col-lg mb-3 mb-lg-0">
            <input type="date" class="form-control" placeholder="Date">
          </div>
          <div class="col-lg mb-3 mb-lg-0">
            <input type="date" class="form-control" placeholder="Date">
          </div>
          <div class="col-lg mb-3 mb-lg-0">
            <select class="form-select">Check in
              <option selected>Adults</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
            </select>
          </div>
          <div class="col-lg mb-3 mb-lg-0">
            <select class="form-select">
              <option selected>Children</option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
            </select>
          </div>
          <div class="col-lg mb-3 mb-lg-0">
            <button type="submit" class="main-btn rounded-2 px-lg-3">Check Availability</button>
          </div>
        </form>
      </div> -->
    </section>
    <!-- Bootstrap 5 CDN Links -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>

    <!-- Swiper JS -->
    <!-- <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script> -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <!-- Custom JS link -->
    <script src="/home/js/main.js"></script>
    
 
</body>
</html>