<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Card</title>
<style>

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

 div {

   width: 500px;
    height:250px;
    padding: 25px;
    border: 2px solid #999;
    margin-top: 100px;
    margin-right: 150px;
    margin-left: 300px;
    border: 2px solid ForestGreen;

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

</style>
</head>
<body>
<form action="Addcard" method ="post">

<% int custid=Integer.parseInt(request.getParameter("id"));%>
<h2><a href="user.jsp?id=<%=custid%>">Back</a></h2>
<%String message =request.getParameter("message");
String s ="success";
if(message != null){
	if(message.equals(s))
	{%>
		<p>Card is Added.</p>
	<%}
	}%>

<div>
<b1>Payment Information</b1> <br><br>

<input type="hidden" name = "custid" value="<%=custid%>">
<b2>

<table border="0">

  <tr>

    <td>Credit Cards Accepted </td>

    <td><select class="textbox" name="cardType"><option value="select your card type"  selected>Select Your Card Type</option>

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

     <select class="box" name="month">

      <option value="Month" selected>Month</option>

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

     <select class="box" name="year">

      <option value="year" selected>Year</option>

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

    <td><input type="text" name="cvv" class="box"></td>

  </tr>

  <tr>

    <td>Name on Card</td>

    <td><input type="text" name="nameoncard" class="textbox"></td>

  </tr>

</table>

</b2>


<br>

<td><input type="submit" name="Submit" value ="Submit" class="box"></td>


</div></form> 
</body>
</html>
