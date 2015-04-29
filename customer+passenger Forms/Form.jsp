<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!
Module name: Form.jsp
Date of Code: 04/29/15
Programmer: Kiet Nguyen
Module description: An html form to get customer and passenger information via user input. 
Functions: 	Populates drop down boxes for day and year.
			After getting customer information, this jsp will call a module that will handle class creation and database insertion.
			Uses jquery to handle dynamical adding or removing passenger forms. After getting passenger(s) information, this jsp will call a module that will handle class creation and database insertion.
Data Structures: No data structure mainly an html file
Algorithms: No algorithms used mainly an html file
>
<%@ page import="java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation System</title>
<script type="text/javascript">

function populatedropdown(dayfield, yearfield)
{
var today=new Date()
var dayfield=document.getElementById(dayfield)
var yearfield=document.getElementById(yearfield)
for (var i=1; i<=31; i++)
{
var opt = new Option();
opt.value = opt.text = i
dayfield.add(opt)
}

var thisyear=today.getFullYear()
for (var y=thisyear; y>=1900; y--)
{
var opt = new Option();
opt.value = opt.text = y;
yearfield.add(opt)
}

}
</script>
<script>
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

.hidden {
    display: none;
}
</style>
</head>
<body>
	<form action="insertCustomer.jsp" method="post">
	<div id="header">
	<h1>Customer Form</h1>
	</div>
	<div id="nav">
	<a href="">Login</a><br>
	<a href="">Reservation Details</a><br>
	</div>
		
			
	<div id="section">
	<table>
	<tr>
	<td><label><b>First Name:</b></label><br> <input required type="text" name="firstName" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>Last Name:</b></label><br> <input required type="text" name="lastName" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>Date of Birth:</b></label><br> 
		<select name="monthDob" onlick="this.value=''">
		<option value = "">MM</option>

		<option value = "1">1</option>

		<option value = "2">2</option>

		<option value = "3">3</option>

		<option value = "4">4</option>

		<option value = "5">5</option>

		<option value = "6">6</option>

		<option value = "7">7</option>

		<option value = "8">8</option>

		<option value = "9">9</option>

		<option value = "10">10</option>

		<option value = "11">11</option>

		<option value = "12">12</option>
	</select>
	<select name="dayDob" onlick="this.value=''">
	<option value = "">DD</option>
	</select>
	<select name="yearDob" onlick="this.value=''">
	<option value = "">YYYY</option>
	</select></td>

	<script type="text/javascript">

	//populatedropdown
	window.onload=function(){populatedropdown("daydropdown", "yeardropdown")}
	</script></td>
	</tr>
	<td><label><b>Country:</b></label><br><input required type="text" name="country" onlick="this.value=''">
	<tr>
	<td><label><b>Street Address:</b></label><br><input required type="text" name="stAddress" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>City:</b></label><br><input required type="text" name="city" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>State:</b></label><br><input required type="text" name="state" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>Zip Code:</b></label><br><input required type="text" name="zip" onlick="this.value=''"></td>
	</tr>
	<tr>
	<td><label><b>Email:</b></label><br><input required type="text" name="email" onlick="this.value=''"></td>
	</tr>
	<tr>
	</tr>
	</table>
	</div>
	</form>
	
<br>

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

<div id="passenger_form" class="hidden">
    <p>
        Passenger :         
        
        <input type="button" id="remove_passenger" value="Remove">
		
<form action="insertPassenger.jsp" method="post">   

<div id="customer class="hidden"> 
<input required type="text" name="custID" value="<%myStmt%>" onlick="this.value=''> </div>
         
First name:<br>
            
<input required type="text" name="firstName" onlick="this.value=''>

<br>

Last name:<br>
<input required type="text" name="lastName" onlick="this.value=''>

<br>

<label>Date of Birth: </label> <br>

<select required id = "dobMonth" name="monthDob" onlick="this.value=''>

<option value = "">MM</option>

<option value = "1">1</option>

<option value = "2">2</option>

<option value = "3">3</option>

<option value = "4">4</option>

<option value = "5">5</option>

<option value = "6">6</option>

<option value = "7">7</option>

<option value = "8">8</option>

<option value = "9">9</option>

<option value = "10">10</option>

<option value = "11">11</option>

<option value = "12">12</option>

</select>

<select id="daydropdown" name="dayDob" onlick="this.value=''>
<option value = "">DD</option>
</select>
<select id="yeardropdown" name="yearDob" onlick="this.value=''>
<option value = "">YYYY</option>
</select>
    
<script type="text/javascript">

//populatedropdown
window.onload=function(){populatedropdown("daydropdown", "yeardropdown")}
</script>

</form>
    </p>
</div>

<form>
    <p>
         <input type="button" value="Add Passenger" id="add_passenger">
         <br>
         <input type="Submit" value="Submit">
    </p>
</form>

</body>
</html>