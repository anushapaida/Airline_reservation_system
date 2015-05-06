<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	ResultSet resultSet = null;
	ResultSet resultSet1 = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reservation Details</title>
<style>
#table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border: 1px solid #98bf21;
	
}

#table td, #table th {
	font-size: 1em;
	border: 0px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#table th {
	font-size: 1.1em;
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
<% String email = request.getParameter("email");
int resid = 0;%>

<%Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager
					.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			String idTran;
			Statement statement = con.createStatement();
			CallableStatement myStmt = con
					.prepareCall("{call pr_TicketDetails(?)}");
			myStmt.setString(1, email);
			
			myStmt.execute();
			resultSet = myStmt.getResultSet();%>
			<h2><a href="ticketdetails.jsp">Back</a></h2>
			<p>Flight Details<p>
			<table id="table">
			
				<%while (resultSet.next()) { 
					int triptype = resultSet.getInt(6);
					resid = resultSet.getInt(1); %>

				<tr><td><b>Flight Name:</b><%=resultSet.getString(16)%></td></tr>
				<tr><td><b>Departure Time:</b><%= resultSet.getString(11) %></td></tr>
				<tr><td><b>From:</b><%=resultSet.getString(17) %></td></tr>
				<tr><td><b>Arrival Time:</b><%= resultSet.getString(12) %></td></tr>
				<tr><td><b>To:</b><%= resultSet.getString(18) %></td></tr>
				<tr><td><b>Depature Date:</b><%= resultSet.getString(9) %></td></tr>
				<tr><td><b>Arrival Date:</b><%= resultSet.getString(10) %></td></tr>
				<%if(triptype == 1){ %>
				<tr><td><b>Trip Type:</b>One way</td></tr>
				<%}else {%><tr><td><b>Trip Type:</b>Round Trip</td></tr><%} %>

			
			</table>
			<p>Passenger List<p>
    <%
    resultSet1 = statement.executeQuery("SELECT * FROM Passenger where idreservation = '"+ resid +"'");
	while (resultSet1.next()) {%>
		
		<table id="table">
		<tr><td><b><%=resultSet1.getString(3)%>&nbsp<%= resultSet1.getString(4) %></b></td></tr>
		
	<%}%>
	
				</table>
				
				
				
<h2><a href="cancel.jsp?reservation=<%= resultSet.getString(1) %>">Cancel Reservation</a></h2>	
<%}%>			
</body>
</html>
