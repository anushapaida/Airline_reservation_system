<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAKMLINER Airlines Login</title>

<style> 
#header {
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    font-family:arial;
    font-size: 40px;
    color:forestgreen;
    text-align:center;
    padding:50px;
}
#nav {
   line-height:30px;
   background-color:#eeeeee;
   height:450px;
   width:200px;
   float:left;
   padding:5px;	
   font-family:arial;
}
body{
    font-family: Arial;
    font-size: 18px;
    color: White;
    font-weight: bold;
}
.textbox { 
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid ForestGreen; 
    outline:0; 
    height:25px; 
    width: 275px; 
  } 
  .box{
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    border: 1px solid DarkSeaGreen; 
    outline:0; 
    height:25px; 
    width: 75px; 
    color: ForestGreen;
  }
#box1 {
   width: 1230px;
   padding: 0px;
   border: 1px solid ForestGreen;
   margin: 1;
}  
#box2 {
   width: 210px;
   float: left;
   padding: 0px;
   border: 1px solid ForestGreen;
   margin: 10;
}
#box3 {
   width: 1230px;
   height: 460px;
   padding: 0px;
   border: 1px solid ForestGreen;
   margin: 1;
} 
#login {
    
    width: 400px;
    height:200px;
    padding: 0px;
    margin-top: 10px;
    margin-right: 150px;
    margin-left: 400px;
}
.my-container {
   position: relative;
   overflow: hidden;
}
.my-container b1 {
   padding: 200px;
   position: relative;
   z-index: 2;
} 
.my-container img {
   position: absolute;
   left: 0;
   top: 0;
   width: 100%;
   height: auto;
   opacity: 0.6;
}
</style>

</head>

<body>

<form action="loginpage" method="post">

<div class="my-container">
   <img src="http://crispme.com/wp-content/uploads/macbook-pro-17-clouds-wallpaper.jpg">
	<div id="box1">
	<div id="header">
	<b1>Login to MAKMLINER Airlines</b1>
	</div>
	</div>
	</div>
	
<div id="box2">
<div id="nav">
<font size="3" weight=normal>
  <a href="index.jsp">Back to homepage</a>  <br>
  <a href="register.jsp">Register</a> <br>
  <a href="forgotpassword.jsp">Forgot Your Password</a>
</font>
</div>
</div>

<div class="my-container">	
    <img src="http://kerrlakecornhole.com/wp-content/uploads/2014/05/Beach-paradise-chairs.jpg">
    <div id="box3">
    <div id="login">
    <b1>
    <br><font size="4" font= arial weight= bold color=black>Please Login</font>
    <br><br>Email Address:<br><input class="textbox"type="text" name = "email" placeholder = "name@gmail.com">
    <br>
    Password:<br> <input class="textbox" type="password" name = "password" placeholder = "********"> 
    <br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <button style="background-color:DarkSeaGreen;font:bold 16px arial;color: white;width:100;height:100"><b3>Login</b3></button> &nbsp&nbsp
    <button style="background-color:DarkSeaGreen;font:bold 16px arial;color: white;width:100;height:100"><b3>Reset</b3></button>
    </b1>
    </div>
    </div>
</div>

</form>
</body>
</html>
