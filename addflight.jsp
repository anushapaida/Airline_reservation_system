<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	ResultSet resultset = null;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a Flight</title>
<style> 
.textbox { 
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 275px;
    color:green; 
  } 
   
  .box{
    background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x;
    border: 1px solid #999; 
    outline:0; 
    height:25px; 
    width: 85px; 
    color:green;
  }
  select{
  background: transparent url(http://html-generator.weebly.com/files/theme/input-text-8.png) repeat-x; 
    border: 1px solid #999; 
    outline:0; 
    height:28px; 
    width: 275px;
    color:green; 
  }
div {
    padding: 50px;
    border: 2px solid green;
	width: 450px;
    height:580px;
 	
    margin-right: 25px;
    margin-left: 50px;
    
    font-family:verdana;
    font-size:100%;
}

</style>
</head>
<body>
<form method="post" >
<h2><a href="index.jsp">Back</a></h2>
<div>
<label><b>Airplane Name:</b> </label><br><%
 	try {
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager
 				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
 		Statement statement = con.createStatement();
 		resultset = statement.executeQuery("select idAirplane,description from Airplane");
 %> <select id="fromairportList" name="fromairportList">
							<%
								while (resultset.next()) {
							%>
							<option value=<%=resultset.getString(1)%>><%=resultset.getString(2)%></option>
							<%
								}
							%>
					</select>
					 <%
 	} catch (Exception e) { // TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 %>

<br><br><label style="padding-right: 9px"><b>From:</b> </label><br> <%
 	try {
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager
 				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
 		Statement statement = con.createStatement();
 		resultset = statement.executeQuery("select * from Airport");
 %> <select id="fromairportList" name="fromairportList">
							<%
								while (resultset.next()) {
							%>
							<option value=<%=resultset.getString(1)%>><%=resultset.getString(2)%></option>
							<%
								}
							%>
					</select>
					 <%
 	} catch (Exception e) { // TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 %>
	<br><br>
	<label style="padding-right: 9px"><b>To:</b> </label><br><%
 	try {
 		Class.forName("com.mysql.jdbc.Driver");
 		Connection con = DriverManager
 				.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
 		Statement statement = con.createStatement();
 		resultset = statement.executeQuery("select * from Airport");
 %> <select id="toairportList" name="toairportList">
							<%
								while (resultset.next()) {
							%>
							<option value=<%=resultset.getString(1)%>><%=resultset.getString(2)%></option>
							<%
								}
							%>
					</select>
					 <%
 	} catch (Exception e) { // TODO Auto-generated catch block
 		e.printStackTrace();
 	}
 %>

<br><br><Label><b>Depart: </b><br></label> <input class="textbox" type="date" name="DepCal" required><br>
<br><Label><b>Arrival: </b><br></label> <input class="textbox" type="date" name="ArrCal" required><br>
<br><Label><b>Depart Time: </b><br></label> <input class="textbox" type="time" name="DepTime" required><br>
<br><Label><b>Arrival Time: </b><br></label> <input class="textbox" type="time" name="ArrTime" required><br>
<br><Label><b>Price:</b></Label><br>
<Label><b>Economy  &nbsp Business  &nbsp First</b></Label><br>
<input type="text" class="box" name="economyPrice"required>
<input type="text" class="box" name="businessPrice"required>
<input type="text" class="box" name="firstPrice"required>

<br><br><br><input type = "submit" class="box" value ="Add">


</div>
</form>
</body>
</html>
