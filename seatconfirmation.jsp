<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
	ResultSet resultset = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int TripType = (Integer)session.getAttribute("SesTripType");
int outboundFlight = (Integer)session.getAttribute("SesoutboundFlight");
String seatSelected = (String)session.getAttribute("SesseatSelected");
%>
<%try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager
			.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
	Statement statement = con.createStatement();
	

String[] parts = seatSelected.split("&");
for (String part : parts) {
    int seat = Integer.parseInt(part);
    statement.executeUpdate("Update Seat set Seat.avaliable = 1 where idSeat = '"+seat+"'");
	}
if(TripType == 2){
	int returnFlight = (Integer)session.getAttribute("SesreturnFlight");
	String seatSelectedret = (String)session.getAttribute("SesseatSelectedret");
	String[] parts1 = seatSelectedret.split("&");
	for (String part1 : parts1) {
	    int seat1 = Integer.parseInt(part1);
	    Statement statement1 = con.createStatement();
	    statement1.executeUpdate("Update Seat set Seat.avaliable = 1 where idSeat = '"+seat1+"'");
		}
	}
}catch (Exception e)
		 { // TODO Auto-generated catch block
				e.printStackTrace();
		 }%>

<script>
<%
Random ran = new Random();

int numb = ran.nextInt();
String numbS = Integer.toString(numb);
String s = "MAKM";
String randnum = s + numbS;
String result;
// Recipient's email ID needs to be mentioned.
String to =  "anusha.paida@gmail.com";

// Sender's email ID needs to be mentioned
String from = "makmliners@mailinator.com";

// Assuming you are sending email from localhost
String host = "localhost";

// Get system properties object
Properties properties = System.getProperties();

// Setup mail server
properties.setProperty("mail.smtp.host", host);

// Get the default Session object.
Session mailSession = Session.getDefaultInstance(properties);
try{
// Create a default MimeMessage object.
MimeMessage message = new MimeMessage(mailSession);
// Set From: header field of the header.
message.setFrom(new InternetAddress(from));
// Set To: header field of the header.
message.addRecipient(Message.RecipientType.TO,
                   new InternetAddress(to));
// Set Subject: header field
message.setSubject("Airline Tickets Confirmation from Makmliners");
// Now set the actual message
message.setText("Your flight is confirmed and your confirmation number is " + randnum);
// Send message
Transport.send(message);

}catch (MessagingException mex) {
mex.printStackTrace();

}
%>

</script>
<h2><a href="index.jsp">Back</a></h2>
<h1> Your flight is confirmed and you will recieve the confirmation email shortly.</h1>	
</body>
</html>
