<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%@ page import ="java.sql.CallableStatement.*"%>
<%@ page import ="java.sql.Connection.*"%>
<%@ page import ="java.sql.DriverManager.*"%>

<%
	ResultSet resultSet = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
<style>
			#header{
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                font-family:arial;
                font-size: 40px;
                font-weight: bold;
                color:forestgreen;
                text-align:center;
                padding:50px;
                border: 1px solid ForestGreen;
            }
			#box {
				width: 400px;
    			height:150px;
    			padding: 25px;
    			border: 2px solid ForestGreen;
    			margin-top: 100px;
    			margin-right: 150px;
    			margin-left: 450px;
    			color:ForestGreen;
    			font-family:arial;
    			font-size:100%;
			}
			.box{
   				background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    			border: 1px solid #999; 
    			outline:0; 
    			height:25px; 
    			width: 125px; 
    			color:ForestGreen;
    		.my-container {
               position: relative;
               overflow: hidden;
            }
            .my-container b1 {
               padding: 200px;
               position: relative;
               z-index: 2;
            } 
            .my-container img {
               position: absolute;
               left: 0;
               top: 0;
               width: 100%;
               height: auto;
               opacity: 0.5;
            }
		</style>
		

</head>
<body>

<form action ="adminreportresults.jsp">
      
		<div id="box">
        <b>Enter in the dates to search flights for:</b><br><br><br>
		<label><b>Start Date:</b></label>
		<input type ="date" name ="BeginDat"><br>
		<label><b>End Date:&nbsp&nbsp</b></label>
		<input type ="date" name ="endDat"><br><br><br>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		
		<input type="submit" value="Show flights" class="box">
		
		
		</div>
</form>
</body>
</html>
