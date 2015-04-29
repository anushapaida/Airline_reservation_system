/*
Module name: dbConnection.java
Date of Code: 04/22/15
Programmer name: Kiet Nguyen
Module description: A java class that holds database credentials information and returns a connection.
Functions: ConnectionProvider function will connect to the database and return the connection.
Data Structures: No data structure
Algorithms: No algorithms
*/
package bean;
import java.sql*;

public interface Provider
{
String DRIVER="com.mysql.jdbc.Driver"
String CONNECTION_URL="jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners"
}

public class ConnectionProvider
{
	private static Connection con=null;
	static
	{
		try
		{
			Class.forName(DRIVER);
			con=DriverManager.getConnection(CONNECTION_URL);
		}catch(Exception e){}
	}
	
	public static Connection getCon(){ return con;	}
}