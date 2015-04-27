<%-- 
    Document   : index
    Created on : Apr 8, 2015, 4:31:00 PM
    Author     : matthewliming
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat Page</title>
		<style scoped>
		 .startPt {
			margin-top: 40px;
			margin-left: 100px;
			margin-bottom: 5px;
			 
		 }
		 .startRow {
			margin-left: 100px;
			margin-bottom: 5px;
			background-color: blue;
		 }
		 .bulColSep {
			 margin-right: 30Px;
			 margin-bottom: 5px;
		 }
		 .regBut {
			 margin-bottom: 5px;
		 }
		 .skipBut {
			 margin-top: 20px;
			 margin-left: 300px;
		 }
		 header {
    		background-color:#A7C942;
    		color:white;
    		text-align:center;
    		padding:6px;
    	}
    	footer {
    		background-color:#A7C942;
            color:white;
    		text-align:center;
            width: 100%;
            bottom: 0;
            position: fixed;
            
        }
        div {
    
    width: 800px;
    height:500px;
    padding: 25px;
    border: 0px solid #999;
    margin-top: 10px;
    margin-right: 150px;
    margin-left: 200px;
    color:green;
    font-family:verdana;
    font-size:100%;
}
    

	 </style>
    </head>
    <header>
	<h1 style="background-color: #A7C942; color: white">Seat Selection</h1>
	</header>
	<input type="hidden" id="totPass">
	<div>
	
	<% 
		int i = 0;
String classType = "";
String SeatUnavailColor = "red";
String SeatAvailColor = "aqua";
String seatColor = "";
int seatTyp;


Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
	
		try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
		statement = connection.createStatement();
		resultSet = statement.executeQuery("SELECT * FROM Seat where idAirplane = 1");
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		while(resultSet.next()) {
			
			seatTyp = resultSet.getInt(4);
			if(seatTyp == 1) {
				seatColor = SeatAvailColor;
			}
		else {
				seatColor = SeatUnavailColor;
			}	

	%>
	<script type='text/javascript'>
		 
	document.getElementById('totPass').value = 2;   
	var curPass = 0;
	function changeColor(name) {

		    var but;
            var totalPassengers = document.getElementById('totPass').value;
			but = document.getElementById(name);
			if(curPass < totalPassengers) { 
				if(but.style.backgroundColor == "aqua")
				{
					but.style.backgroundColor = "green";
					curPass = curPass + 1;
				}			

				else if(but.style.backgroundColor == "green")
				{
				but.style.backgroundColor = "aqua";
				curPass = curPass - 1;
			    }
			}
		}
	
	  
      </script>
    <body>
        
		<input type ="button" style="background-color: <%=seatColor%>"  id = "<%=resultSet.getString(1)%>" name =  "<%=resultSet.getString(1)%>" value = " " class = "startPt" onclick = "changeColor(<%=resultSet.getString(1)%>)">
		
		
		
		
		<% } %>
		
		<br>
		<br>
		
		<input type ="Submit" value = "Continue" name="Continue" class ="skipBut" >
		</div>
		
		<footer>
		<h1></h1><input type ="button" style="background-color: aqua"> Available 
		&nbsp&nbsp&nbsp&nbsp
		<input type ="button" style="background-color: red"> UnAvailable
		&nbsp&nbsp&nbsp&nbsp
		<input type ="button" style="background-color: green"> Selected</h1>
		&nbsp&nbsp
		<br><br>
		</footer>
		
    </body>
</html>
