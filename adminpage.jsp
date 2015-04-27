<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation System</title>
<style>
#header {
    background-color:#A7C942;
    color:white;
    text-align:center;
    padding:6px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:450px;
    width:200px;
    float:left;
    padding:5px;	      
}
#section {
    width:800px;
    float:left;
    padding:50px;	 	 
}

</style>
</head>
<body>
<form>
	<div id="header">
	<h1>Airline Reservation System</h1>
	</div>
	<div id="nav">
	<a href="flightlist.jsp">Flight List</a><br>
	<a href="addairplane.jsp">Add an Airplane</a><br>
	<a href="addflight.jsp">Add an Airplane</a><br>
	<a href="adminreports.jsp">Reports</a><br>
	<a href="login.jsp">Logout</a><br>
	</div>
</form>
</body>
</html>
