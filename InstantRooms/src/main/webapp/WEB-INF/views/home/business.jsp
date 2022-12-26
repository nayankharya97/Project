<%@page import="com.instantrooms.entity.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,900;1,700&display=swap');
        *{
        margin:0px;
        padding:0px;
        box-sizing:border-box;
        font-family:'Montserrat',sans-serif;
    }
    .hero{
        width:100%;
        min-height: 100vh;
    }
    .container{
        width:100%;
        display:block;
        margin:auto;
        padding-top:100px;
    }
    .article{
        float:left;
        width:55%;
        padding-right:25px;
    }
    .sign-up-form{
        float:right;
        
        width:500px;
    box-shadow:0 0 3px 0 rgba(0,0,0,0.3);
    background:#fff;
    padding:30px;
    margin-top: 3%;
    
    text-align:center;  
    }
    .sign-up-form h1
    {
    color:#e91e63;
    margin-bottom:30px;
    text-align:left;
    }
    .input-box
    {
    border-radius:20px;
    padding:10px;
    margin:10px 0;
    width:100%;
    border:1px solid #999;
    outline:none;}
    .button
    {
    
    color:#fff;
    width:100%;
    padding:10px;
    border-radius:20px;
    font-size:15px;
    margin:10px 0;
    border:none;
    outline:none;
    cursor:pointer;
    background-color:#e91e63;
    }
    .rounded-corners
    {
    border-radius: 20px;
    }
    

    .article .title h1{
        text-transform:uppercase;
        font-size: 45px;
        font-weight:300;

    }
    .article .content h3{
        margin-top: 30px;
        color:#494a4a;
        font-size: 22px;
        font-weight: 500;
    }
    .article .content p{
        margin-top:10px;
        font-size: 19px;
        line-height: 1.5;
        color:#4e4f4f;
    }

            .hero{
        width:100%;
        min-height: 100vh;
    }
    .container{
        width:95%;
        display:block;
        margin:auto;
        padding-top:100px;
    }
    .article{
        float:left;
        width:55%;
        padding-right:25px;
    }
    .image-section{
        float:right;
        width:45%;    
    }
    .image-section img{
        width:100%;
        height:auto;
    }

    .article .title h1{
        text-transform:uppercase;
        font-size: 45px;
        font-weight:300;

    }
    .article .content h3{
        margin-top: 30px;
        color:#494a4a;
        font-size: 22px;
        font-weight: 500;
    }
    .article .content p{
        margin-top:10px;
        font-size: 19px;
        line-height: 1.5;
        color:#4e4f4f;
    }
    .image-sec{
        float:left;
        width:45%;    
    }
    .image-sec img{
        width:100%;
        height:auto;
    }
    .sec
    {
        text-align: center;
    }   
    </style>
</head>
<body>
    <section>
       
        <div class="hero">
        <div class="container">
            <div class="article">
                <div class="title">
                    <h1>Are you an individual Business traveller? Book through <i>InstantRooms 'B' Direct</i></h1>
                    <br><br>
                    <br><br>
                    <br>
                </div>
                <div class="content">
                    <h1>InstantRooms B is a corporate hotel booking solution by InstantRooms i.e a 
                        leading hand towards success </h1>
                    <br>
                    <p>Built to simplify business stays, and make sure both you and your employees always have a good night’s sleep.
                        
                    </p>

                    
                </div>
            </div>
            
                <div class="sign-up-form">
                    <h1>GET STARTED</h1>
                    <form action="/businessUser" method="post" style="text-align:center;">
                     <input type="text" name="name" class="input-box" placeholder="Your Full Name">
                    <input type="email" name="email" class="input-box" placeholder="Your Email">
                    <input type="password" name="password" class="input-box" placeholder="Create Password">
                    <input type="text" name="contactno" class="input-box" placeholder="Your Contact Number">
                    
                                     
                  <button class="button rounded-corners" type="submit" class="signup-btn">REGISTER</button>
                    
                    </form>
                    </div>
           
        </div>
    </div>
    </section>
    <section>
        <div class="hero">
            <div class="container">
                <div class="article">
                    <div class="title">
                        <h1>InstantRooms Promises</h1>
                        <br><br>
                    </div>
                    <div class="content">
                        <h1>Save Cost</h1>
                        <p>Get easy access with maximum savings and handsome discount. Inspite of that, one can
                            manage all your company bookings on a single portal, and say good-bye to third-party
                            comissions lead to stress free life.
                        </p>

                            <br><br>
                            <h1>Save Time</h1>
                            <p>With InstantRooms effortless interface, have all your
                                 bookings at your fingertips anytime you need them.</p>
    
                                <br><br>
                                <h1>Provide Transperancy</h1>
                                <p>Get invoices directly from us without any human intervention, and always be in the know.</p>
        
                                    <br><br>
                    </div>
                </div>
                <div class="image-section">
                    <img src="/home/business_img/img1.png">
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="hero">
            <div class="container">
                <div class="article">
                    <div class="title">
                        <h1>There's More</h1>
                        <br><br>
                    </div>
                    <div class="content">
                        
                        <p>Hassle-Free GST</p>

                            <br><br>
                            
                            <p>Automatic and easy invoices</p>
    
                                <br><br>
                                
                                <p>Dedicated dashboard to track payments.</p>
        
                                    <br><br>
                                <p>Mobile app with built-in approval flow and custom budget limits</p>
                                <br><br>
                                <p>Round-the-clock support of InstantRooms Captains</p>
                    </div>
                </div>
                <div class="image-sec">
                    <img src="/home/business_img/img2.png">
                </div>
            </div>
        </div>
    </section>
</body>
</html>