<%
/*
Module name: insertPassenger.jsp
Date of Code: 04/22/15
Programmer: Kiet Nguyen
Module description: A jsp that will create an object of the passenger class and insert into database.
Functions: Upon being called by passengerForm.jsp, this jsp will initialize a passenger class with the user input from the previous form. It will then call a function to insert an entry into the Passenger table in the database.
Data Structures: Not a class/function. It only creates an object and invokes a function.
Algorithms: No algorithms
*/%>

<%@page import="bean.insertPassenger"%>
<jsp:useBean id="obj" class="bean.Passenger"/>
<jsp:setProperty property="*" name="obj"/>

<%
insertPassenger.insertPass(obj);
%>
