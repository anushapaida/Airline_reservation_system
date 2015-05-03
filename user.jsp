<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account</title>
		<style>
			#Header {
				-webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
                font-family:arial;
                font-size: 40px;
                color:forestgreen;
                text-align:center;
                padding:50px;
                font-weight: bold;
                border: 1px solid ForestGreen;
			}
			#Nav {
				line-height:30px;
				background-color:#eeeeee;
				height:530px;
				width:200px;
				float:left;
				padding:5px;
				border: 1px solid ForestGreen;
			}
			#Profile {
			    -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
			    width: 800px;
			    height: 362px;
                padding:0px;	
                font-family:arial;
                color:white;
                font-weight:bold;
			}
			#box1 {
			    width: 1230px;
                height: 490px;
                float:left;
                padding: 20px;
                border: 1px solid ForestGreen;
                margin: 1;
			}
			body{
			    font-family: Arial;
			    font-size: 14px;
			    color: White;
			    font-weight: bold;
			}
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
                opacity: 0.6;
            }
		</style>

</head>
<body>

<div class="my-container">
        <img src="http://crispme.com/wp-content/uploads/macbook-pro-17-clouds-wallpaper.jpg">
    <div id = "Header">
        <b1>MAKMLINER Airlines</b1>
    </div>
</div>
		<div id ="Nav">
			<a href="UserAcc.jsp">Edit Profile</a><br>
			<a href="RevDetails.jsp">Reservation Details</a><br>
			<a href="ChangePass.jsp">Change Password</a><br>
			<a href="index.jsp">Book A Flight</a><br>
			<a href="CrediCard.jsp">Add a Card</a><br>
			<a href="index.jsp">Log out</a>
		</div>
		
		<div class="my-container">
            <img src="http://thespiritscience.net/wp-content/uploads/2014/06/The-Night-Sky-Wallpaper.jpg">
            <div id="box1">
            <div id="Profile">
            <b1>
                <center><font size="6" family=arial weight=bold color=Black> Welcome to Your Account Page!</font></center><br>
                <font size="4" color=DarkSeaGreen weight=Bold family=arial>You have the following options on the left panel of this page:</font><br>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  
                <font size="3" color=DarkSeaGreen weight=Bold family=arial>Edit Profile:</font> edit your profile settings<br>
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		        <font size="3" color=DarkSeaGreen weight=Bold family=arial>Reservation Details:</font> look up any reservations you have made or cancel them<br>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		        <font size="3" color=DarkSeaGreen weight=Bold family=arial>Change Password:</font> change your password if you need to<br>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		        <font size="3" color=DarkSeaGreen weight=Bold family=arial>Book a Flight:</font> make a flight reservation<br>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		        <font size="3" color=DarkSeaGreen weight=Bold family=arial>Add a Card:</font> add a credit card to your account<br>
		        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		        <font size="3" color=DarkSeaGreen weight=Bold family=arial>Log Out:</font> log out of your account
		    </b1>
		    </div>
		    </div>
        </div>
        
    </body>
</html>
