/*
Module name: insertCustomer.java
Date of Code: 04/22/15
Programmer: Kiet Nguyen
Module description: This module establishes a connection to the database and inserts a Customer object into the Customer table.
Functions: This module simply insert an entry into the Customer table in the database.
Data Structures:  No data structure
Algorithms:  No algorithms
*/

package bean;
import java.sql.*;
public class insertCustomer 
{
	public static insertCust(Customer c)
	{
		int status = 0;
		try
		{
			String customerTable = "INSERT INTO Customer"
									+ "(firstName, lastName, dob, country, city, state, zip, email)"
									+ " VALUES (?,?,?,?,?,?,?,?)";
			Connection con = ConnectionProvider.getCon();
			PreparedStatement insertC = con.prepareStatement(customerTable);
			insertC.setString(1,c.getFirstName);
			insertC.setString(2,c.getLastName);
			insertC.setString(3,c.getDob);
			insertC.setString(4,c.getCountry);
			insertC.setString(5,c.getCity);
			insertC.setString(6,c.getState);
			insertC.setString(7,c.getZip);
			insertC.setString(8,c.email);
			
			status=ps.executeUpdate();
		}catch(Exception e){}
		
		return status;
	}
}