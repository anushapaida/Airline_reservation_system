package bean;
import java.sql.*;
public class insertPassenger
{
	public static insertPassenger(Passenger p)
	{
		int status = 0;
		try
		{
			String passengerTable = "INSERT INTO Passenger"
									+ "(Customer_idCustomer, firstName, lastName, dob)"
									+ " VALUES (?,?,?,?)";
			Connection con = ConnectionProvider.getCon();
			PreparedStatement insertP = con.prepareStatement(passengerTable);
			insert.setString(1,p.getCustID);
			insertP.setString(2,p.getFirstName);
			insertP.setString(3,p.getLastName);
			insertP.setString(4,p.getDob);
			
			status=ps.executeUpdate();
		}catch(Exception e){}
		
		return status;
	}
}