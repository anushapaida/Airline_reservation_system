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
<title>Customer List</title>
<style>
			#table {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	width: 100%;
	border-collapse: collapse;
}

#table td, #table th {
	font-size: 1em;
	border: 1px solid #98bf21;
	padding: 3px 7px 2px 7px;
}

#table th {
	font-size: 1.1em;
	text-align: left;
	padding-top: 5px;
	padding-bottom: 4px;
	background-color: #A7C942;
	color: #ffffff;
}

#table tr.alt td {
	color: #000000;
	background-color: #EAF2D3;
}
p  {
    color:green;
    font-family:verdana;
    font-size:160%;
}
		</style>

</head>
<body>
<%String id=request.getParameter("id");
Statement statement = null;

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
	statement = connection.createStatement();
	resultSet = statement.executeQuery("SELECT * FROM Customer WHERE Customer.idCustomer = " + id);
}
catch (Exception e) { // TODO Auto-generated catch block
	e.printStackTrace();
}


%>
<h1 style="background-color: green; color: white; text-align: center">Customer Info</h1>
<table id="table">

<tr>
	<th>
		First Name
	</th>
	<th> 
		Last Name
	</th>
	<th>
		Date of Birth
	</th>
	<th>
		Country
	</th>
	<th>
		Street Address
	</th>
	<th>
		City
	</th>
	<th>
		State
	</th>
	<th>
		Zip Code
	</th>
	<th>
		Email
	</th>
</tr>
<%while (resultSet.next()) { %>
<tr>
	<td>
		<%=resultSet.getString(2)%>
	</td>
	<td>
		<%=resultSet.getString(3)%>
	</td>
	<td>
		<%=resultSet.getString(4)%>
	</td>
	<td>
		<%=resultSet.getString(5)%>
	</td>
	<td>
		<%=resultSet.getString(6)%>
	</td>
	<td>
		<%=resultSet.getString(7)%>
	</td>
	<td>
		<%=resultSet.getString(8)%>
	</td>
	<td>
		<%=resultSet.getString(9)%>
	</td>
	<td>
		<%=resultSet.getString(10)%>
	</td>
</tr>
<%}%>
</table>

</body>
</html>
