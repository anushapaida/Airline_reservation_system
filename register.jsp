<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register page</title>
    
    <style>
        b7 {
        	color: ForestGreen;
        	font-family: arial;
        	font-size: 30px;
        }
        
        b2 {
        	color: ForestGreen;
        	font-family: arial;
        	font-size: 12px;
        }
        
        b3 {
        	color: black;
        	font-family: arial;
        	font-size: 8px;
        }
        
        b4 {
        	color: ForestGreen;
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
            width: 1210;
        }
        #nav {
           line-height:30px;
           background-color:#eeeeee;
           height:800px;
           width:200px;
           float:left;
           padding:5px;	
           font-family:arial;
           font-size: 16px;
           font-weight: bold;
           border: 1px solid ForestGreen;
        }
        #section {
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            width:1046px;
            height:808px;
            float:left;
            padding:1px;	
            font-family:arial;
            !--color:white;
            font-weight:bold;
            border: 1px solid ForestGreen;
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
	<form method="post">
		<div class="my-container">
            <img src="http://crispme.com/wp-content/uploads/macbook-pro-17-clouds-wallpaper.jpg">
            <div id="header">
               <b1> <b7>MAKMLINER Airlines</b7></b1>
            </div>
        </div>
		
		<div id="nav">
		    <b4>Back to MAKMLINER Airlines Homepage </b4><a href="index.jsp">here</a><br>
		    <br><b4> Registered already please login </b4> <a href="login.jsp">here</a>
        </div>
        
        <div class="my-container">
            <img height= 100% src="http://www.hdwallpaperscool.com/wp-content/uploads/2013/11/beach-sunset-beautiful-widescreen-hd-wallpapers.jpg">
            <div id="section">
                <b1><b7><center>JOIN MAKMLINERS</center></b7>
        	    
        		<b2>Please complete the form below using an email address and
        		password that's easy to remember.<br>
                By filling it out now, you'll never have to enter your information
        		again as long as you're logged in on makmlinerairelines.com</b2>
                
                <b3> <br>
        		This form is for customers 13 years or older. If you would like to
        		enroll a child under 13 years old in MAKMLINERS, please call at
        		1-800-MAKMAIR (538-2583), TTY/TDD 1-800-336-5530</b3>
        
        		<br><hr size=1px color=ForestGreen></hr>
        
        		<b4>Name</b4>
        
        		<b5>(* required) <br>Use your name as it appears on a government-issued ID. We are also
        		asking for your gender and date of birth since those, too, are now
        		required by the TSA.</b5> <br>
        		
        		<b6>Title</b6><br> 
        		<select>
        			<option value="title" selected>Select Title</option>
        			<option value="Mr.">Mr.</option>
        			<option value="Mrs.">Mrs.</option>
        			<option value="Ms.">Ms.</option>
        			<option value="Miss">Miss</option>
        			<option value="Dr.">Dr.</option>
        			<option value="Master">Master</option>
        		</select> <br>
        		
        		<table border="0">      
        			<tr> 
        				<td><b6>First Name*</b6></td>
        				<td><b6>Middle Name</b6></td>
        				<td><b6>Last Name*</b6></td>
        				<td><b6>Suffix</b6></td>
        			</tr>
        			<tr>
        				<td><input type="text" name="first name"></td>
        				<td><input type="text" name="middle name"></td>
        				<td><input type="text" name="last name"></td>
        				<td><select><option value="suffix" selected>Select Your Suffix</option>
        						<option value="Jr.">Jr.</option>
        						<option value="Sr.">Sr.</option>
        						<option value="M.D.">M.D.</option>
        						<option value="II">II</option>  
        						<option value="III">III</option>
        						<option value="IV">IV</option>
        						<option value="V">V</option></select></td>
        			</tr>
        			<tr>
        				<td><b6>Date of Birth*</b6></td>
        				<td><b6>Gender*</b6></td>
        			</tr>
        			<tr>
        				<td><input type="date" name="Date of Birth"></td>
        				<td><select><option value="gender" selected>Select</option>
        						<option value="Female">Female</option>
        				</select></td>
        			</tr>
        		</table>
        		
        		<hr size=1px color=ForestGreen></hr>

        		<b4> Address </b4>	<br>
                <table border="0">
        			<tr>
        				<td><b6>Country*</b6></td>
        				<td><b6>Address*</b6></td>
        			</tr>
        			<tr>
        				<td><input type="text" name="country"
        					placeholder="United States of America"></td>
        				<td><input type="text" name="address"></td>
        			</tr>
        			<tr>
        				<td><b6>City*</b6></td>
        				<td><b6>State*</b6></td>
        				<td><b6>Postal Code*</b6></td>
        			</tr>      
        			<tr>
        			    <td><input type="text" name="city"></td> 
        				<td><select><option value="state" selected>Select</option>
        						<option value="AL">Alabama</option>
        						<option value="AK">Alaska</option>
        						<option value="AZ">Arizona</option>
        						<option value="AR">Arkansas</option>
        						<option value="CA">California</option>
        						<option value="CO">Colorado</option>
        						<option value="CT">Connecticut</option>
        						<option value="DE">Delaware</option>
        						<option value="DC">District Of Columbia</option>
        						<option value="FL">Florida</option>
        						<option value="GA">Georgia</option>
        						<option value="HI">Hawaii</option>
        						<option value="ID">Idaho</option>
        						<option value="IL">Illinois</option>
        						<option value="IN">Indiana</option>
        						<option value="IA">Iowa</option>
        						<option value="KS">Kansas</option>
        						<option value="KY">Kentucky</option>
        						<option value="LA">Louisiana</option>
        						<option value="ME">Maine</option>
        						<option value="MD">Maryland</option>
        						<option value="MA">Massachusetts</option>
        						<option value="MI">Michigan</option>
        						<option value="MN">Minnesota</option>
        						<option value="MS">Mississippi</option>
        						<option value="MO">Missouri</option>
        						<option value="MT">Montana</option>
        						<option value="NE">Nebraska</option>
        						<option value="NV">Nevada</option>
        						<option value="NH">New Hampshire</option>
        						<option value="NJ">New Jersey</option>
        						<option value="NM">New Mexico</option>
        						<option value="NY">New York</option>
        						<option value="NC">North Carolina</option>
        						<option value="ND">North Dakota</option>
        						<option value="OH">Ohio</option>
        						<option value="OK">Oklahoma</option>
        						<option value="OR">Oregon</option>
        						<option value="PA">Pennsylvania</option>
        						<option value="RI">Rhode Island</option>
        						<option value="SC">South Carolina</option>
        						<option value="SD">South Dakota</option>
        						<option value="TN">Tennessee</option>
        						<option value="TX">Texas</option>
        						<option value="UT">Utah</option>
        						<option value="VT">Vermont</option>
        						<option value="VA">Virginia</option>
        						<option value="WA">Washington</option>
        						<option value="WV">West Virginia</option>
        						<option value="WI">Wisconsin</option>
        						<option value="WY">Wyoming</option>
        				</select></td>      
        				<td><input type="text" name="postal code"></td>
        		</table>
        		<hr size=1px color=ForestGreen></hr>
        		
        		<b4> Email </b4><br>
                <table border="0">
        			<tr>
        				<td><b6>Primary Email*</b6></td>
        				<td><b6>Confirm Primary Email*</b6></td>
        			</tr>
        			<tr>
        				<td><input type="text" name="primary email"></td>
        				<td><input type="text" name="confirm primary email"></td>
        			</tr>
        		</table>
        		
        		<hr size=1px color=ForestGreen></hr>
       
        		<b4>Account</b4><br>

        		<table border="0">
        			<tr>      
        				<td><b6>Username*</b6></td>    
        				<td><b6>Password*</b6></td> 
        				<td><b6>Confirm Password*</b6></td>
        			</tr>
        			<tr>
        				<td><input type="text" name="username:"></td>
        				<td><input type="text" name="password:"></td>
        				<td><input type="text" name="confirm password:"></td>
        			</tr>
        		</table>
        
        		<hr size=1px color=ForestGreen></hr>

        		<b6>
        			<input type="checkbox" name="agreement:"> I agree to the
        			MAKIMLINERS terms/conditions and private policy <br>
        			<p style="text-align:center"><input type="submit" value="Register"></p>
        		</b6>
        		</b1>
    		</div>
    	</div>
    </form>
</body>
</html>
