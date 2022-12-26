<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Details</title>
    
    <!-- Font Icon -->
<link rel="stylesheet" href="/fonts/material-icon/css/material-design-iconic-font.min.css">
<!-- Main css -->
<link rel="stylesheet" href="/admin/css/roomDetails.css">
<!-- Main js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

    
</head>
<body>

<jsp:include page="../template/header.jsp" />
    <div class="main">
        <div class="RoomDetails">

            <!-- Main details -->
            <h2>ENTER ROOM DETAILS</h2>
            
            <form action="/saveRoom" id="details" method="post" enctype="multipart/form-data">
                <input type="text" name="hotelname" id="name" placeholder="Hotel Name">
                <br>
                <br>
                <input type="text" name="managername" id="name" placeholder="Manager Name">
                <br>
                <br>
                <input type="email" name="manageremail" id="name" placeholder="Manager's Email Id">
                <br>
                <br>
                <input type="text" name="address" id="name" placeholder="Hotel Address">
                <br>
                <br>
                <input type="text" name="city" id="name" placeholder="City">
                <br>
                <br>
                <input type="text" name="state" id="name" placeholder="State">
                <br>
                <br>
                <input type="text" name="pincode" id="name" placeholder="Pin Code">
                <br>
                <br>
                <input type="number" name="priceWithoutOffers" id="name" placeholder="Price Without Offer">
                <br>
                <br>
                <input type="number" name="priceWithOffers" id="name" placeholder="Price Without Offer">
                <br>
                <br>
                <select name="starRating" style="width: 380px; padding: 7px; box-shadow: inset 1px 1px 5px rgba(0,  0, 0, 0.3);
                background-color: #fff;border-radius: 3px;">
                    <option selected>Star Ratings</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>
                <br>
                <br>

                <!-- For facility   -->
                <h4>Select Facilities Provided By You</h4> 
                <br>
                <div class="form-check">
                <tr>
                    <td><input class="form-check-input" type="checkbox" value="parking" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Parking
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="wifi" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Wifi
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="pool" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Pool
                    </label></td>
                </tr>
                    <br>
                    <br>

                <tr>    
                    <td><input class="form-check-input" type="checkbox" value="gym" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Gym
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="spa" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Spa
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="playground" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Play Ground
                    </label></td>
                </tr>
                    <br>
                    <br>

                <tr>
                    <td><input class="form-check-input" type="checkbox" value="powerbackup" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Power Backup
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="elevator" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      Elevator
                    </label></td>&nbsp;&nbsp;&nbsp;&nbsp;

                    <td><input class="form-check-input" type="checkbox" value="firstaid" name="facility" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                      First Aid
                    </label></td>
                </tr>   
                </div>
                <br>
                <br>

                <!-- for uploding images -->
                <h4>Upload Some Room Images</h4>
                <br>
						
                <div class="form-group">
                    <input type="file" name="file1" accept="*" id="file1" />
                        <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file2" accept="*" id="file2" />
					            <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file3" accept="*" id="file3" />
						          <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file4" accept="*" id="file4" />
						          <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file5" accept="*" id="file5" />
						          <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file6" accept="*" id="file6" />
						          <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file7" accept="*" id="file7" />
						          <div class="help-block" id="error_file"></div>
                    <br>
                    
                    <input type="file" name="file8" accept="*" id="file8" />
						          <div class="help-block" id="error_file"></div>                    
                  </div>
                <br>
                <br>
                <!-- buttons -->
                <div class="form-group form-button">
                    <input class="btn btn-primary" type="submit" id="submit" value="Submit" ><br></div> </form><br>
                 
                
           
        </div>
    </div>
    
    <script src="/admin/vendor/jquery/jquery.min.js"></script>
	<!-- <script src="/admin/js/main.js"></script> -->
</body>
</html>