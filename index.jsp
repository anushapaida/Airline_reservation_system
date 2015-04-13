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
	<form action="Homepage" method="post">
	<div id="header">
	<h1>Airline Reservation System</h1>
	</div>
	<div id="nav">
	<a href="">Login</a><br>
	<a href="">Reservation Details</a><br>
	</div>
		
			
	<div id="section">
	<table>
	<tr>
	<td><b>One-Way</b> <input type="radio" name="FlightTy" value="1" required>
	<b>Round-Trip</b> <input type="radio" name="FlightTy" value="2" required> </td>
	</tr>
	<tr><td></td></tr>
	<tr><td></td></tr>
	<tr>
	<td>
	<label style="padding-right: 9px"><b>From:</b> </label> <%
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
	<label style="padding-right: 9px"><b>To:</b> </label> <%
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
					<td><Label><b>Depart: </b></label> <input type="date" name="DepCal" required>

					<label><b>Return: </b></label> <input type="date" name="RetCal" required></td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr>
		<td><label><b>Number of Passengers:</b></label> <select
			id="myListAdulPass" name="ListAdul">

			<option value="0">Adults</option>

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
			<label><b>Choose Flight Type</b></label> <select id="myList" name="CabinType">

			<option value="0">Select option</option>

			<option value="1">Economy</option>

			<option value="2">Business</option>

			<option value="3">Coach</option>

			<option value="4">First Class</option>

		</select>
		</td>
		</tr>
		<tr><td></td></tr>
		<tr><td></td></tr> &nbsp;&nbsp;&nbsp;&nbsp;
		 <tr><td><input type="submit" value="Search">
		 </td>
		</tr>
		</table>
		</div>
	</form>
</body>
</html>