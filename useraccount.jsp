<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>

<%
	ResultSet resultSet = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Your Profile</title>
<style> 
    #header {
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        font-family:arial;
        font-size: 40px;
        font-weight:bold;
        color:forestgreen;
        text-align:center;
        padding:50px;
        border: 1px solid ForestGreen;
    } 
    #nav {
        line-height:30px;
        background-color:#eeeeee;
        height:600px;
        width:200px;
        float:left;
        padding:5px;	
        font-family:arial;
        color: ForestGreen;
        font-size: 16px;
        font-weight: bold;
        border: 1px solid ForestGreen;
    }
    #section {
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
        background-image:url("http://kerrlakecornhole.com/wp-content/uploads/2014/05/Beach-paradise-chairs.jpg");
        height:590px;
        padding:10px;	
        font-family:arial;
        color:black;
        font-size: 16px;
        font-weight:bold;
        border: 1px solid ForestGreen;
    }
    .textbox { 
        background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
        border: 1px solid ForestGreen; 
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
    #box {
        padding: 0px;
        float: left;
        border: 0px solid #999;
        width: 400px;
        height:400px;
        margin-right: 200px;
        margin-left: 300px;
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
        height: auto%;
        opacity: 0.5;
    }
</style> 
</head>
<body>
<form action ="UseraccountServlet" method = "POST">
    <div class="my-container">
            <img src="http://crispme.com/wp-content/uploads/macbook-pro-17-clouds-wallpaper.jpg">
            <div id="header">
               <b1>MAKMLINER Airlines</b1>
            </div>
    </div>
    <div id="nav">
        Click <a href="user.jsp"> here</a> to go back to your account page <br><br>
        Click <a href="index.jsp"> here</a> to go to the MAKMLINER Airlines homepage
    </div>
<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT Customer.*,Account.password FROM Customer INNER JOIN AirlineDB.Account ON Customer.idCustomer = Account.customer_idCustomer WHERE Customer.idCustomer = 1");
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}


		while(resultSet.next()){
		%>
    		<div id="section">
    		    <div id="box">
    		    <b1><font size= "6" color= "black" family="arial"> Edit Your Profile</font></b1><br><br>
        		 <b1>
            		<input type=hidden id="cusid" name="CustId" value="<%=resultSet.getString(1)%>">
            		First Name: <br><input type="text" class="textbox" id = "FirName" name = "FirName" value="<%=resultSet.getString(2)%>"><br>
            		Last Name:<br><input type="text" class="textbox" id = "LasName" name ="LasName" value = "<%=resultSet.getString(3)%>"><br>
            		Date of Birth:<br><input type="date" class="textbox" name ="dob" value = "<%= resultSet.getDate(4) %>"><br>
            		Country:<br><input type="text" id ="Coun" class="textbox" name ="Coun" value ="<%=resultSet.getString(5)%>"><br>
            		Street Address:<br><input type="text" class="textbox" id ="StreAddr" name ="StreAddr" value ="<%=resultSet.getString(6)%>"><br>
            		City:<br><input type="text" id ="City" class="textbox" name ="City" value ="<%=resultSet.getString(7)%>"><br>
            		State:<br><input type="text" id ="Sta" class="textbox" name ="Sta" value ="<%=resultSet.getString(8)%>"><br>
            		Zip code:<br><input type="text" id ="Zip" class="textbox" name ="Zip" value ="<%=resultSet.getString(9)%>"><br>
            		Email:<br><input type ="email" id = "Email" class="textbox" name="Email" value ="<%=resultSet.getString(10)%>"><br>
        		<% }
        		%>
        		<br><p style="text-align:center"><button style="background-color:DarkSeaGreen;font:bold 16px arial;color: white;width:100;height:100">Save</button></b1></p>
        	
        		</div>
        	</div>
    </form>

</body>
</html>
