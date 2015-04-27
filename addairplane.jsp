<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add an Airplane</title>
<style> 
.textbox { 
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 275px;
    color:green; 
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
    padding: 50px;
    border: 2px solid green;
	width: 450px;
    height:500px;
 	
    margin-right: 25px;
    margin-left: 50px;
    
    font-family:verdana;
    font-size:100%;
}

</style> 
</head>
<body>
<form method="post" action ="Addairplane">
<h2><a href="index.jsp">Back</a></h2>
<div>
<br><b>Airplane Name:</b><br><input class="textbox"type="text" name = "airplaneName" placeholder = "MAKM123" required><br>
<br><b>Airport:</b><br><input class="textbox"type="text" name = "airportName" placeholder = "LAX" required> <br>
<br><b>First Class Seats:</b><br><input class="textbox"type="text" name = "firstSeat" placeholder = "00" required> <br>
<br><b>Business Class Seats:</b><br><input class="textbox"type="text" name = "businessSeat" placeholder = "00" required> <br>
<br><b>Economy Seats:</b><br><input class="textbox"type="text" name = "economySeat" placeholder = "00" required>  <br><br>

<b>Personal Entertainment:</b>&nbsp&nbsp&nbsp&nbsp
<b>Yes</b> <input type="radio" name="personalEn" value="1" required>
<b>No</b> <input type="radio" name="personalEn" value="0" required>
<br><br>
<b>Wifi:</b>&nbsp&nbsp&nbsp&nbsp
<b>Yes</b> <input type="radio" name="wifi" value="1" required>
<b>No</b> <input type="radio" name="wifi" value="0" required>
<br><br>
<b>ac110V:</b>&nbsp&nbsp&nbsp&nbsp
<b>Yes</b> <input type="radio" name="ac" value="1" required >
<b>No</b> <input type="radio" name="ac" value="0" required>
<br><br>
<b>USB Power:</b>&nbsp&nbsp&nbsp&nbsp
<b>Yes</b> <input type="radio" name="usb" value="1" required>
<b>No</b> <input type="radio" name="usb" value="0" required>
<br><br>
<input type="submit" value="Add" class="box">

</div>
</form>
</body>
</html>
