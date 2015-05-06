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
<title>Registration details</title>
<style>
#table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#table td, #table th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 10px 7px 2px 7px;
	padding-left: 5px;
}

#table th {
	font-size: 1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#table tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
	padding: 25px;
}
div {
    
    width: 900px;
    height:150px;
    padding: 25px;
    border: 2px solid #999;
     
    font-family:verdana;
    font-size:100%;
}
p  {
    color:green;
    font-family:verdana;
    font-size:160%;
}
</style>
</head>
<body>
<form>
<% int custid = Integer.parseInt(request.getParameter("id"));%>
<h2><a href="user.jsp?id=<%=custid%>">Back</a></h2>
<% 
	try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager
			.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
	CallableStatement myStmt = con.prepareCall("{call pr_ReservationDetails(?)}");
	myStmt.setInt(1, custid);
	myStmt.execute();
	resultset = myStmt.getResultSet();;%>
	<%while (resultset.next()) { %>			
				<div>
				<table >
				<tr><td>Flight Name: <%= resultset.getString(15) %></td></tr>
				<tr><td><%= resultset.getString(16) %> to <%= resultset.getString(17) %> </td></tr>
				<tr><td>Depature Date: <%= resultset.getString(8) %></td></tr>
				<tr><td>Depature Time: <%= resultset.getString(10) %></td></tr>
				<tr><td>Arrival Date: <%= resultset.getString(9) %></td></tr>
				<tr><td>Arrival Date: <%= resultset.getString(11) %></td></tr>
	
		
			</table>
				</div>
				<%} 
}catch (Exception e) { // TODO Auto-generated catch block
 		e.printStackTrace();
 	}%>
</form>
</body>
</html>
					
	
	
	
	
