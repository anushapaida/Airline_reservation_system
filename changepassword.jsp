<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
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
p {
	color: Red;
	font-family: arial;
	font-size: 20px;
}

</style> 
</head>
<body>
<form action="Changepassword" method="post">

<%int custid=Integer.parseInt(request.getParameter("id"));%>
<h2><a href="user.jsp?id=<%=custid%>">Back</a></h2>
<% String message =request.getParameter("message");
String e1 ="error1";
String e2 ="error2";
String s ="success";
if(message != null){
	if(message.equals(e1))
	{%>
		<p>Confirm Password and New Password are not same.</p>
	<%}
	else if(message.equals(e2))
	{%>
		<p>Please correct your Old Password.</p>
	<%}
	else{%>
		<p>Password is updated.</p>
	<%}
}%>
<div>
<input type="hidden" name = "custid" value="<%=custid%>">
<br><b>Old Password:</b><br><input class="textbox" type="password" name = "oldpassword" placeholder = "********"> <br>
<br>
<b>New Password:</b><br> <input class="textbox" type="password" name = "newpassword" placeholder = "********"> 
<br>
<br>
<b>Confirm New Password:</b><br> <input class="textbox" type="password" name = "conpassword" placeholder = "********"> 
<br><br><br> 
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" value="Submit" class="box"> &nbsp&nbsp
<input type="reset" value="Reset" class="box"><br><br><br>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
</div>
</form>
</body>
</html>
