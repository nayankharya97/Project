<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
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


  <style>
    .header {
  overflow: hidden;
  background-color: #f1f1f1;
}
.header a.active {
  background-color: dodgerblue;
  color: white;
  float: right;
  margin-right:20px;
  margin-top: 20px;
  border-radius: 4px;
}
.header a {
  float: left;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
}
#logout:hover{
    background-color: blueviolet;
}
  </style>
</head>
<body>
  <div class="header">
    
    
    <div>
      <a id="logout" class="active" href="/">Logout</a>
    </div>
  </div>
</body>
</html>