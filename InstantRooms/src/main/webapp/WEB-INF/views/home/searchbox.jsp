<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <!-- Bootstrap 5 CDN Links -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js">
  
 <link rel="stylesheet" href="/home/css/searchCss.css">
</head>
<body>

 

 <div class="inf">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;
      &nbsp&nbsp;&nbsp;&nbsp;
      <lable>Room</lable>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp&nbsp;&nbsp;&nbsp;
      <lable>From</lable>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp&nbsp;
      <lable>To</lable>
    </div>

 <form action="/search" method="get" class="d-flex" role="search">
    <!--New changes start from here-->
    <a style="margin-right: 5px; font-weight: 400; font-size: 20px;"></a>
    <input id="roomcount" name="roomcount" value="1" style="width:5px; visibility:hidden;">
    <div style="margin-right:10px;margin-top:10px;" class="wrapper">
      <span class="minus">-</span>
      <span class="num">1</span>
      <span class="plus">+</span>
    </div>
    <!--New changes upto here-->
    <!------Also add style of class "col-lg mb-3 mb-lg-0"------>
    
    <div class="col-lg mb-3 mb-lg-0" style="width: 155px;margin-right:20px;margin-top:10px;">
     <input type="date" class="form-control" name="startdate" placeholder="Date">
    </div>
     <!--Here also added new style-->
  
    <div class="col-lg mb-3 mb-lg-0" style="width: 155px;margin-top:10px;">
      <input type="date" class="form-control" name="enddate" placeholder="Date">
      </div> 
   <input style="margin-left:90px;margin-top:10px;" class="form-control me-2" name="city" type="search" placeholder="Search" aria-label="Search">
      <button style="padding:10px;margin-top:10px;"class="btn btn-success" type="submit">Search</button>
  </form>
  
  <div style="margin-top:5px;" class="btm">
      <label>**Two guests are allowed per room</label>
    </div>
    
   

  <!--Javascript Added start from here-->
  <script>
    const plus = document.querySelector(".plus"),
    minus = document.querySelector(".minus"),
    num = document.querySelector(".num");

    var a = 1;

    plus.addEventListener("click",()=>{
        a++;
        a = (a < 10) ? a : a; 
        num.innerText = a;
        /*console.log("a");*/
        roomcount.value=a;
    });
    
    minus.addEventListener("click",()=>{
        if(a > 1){
            a--;
            a = (a < 10) ? a : a; 
            num.innerText = a;
            roomcount.value=a;
        } 
    });
    
   
</script>


<!--Javascript Added to here-->

 <!-- <form action="/search" method="get" class="d-flex" role="search">
             <div class="col-lg mb-3 mb-lg-0">
           
             <input type="date" class="form-control" name="startdate" placeholder="Date">
            </div>
            <div class="col-lg mb-3 mb-lg-0">
              <input type="date" class="form-control" name="enddate" placeholder="Date">
            </div> 
            <input class="form-control me-2" name="city" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form> -->
          
</body>
</html>