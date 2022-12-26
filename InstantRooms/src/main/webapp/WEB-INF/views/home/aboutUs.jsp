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
        width:90%;
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

    
</style>
</head>
<body>
    <div class="hero">
        <div class="container">
            <div class="article">
                <div class="title">
                    <h1>InstantRooms.com</h1>
                    <br><br>
                </div>
                <div class="content">
                    <h1>Our Mission</h1>
                    <p>InstantRooms is a platform that empowers entrepreneurs and small businesses with hotel
                        and homes by providing full stack technology that increases earnings and eases 
                        operations.Bringing affordable and trusted accommodation that guests can book instantly.
                        The main mission is to '<i>is to make doing business easy'</i></p>

                    <br><br>
                    <br><br>
                    <br><br>
                    <h1>Our Vision</h1>
                    <p>We strive to make the lives of our patrons easier by multiplying revenue channels and using our 
                        technological expertise to maximize demand.</p>
                </div>
            </div>
            <div class="image-section">
                <img src="/home/aboutus_image/hotel.jpg">
            </div>
        </div>
    </div>
     <jsp:include page="../template/footer.jsp" />
</body>
</html>