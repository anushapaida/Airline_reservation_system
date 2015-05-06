<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation details</title>
<style> 
.textbox { 
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid #999; 
    outline:0; 
    width: 275px;
    height:25px; 
    }
    .box{
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 75px; 
    color:green;
  }
  #Page{
				
	width: 700px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 2%;
					  
				
	}
div {
	width: 400px;
    height:150px;
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
</head>
<body>
	<form action="ticketresults.jsp" method="post">
	<h2><a href="index.jsp">Back</a></h2>
	<div>
		<br>
		<b>Email Address:</b><br>
		<br>
		<input class="textbox" type="text" name="email" placeholder="name@gmail.com"> <br> <br> 
		<input type="submit" value="Submit" class="box">
		</div>
			</form>
</body>

</html>
