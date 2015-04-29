<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

</head>
<body>
<form action="loginpage" method="post">
<h2><a href="index.jsp">Back</a></h2>
<div>
<br><b>Email Address:</b><br><br><input class="textbox"type="text" name = "email" placeholder = "name@gmail.com"> <br>
<br>
<b>Password:</b><br><br> <input class="textbox" type="password" name = "password" placeholder = "********"> 
<br><br><br> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" value="Submit" class="box"> &nbsp&nbsp
<input type="reset" value="Reset" class="box"><br><br><br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<a href="register.jsp">Register New User</a>
</div>
 
<style> 
.textbox { 
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 275px; 
  } 
  .box{
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 75px; 
    color:green;
  }
div {
    
    width: 300px;
    height:300px;
    padding: 25px;
    border: 2px solid #999;
    margin-top: 100px;
    margin-right: 150px;
    margin-left: 450px;
    color:green;
    font-family:verdana;
    font-size:100%;
}

</style> 
</form>
</body>
</html>
