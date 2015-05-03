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
<title>SearchResults</title>
<style>
#table {
	font-family: Arial;
	width: 100%;
	border-collapse: collapse;
}
#table td, #able th {
	font-size: 14px;
	border: 2px solid ForestGreen;
	padding: 3px 7px 2px 7px;
}
#table th {
	font-size: 16px;
	color: ForestGreen;
	text-align: center;
	border: 2px solid ForestGreen;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: DarkSeaGreen;
}
#table tr.alt td {
	color: black;
	background-color: #EAF2D3;
}
</style>
</head>
<body>

	<form method="post">


		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager
						.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
				
				int FromAirport = (Integer)session.getAttribute("SesFromAirport");
				int ToAirport = (Integer)session.getAttribute("SesToAirport");
				String DepDate = (String)session.getAttribute("SesDepDate");
				String ArrDate = (String)session.getAttribute("SesArrDate");
				int NumberOfPassengers = (Integer)session.getAttribute("SesNumberOfPassengers");
				int TripType = (Integer)session.getAttribute("SesTripType");
				int SeatType = (Integer)session.getAttribute("SesSeatType"); %>




		<%
				CallableStatement myStmt = con.prepareCall("{call pr_FlightSearch(?,?,?,?,?,?,?)}");
				
							
					%>
		<%
				myStmt.setInt(1,FromAirport); 
				myStmt.setInt(2,ToAirport);
				myStmt.setString(3,DepDate);
				myStmt.setString(4,ArrDate);
				myStmt.setInt(5,NumberOfPassengers);
				myStmt.setInt(6,TripType);
				myStmt.setInt(7,SeatType);
				myStmt.execute();
				
				resultset = myStmt.getResultSet();%>


		<table id="table">
			<tr>
				<th></th>
				<th>Flight Number</th>
				<th>Departure Time</th>
				<th>From</th>
				<th>Arrival Time</th>
				<th>To</th>
				<th>Seat Type</th>
				<th>Price</th>
				<th>Depature Date</th>
				<th>Arrival Date</th>


			</tr>
			<%while (resultset.next()) { %>

			<tr>
				<td><button type="button" value=<%= resultset.getString(10) %>>Select</button>
				</td>
				<td><%= resultset.getString(3) %></td>
				<td><%= resultset.getString(7) %></td>
				<td><%=resultset.getString(4) %></td>
				<td><%= resultset.getString(6) %></td>
				<td><%= resultset.getString(5) %></td>
				<td><%= resultset.getString(2) %></td>
				<td><%= resultset.getString(1) %></td>
				<td><%= resultset.getString(9) %></td>
				<td><%= resultset.getString(8) %></td>


			</tr>
			<%}%>
		</TABLE>
		<%if(TripType == 2)
			{
				CallableStatement myStmt1 = con.prepareCall("{call pr_FlightSearch(?,?,?,?,?,?,?)}");%>
				
							
					
		<%
				myStmt1.setInt(1,ToAirport); 
				myStmt1.setInt(2,FromAirport);
				myStmt1.setString(3,ArrDate);
				myStmt1.setString(4,DepDate);
				myStmt1.setInt(5,NumberOfPassengers);
				myStmt1.setInt(6,TripType);
				myStmt1.setInt(7,SeatType);
				myStmt1.execute();
				
				resultset = myStmt1.getResultSet();%>


		<table id="table">
			<tr>
				<th></th>
				<th>Flight Number</th>
				<th>Departure Time</th>
				<th>From</th>
				<th>Arrival Time</th>
				<th>To</th>
				<th>Seat Type</th>
				<th>Price</th>
				<th>Depature Date</th>
				<th>Arrival Date</th>


			</tr>
			<%while (resultset.next()) { %>

			<tr>
				<td><button type="button" value=<%= resultset.getString(10) %>>Select</button></td>
				<td><%= resultset.getString(3) %></td>
				<td><%= resultset.getString(7) %></td>
				<td><%=resultset.getString(4) %></td>
				<td><%= resultset.getString(6) %></td>
				<td><%= resultset.getString(5) %></td>
				<td><%= resultset.getString(2) %></td>
				<td><%= resultset.getString(1) %></td>
				<td><%= resultset.getString(9) %></td>
				<td><%= resultset.getString(8) %></td>


			</tr>
			<%}%>
		</TABLE>
			<%
		}
			}
		 catch (Exception e)
		 { // TODO Auto-generated catch block
				e.printStackTrace();
		 }
		%>



	</form>

</body>
</html>
