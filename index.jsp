<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MAKMLINERS Airlines</title>
<style>
#header {
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    font-family:arial;
    font-size: 40px;
    font-weight: bold;
    color:forestgreen;
    text-align:center;
    padding:50px;
    border: 1px solid ForestGreen;
}
#nav {
   line-height:30px;
   background-color:#eeeeee;
   height:450px;
   width:200px;
   float:left;
   padding:5px;	
   font-family:arial;
   border: 1px solid ForestGreen;
}
#section {
   background-image:url("http://kerrlakecornhole.com/wp-content/uploads/2014/05/Beach-paradise-chairs.jpg");
   -webkit-background-size: cover;
   -moz-background-size: cover;
   -o-background-size: cover;
    background-size: cover;
   height: 440px;
   padding:10px;	
   font-family:arial;
   color:black;
   font-weight:bold;
   border: 1px solid ForestGreen;
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
   opacity: 0.5;
}
</style>
</head>

<body>
	<form action="Homepage" method="post">
	<div class="my-container">
   <img src="http://crispme.com/wp-content/uploads/macbook-pro-17-clouds-wallpaper.jpg">
	<div id="header">
	<b1>Welcome to MAKMLINER Airlines</b1>
	</div>
	</div>
	
	<div id="nav">
	    <a href="">Login</a><br>
	    <a href="">Reservation Details</a><br>
	</div>



	<div id="section">
   <b1>
	<table>
	<tr>
	<td><font size= "4" color=Black weight=bold>Book a Flight</font></td>
	</tr>
	</table>
	<table>
	<tr>
	<td>One-Way</b> <input type="radio" name="FlightTy" value="1" required>
	Round-Trip</b> <input type="radio" name="FlightTy" value="2" required> </td>
	</tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
	<label style="padding-right: 9px">From:</b> </label> <%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
		Statement statement = con.createStatement();
		resultset = statement.executeQuery("select * from Airport");
%> <select id="fromairportList" name="fromairportList">
							<%
								while (resultset.next()) {
							%>
							<option value=<%=resultset.getString(1)%>><%=resultset.getString(2)%></option>
							<%
								}
							%>
					</select>
					 <%
	} catch (Exception e) { // TODO Auto-generated catch block
		e.printStackTrace();
	}
%>
	&nbsp;&nbsp;&nbsp;&nbsp;
	<label style="padding-right: 9px">To:</b> </label> <%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
		Statement statement = con.createStatement();
		resultset = statement.executeQuery("select * from Airport");
%> <select id="toairportList" name="toairportList">
							<%
								while (resultset.next()) {
							%>
							<option value=<%=resultset.getString(1)%>><%=resultset.getString(2)%></option>
							<%
								}
							%>
					</select>
					</td>
					</tr>
					<tr><td></td></tr>
					<tr><td></td></tr> <%
	} catch (Exception e) { // TODO Auto-generated catch block
		e.printStackTrace();
	}
%>

				<tr>
					<td><Label>Depart: </b></label> <input type="date" name="Depart" required>

					<label>Return: </b></label> <input type="date" name="Return" required></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr>
		<td><label>Number of Passengers:</b></label> <select
			id="myListAdulPass" name="ListAdul">

			<option value="0">Adult</option>

			<option value="1">1</option>

			<option value="2">2</option>

			<option value="3">3</option>

			<option value="4">4</option>

			<option value="5">5</option>

			<option value="6">6</option>

			<option value="7">7</option>

			<option value="8">8</option>

			<option value="9">9</option>

			<option value="10">10</option>

		</select> 
		<label>+ </label> <select id="myListChPass" name="ListCh">

			<option value="0">Children</option>

			<option value="1">1</option>

			<option value="2">2</option>

			<option value="3">3</option>

			<option value="4">4</option>

			<option value="5">5</option>

			<option value="6">6</option>

			<option value="7">7</option>

			<option value="8">8</option>

			<option value="9">9</option>

			<option value="10">10</option>
		</select> </td>
		</tr>
		<tr><td></td></tr>
		<tr><td></td></tr>
		 <tr><td>
			<label>Choose Flight Class</b></label> <select id="myList" name="CabinType">

			<option value="0">Select Class</option>

			<option value="1">Economy</option>

			<option value="2">Business</option>

			<option value="3">Coach</option>

			<option value="4">First Class</option>

		</select>
		</td>
		</tr>
		<tr><td></td></tr>
		<tr><td></td></tr> &nbsp;&nbsp;&nbsp;&nbsp;
		<tr>
		<td></td>
		<td><button style="background-color:DarkSeaGreen;font:bold 16px arial;color: white;width:100;height:100"><b3>Submit</b3></button></td>
		</tr>
		</table>
		</b1>
		</div>
	</form>
	
</body>
</html>
