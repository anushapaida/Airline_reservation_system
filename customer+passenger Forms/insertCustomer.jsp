<%
/*
Module name: insertCustomer.jsp
Date of Code: 04/22/15
Programmer: Kiet Nguyen
Module description: A jsp that will create an object of the customer class and insert into database.
Functions: Upon being called by customerForm.jsp, this jsp will initialize a customer class with the user input from the previous form. It will then call a function to insert an entry into the Customer table in the database.
Data Structures: Not a class/function. It only creates an object and invokes a function.
Algorithms: No algorithms
*/%>

<%@page import="bean.insertCustomer"%>
<jsp:useBean id="obj" class="bean.Customer"/>
<jsp:setProperty property="*" name="obj"/>

<%
insertCustomer.insertCust(obj);
%>
