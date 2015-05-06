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
<title>Review Page</title>

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
    
    width: 500px;
    height:350px;
    padding: 25px;
    border: 2px solid #999;
    margin-top: 100px;
    margin-right: 150px;
    margin-left: 450px;
    
    font-family:verdana;
    font-size:100%;
}
p  {
    color:green;
    font-family:verdana;
    font-size:160%;
}

</style> 
</head>
<body>
<form action = customerForm.jsp method = "post">
<div>
<p><b>Review</b></p>
<table>
<tr>
<%
	int idTripType = (Integer)session.getAttribute("SesTripType");
int idFromAirport = (Integer)session.getAttribute("SesFromAirport");
int idToAirport = (Integer)session.getAttribute("SesToAirport");
String DepDate = (String)session.getAttribute("SesDepDate");
String ArrDate = (String)session.getAttribute("SesArrDate");
int idSeatType = (Integer)session.getAttribute("SesSeatType");
int outboundFlight = (Integer)session.getAttribute("SesoutboundFlight");
int NumberOfPassengers = (Integer)session.getAttribute("SesNumberOfPassengers");
int AdultList = (Integer)session.getAttribute("SesAdultList");
int ChildList = (Integer)session.getAttribute("SesChildList");
String seatSelected = (String)session.getAttribute("SesseatSelected");
String TripType;
int PriceRet = 0;
int PriceOb = 0;
String FromAirport ="";
	if (idTripType == 1) {
		TripType = "Oneway";
	} else {
		TripType = "Round Trip";
		
	}%>
	<tr><td><%=TripType%> </td></tr>
	<%if (AdultList != 0) {%>
		<tr><td><%=AdultList%>Adult </td></tr>
	<%}%>
	<%if (ChildList != 0) {%>
		<tr><td><%=ChildList%>Child </td></tr>
	<%}%>
	<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager
				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
		Statement statement = con.createStatement();
		resultset = statement.executeQuery("select airportName from Airport where idAirport='"+ idFromAirport + "'");

		while (resultset.next()) {
			FromAirport = resultset.getString(1);
%>
					<tr><td><%=FromAirport%></td>
					<%}
		
		Statement statement1 = con.createStatement();
		ResultSet resultset1 = statement1.executeQuery("select airportName from Airport where idAirport='"+ idToAirport +"'");
				while (resultset1.next()) {
					String ToAirport = resultset1.getString(1);%>
					<td><%=FromAirport%>&nbsp&nbsp&nbsp to &nbsp&nbsp&nbsp<%=ToAirport%></td></tr>
					<%
					}%>
			<tr><td>Seat for Outbound flight:</td></tr>
			<tr><td><%=seatSelected%> </td></tr>	
		<%
		Statement statement2 = con.createStatement();
		ResultSet resultset2 = statement2.executeQuery("select Price from FlightPrice where idFlight='"+ outboundFlight +"' and idSeatType ='"+ idSeatType +"'");
		while (resultset2.next()) {
			PriceOb = Integer.parseInt(resultset2.getString(1));
			}	
		if(idTripType == 2){
			int returnFlight = (Integer)session.getAttribute("SesreturnFlight");
			String seatSelectedret = (String)session.getAttribute("SesseatSelectedret");%>
			<tr><td>Seat for Return flight: </td></tr>
			<tr><td><%=seatSelectedret%> </td></tr>
			<%Statement statement3 = con.createStatement();
			ResultSet resultset3 = statement3.executeQuery("select Price from FlightPrice where idFlight='"+ returnFlight +"' and idSeatType ='"+ idSeatType +"'");
			while (resultset3.next()) {
				PriceRet = Integer.parseInt(resultset3.getString(1));
				}
		}
		int totalPrice = 0;
		if(idTripType == 2){totalPrice = 2*NumberOfPassengers*(PriceOb + PriceRet);}
		else{totalPrice = NumberOfPassengers*(PriceOb + PriceRet);}
		%>
		<tr><td>Price:<%=totalPrice%>$</td></tr>
		
 	<%} 
	catch (Exception e) { // TODO Auto-generated catch block
 		e.printStackTrace();
 	}%>

    
 
</table>
<br>
<input type="submit" value="Continue" class="box">
</div>

</form>
</body>
</html>
