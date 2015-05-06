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
<title>Cancel Reservation</title>
</head>
<body>
<%String reservationid = request.getParameter("reservation");%>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager
			.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
	Statement statement = con.createStatement();
	statement.executeQuery("DELETE FROM Reservation WHERE idReservation = '"+reservationid+"'");
	
	Statement statement1 = con.createStatement();
	statement1.executeQuery("DELETE FROM Passenger WHERE idReservation = '"+reservationid+"'");
	
	
	
	}catch (Exception e)
		 { // TODO Auto-generated catch block
				e.printStackTrace();
		 }%>
<h2><a href="index.jsp">Back</a></h2>		 
<h1>Your Reservation is cancelled.</h1>
</body>
</html>
