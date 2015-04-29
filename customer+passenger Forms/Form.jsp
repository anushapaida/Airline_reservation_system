<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
/*
Module name: Form.jsp
Date of Code: 04/29/15
Programmer: Kiet Nguyen
Module description: An html form to get customer and passenger information via user input. 
Functions: 	Populates drop down boxes for day and year.
			After getting customer information, this jsp will call a module that will handle class creation and database insertion.
			Uses jquery to handle dynamical adding or removing passenger forms. After getting passenger(s) information, this jsp will call a module that will handle class creation and database insertion.
Data Structures: No data structure mainly an html file
Algorithms: No algorithms used mainly an html file
*/%>
<%@ page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Form</title>
<script type="text/javascript">
$(document).ready(function(){
    var index=0;
    $("#add_passenger").click(function(){
        index++;
        $(this).parent().before($("#passenger_form").clone().attr("id","passenger_form" + index));
        $("#passenger_form" + index).css("display","inline");
        $("#passenger_form" + index + " :input").each(function(){
            $(this).attr("name",$(this).attr("name") + index);
            $(this).attr("id",$(this).attr("id") + index);
            });
        $("#remove_passenger" + index).click(function(){
            $(this).closest("div").remove();
        });
    }); 
});
</script>

<style>
b1 {
	color: ForestGreen;
	font-family: arial;
	font-size: 30px;
}

b2 {
	color: DarkSeaGreen;
	font-family: arial;
	font-size: 12px;
}

b3 {
	color: black;
	font-family: arial;
	font-size: 8px;
}

b4 {
	color: darkseaGreen;
	font-family: arial;
	font-size: 16px;
}

b5 {
	color: black;
	font-family: arial;
	font-size: 10px;
}

b6 {
	color: black;
	font-family: arial;
	font-size: 14px;
}

div {
	background-color: lightgrey;
	width: 600px;
	padding: 10px;
	border: 1px lightgrey;
	margin: 10px;
}

.hidden {
    display: none;
}
</style>
</head>
<body>
	<form action="insertCustomer.jsp" method="post">
	
	<b1><center><b>Customer Form</b></center></b1>
			
		<div id="section">
			<table>
			<tr>
			<td><label><b>First Name:</b></label><br> <input required type="text" name="firstName" onlick="this.value=''"></td>
			<td><label><b>Last Name:</b></label><br> <input required type="text" name="lastName" onlick="this.value=''"></td>
			</tr>
	
			<tr>
			<td><label><b>Date of Birth:</b><br></label><input type="date" name="Date of Birth"></td>
			</tr>
	
			<tr>
			<td><label><b>Country:</b></label><br><input required type="text" name="country" onlick="this.value=''">
			</tr>
	
			<tr>
			<td><label><b>Street Address:</b></label><br><input required type="text" name="stAddress" onlick="this.value=''"></td>
			<td><label><b>City:</b></label><br><input required type="text" name="city" onlick="this.value=''"></td>
			<td><label><b>State:</b></label><br><input required type="text" name="state" onlick="this.value=''"></td>
			<tr>
			<td><label><b>Zip Code:</b></label><br><input required type="text" name="zip" onlick="this.value=''"></td>
			</tr>
			<tr>
			<td><label><b>Email:</b></label><br><input required type="text" name="email" onlick="this.value=''"></td>
			</tr>
			</table>
		</div>
	</form>
<%
			int status = 0;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager
						.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners"); 
						
				CallableStatement myStmt = con.prepareCall("LAST_INSERT_ID()")
				
				status=ps.executeUpdate();
				}catch(Exception e){}
		return status;
%>
<br>
<div id="passenger_form" class="hidden">
        Passenger :         
        
        <input type="button" id="remove_passenger" value="Remove">
		
		<form action="insertPassenger.jsp" method="post">   

		<div id="customer" class="hidden"> 
			<input required type="text" name="custID" value="<%myStmt%>" onlick="this.value=''">
		</div>
        <div id="section">
			<table>
			<td><label><b>First Name:</b></label><br> <input required type="text" name="firstName" onlick="this.value=''"></td>
			<td><label><b>Last Name:</b></label><br> <input required type="text" name="lastName" onlick="this.value=''"></td>
			</tr>
	
			<td><label><b>Date of Birth:</b><br></label><input type="date" name="Date of Birth"></td>
			</table>
		</div>
	</form>
</div>

<form>
         <input type="button" value="Add Passenger" id="add_passenger">
         <br>
         <input type="Submit" value="Submit">
</form>

</body>
</html>
