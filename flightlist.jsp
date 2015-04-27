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
<title>Flight List</title>
<style>
#table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#table td, #able th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#table th {
	font-size: 1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#table tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
p  {
    color:green;
    font-family:verdana;
    font-size:160%;
}
</style>
</head>
<body>
<form>

<% 
	try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager
			.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
	Statement statement = con.createStatement();
	resultset = statement.executeQuery("SELECT Airplane.*, Airport.city FROM Airplane INNER JOIN Airport on Airplane.idAirport = Airport.idAirport;");%>
	<table id="table">
	<tr>
		<th></th>
		<th>Flight</th>
		<th>City</th>
		<th>First Class seats</th>
		<th>Business Class seats</th>
		<th>Economy seats</th>
		<th>Personal Entertainment</th>
		<th>Wifi</th>
		<th>AC 110V</th>
		<th>USB Power</th>


	</tr>
	<%while (resultset.next()) { %>

	<tr>
		
		<td><%= resultset.getString(1) %></td>
		<td><a href="editflight.jsp?id=<%=resultset.getString(9)%>"><%= resultset.getString(9) %></a></td>
		<td><%= resultset.getString(11) %></td>
		<td><%=resultset.getString(2) %></td>
		<td><%= resultset.getString(3) %></td>
		<td><%= resultset.getString(4) %></td>
		<%if(((Number) resultset.getObject(5)).intValue() == 1)
		{%>
		<td>YES </td>
		<%}
		else
		{%>
		<td>NO </td>
		<%}%>
		<%if(((Number) resultset.getObject(6)).intValue() == 1)
		{%>
		<td>YES </td>
		<%}
		else
		{%>
		<td>NO </td>
		<%}%>
		<%if(((Number) resultset.getObject(7)).intValue() == 1)
		{%>
		<td>YES </td>
		<%}
		else
		{%>
		<td>NO </td>
		<%}%>
		<%if(((Number) resultset.getObject(8)).intValue() == 1)
		{%>
		<td>YES </td>
		<%}
		else
		{%>
		<td>NO </td>
		<%}%>
		


	</tr>
	<%}%>
</TABLE>
	<%}
	 catch (Exception e)
		 { // TODO Auto-generated catch block
				e.printStackTrace();
		 }
		%>
	</form>
</body>
</html>
