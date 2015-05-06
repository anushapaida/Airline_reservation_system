<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AirLine Resesrve</title>
<meta name="viewport" content="width=device-width">
<style>
	.hidden {
		display: none;
		}
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
  	.box1{
    	background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    	border: 1px solid #999; 
    	outline:0; 
    	height:25px; 
    	width: 175px; 
    	color:green;
  	}
	div1 {
    
    	width: 300px;
    	height:300px;
    	padding: 25px;
    	border: 0px solid #999;
   		margin-top: 100px;
    	margin-right: 150px;
    	margin-left: 450px;
    	color:green;
    	font-family:arial;
   		font-size:18px;
	}
	b1{
	
   color:darkseaGreen;
   font-family: arial;
   font-size: 18px;}

  b2{

   color:black;
   font-family:arial;
   font-size: 14px;}

  b3{

   color:white;
   font-family:arial;
   font-size:18px;}

 p.one {

    border-style: solid;
    border-color: ForestGreen;
    border-width: 2px;} 
}
</style>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script type="text/javascript">
window.onload=function(){populatedropdown("daydropdown1", "yeardropdown1")}

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

$(document).ready(function(){
	$( "#dob" ).datepicker();
    var passenger_form_index=0;
    $("#add_passenger").click(function(){
    	passenger_form_index++;
        $(this).parent().before($("#passenger_form").clone().attr("id","passenger_form" + passenger_form_index));
        $("#passenger_form" + passenger_form_index).css("display","inline");
        $("#passenger_form" + passenger_form_index + " :input").each(function(){
            $(this).attr("name",$(this).attr("name") + passenger_form_index);
            //$(this).attr("id",$(this).attr("id") + passenger_form_index);
            });
        $("#remove_passenger" + passenger_form_index).click(function(){
            $(this).closest("div").remove();
        });
    }); 
});

</script>

</head>
<body>
<form action = "Paymentpage" method = "post">
<fieldset>
<div1>
<b1>Customer Information</b1> <br><br>
First name:<br>
<input  type="text" name="firstname" class="textbox">

<br>

Last name:<br>
<input  type="text" name="lastname" class="textbox">

<br>

<label>Date of Birth: </label> <br>
<input  type="text" id="dob" name="dob" class="textbox">



<br>Country:<br>
<input  type="text" name="Country" class="textbox">
<br>

Street Address:<br>
<input  type="text" name="stAddress" class="textbox">
<br>

City:<br>
<input  type="text" name="city" class="textbox">
<br>

State:<br>
<input  type="text" name="state" class="textbox">
<br>

Zip Code:<br>
<input  type="text" name="zip" class="textbox">
<br>

Email:<br>
<input  type="text" name="email" class="textbox">

<br><br>




<div id="passenger_form" class="hidden">
    <p>
        Passenger :         
        
        <input type="button" id="remove_passenger" value="Remove" class="box">
            
<br>
First name:<br>
            
<input  type="text" name="firstname" class="textbox">

<br>

Last name:<br>
<input  type="text" name="lastname" class="textbox">

<br>

<label>Date of Birth: </label> <br>

<select  id = "dobMonth" name="ListMonth" class="box">

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

<select id="daydropdown1" class="box" name="ListDay">
<option value = "">DD</option>
</select>
<select id="yeardropdown1" class="box" name="ListYear">
<option value = "">YYYY</option>
</select>
</div>


    <p>
         <input type="button" value="Add passenger" id="add_passenger" class="box1">
         
    </p>
</fieldset>

<fieldset>
<b1>Payment Information</b1> <br><br>



<b2>

<table border="0">

  <tr>

    <td>Credit Cards Accepted </td>

    <td><select name ="cardtype" class="textbox"><option value="select your card type"  selected >Select Your Card Type</option>

      <option value="american express">American Express</option>

      <option value="discover">Discover</option>

      <option value="master card ">Master Card</option>

      <option value="visa">Visa</option></select> <br>

    </td>

  </tr>

  <tr>

    <td>Card Number: </td>

    <td><input type="text" name="cardnumber" class="textbox"></td>

  </tr>

  <tr>

    <td>Expirtion Date (MM)</td>

    <td>

     <select class="box" name="CMonth">

      <option value="Month"  selected>Month</option>

      <option value="Jan">Jan</option>

      <option value="Feb">Feb</option>

      <option value="Mar">Mar</option>

      <option value="Apr">Apr</option>

      <option value="May">May</option>

      <option value="Jun">Jun</option>

      <option value="Jul">Jul</option>

      <option value="Aug">Aug</option>

      <option value="Sept">Sept</option>

      <option value="Oct">Oct</option>

      <option value="Nov">Nov</option>

      <option value="Dec">Dec</option>

     </select>

     <select class="box" name="Cyear">

      <option value="year"  selected>Year</option>

      <option value="2015">2015</option>

      <option value="2016">2016</option>

      <option value="2017">2017</option>

      <option value="2018">2019</option>

      <option value="2020">2020</option>

      <option value="2021">2021</option>

      <option value="2022">2022</option>

     </select>

    </td>

  </tr>

  <tr>

    <td>CVV</td>

    <td><input type="text" name="cvv" class="textbox"></td>

  </tr>

  <tr>

    <td>Name on Card</td>

    <td><input type="text" name="nameoncard" class="textbox"></td>

  </tr>

</table>

</b2>



<br>
</fieldset>
<button style="background-color:ForestGreen"><b3>Submit</b3></button>



</div1>
</form>

</body>
</html>
