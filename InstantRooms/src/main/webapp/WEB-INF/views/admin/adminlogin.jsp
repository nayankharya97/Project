<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login Page with Background Image Example</title>
  <link rel="stylesheet" href="/admin/css/loginstyle.css">
  <style>
  
  
  #btn a{
    text-decoration:none;
    outline: none;
  border: none;
  cursor: pointer;
  display: inline-block;
  margin: 0 auto;
  padding: 0.5rem 7rem;
  text-align: center;
  background-color: #47AB11;
  color: #fff;
  border-radius: 4px;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
    
  }
  
  </style>
  
</head>
<body>
<!-- partial:index.partial.html -->
<div id="bg"></div>

<form action="/login" method="POST">
  <div class="form-field">
    <input type="email" name="email" placeholder="Email / Username" required/>
  </div>
  
  <div class="form-field">
    <input type="password" name="password" placeholder="Password" required/></div>
  
  <div class="form-field">
    <button class="btn" type="submit">Log in</button>
  </div>
  
  <div class="form-field" id="btn">
    <a href ="/">Go to HomePage</a>
  </div> 
  
</form>

 
<!-- partial -->
  
</body>
</html>
