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
<title>User Account</title>
<style> 
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
div {
    
   
    padding: 25px;
    border: 0px solid #999;
    width: 300px;
    height:300px;
    padding: 25px;
    margin-right: 150px;
    margin-left: 450px;
    color:green;
    font-family:verdana;
    font-size:100%;
}

</style> 
</head>
<body>
<form action ="UseraccountServlet" method = "POST">
<% int custid = Integer.parseInt(request.getParameter("id"));%>
<h2><a href="user.jsp?id=<%=custid%>">Back</a></h2>
<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = con.createStatement();
			resultSet = statement.executeQuery("SELECT Customer.*,Account.password FROM Customer INNER JOIN AirlineDB.Account ON Customer.idCustomer = Account.customer_idCustomer WHERE Customer.idCustomer = '"+custid+"'");
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}


		while(resultSet.next()){
		%>
		
		<div>
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
		<br><input type= "submit" class="box" value="Save">
		
		</div>
		</form>

</body>
</html>
