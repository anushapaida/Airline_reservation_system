<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account</title>
		<style>
			#Header {
				background-color:#A7C942;
				color:white;
				text-align:center;
				padding:6px;
			}
			#Nav {
				line-height:30px;
				background-color:#eeeeee;
				height:450px;
				width:200px;
				float:left;
				padding:5px;	      
			}
		</style>

</head>
<body>
<h1 id = "Header">Welcome</h1>
		<div id ="Nav">
			<a href="UserAcc.jsp">Edit Profile</a><br>
			<a href="RevDetails.jsp">Reservation Details</a><br>
			<a href="ChangePass.jsp">Change Password</a><br>
			<a href="index.jsp">Book A Flight</a><br>
			<a href="CrediCard.jsp">Add a Card</a><br>
			<a href="index.jsp">Log out</a>
		</div>
		<label style="margin: 20px">You have the following options</label><br><br>
		<label style="margin: 20px">Edit Profile- used to change your profile settings</label><br>
		<label style="margin: 20px">Reservation Details- used to look at reservations you have made or cancel them</label><br>
		<label style="margin: 20px">Change Password- used to change your password</label><br>
		<label style="margin: 20px">Book a Flight- used to make a reservation</label><br>
		<label style="margin: 20px">Add a Card- used to add a credit card to your account</label><br>
		<label style="margin: 20px">Log Out- log out of the system</label>
    </body>

</body>
</html>
