<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<style>


.logout{
    margin:4px;
    border-radius:23px;
    background-color:red;
    margin-left:1400px;
    position:fixed;
   
    font-weight:bolder;
   
    padding-right:20px;
    padding-left:20px;
    padding-top:10px;
    padding-bottom:10px;
    
   
}
.logout a{
  color:white;
}



</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
</head>
<body>

      <div class="logout">
      
      <a href="/logout">Logout</a>
      
      
      
     <!--  <form th:action="@{/logout}" method="post">
        <input type="submit" value="Logout" />
    </form> -->
      
      </div>
</body>
</html>