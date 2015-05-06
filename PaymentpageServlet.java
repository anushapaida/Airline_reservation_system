package com.payment;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PaymentpageServlet
 */
@WebServlet("/Paymentpage")
public class PaymentpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentpageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String dob = request.getParameter("dob");
		String Country = request.getParameter("Country");
		String stAddress = request.getParameter("stAddress");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String email = request.getParameter("email");
		
		String cardtype = request.getParameter("cardtype");
		String cardnumber = request.getParameter("cardnumber");
		String CMonth = request.getParameter("CMonth");
		String Cyear = request.getParameter("Cyear");
		String cvv = request.getParameter("cvv");
		String nameoncard = request.getParameter("nameoncard");
		HttpSession session=request.getSession(false);
		int NumberOfPassengers = (Integer)session.getAttribute("SesNumberOfPassengers");
		//int NumberOfPassengers = 2;
		int TripType = (Integer)session.getAttribute("SesTripType");
		int outboundFlight = (Integer)session.getAttribute("SesoutboundFlight");
		String seatSelected = (String)session.getAttribute("SesseatSelected");
		
		
		ArrayList<Passenger> pass = new ArrayList<Passenger>();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = connection.createStatement();
			String query = "INSERT INTO Customer (`firstName`,`lastName`,`dob`,`country`,`streetAddress`,`city`,`state`,`zipcode`,`email`) Values('" + firstname + "','" + lastname + "', STR_TO_DATE('" + dob + "','%m/%d/%Y'),'" + Country + "','" + stAddress + "','" + city + "','" + state + "','" + zip + "','" + email + "' ) ";
			statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
			ResultSet keys = statement.getGeneratedKeys();
			int custid = 0;
			while (keys.next()) {
			      custid = keys.getInt(1);
			    }
			
			Statement statement4 = connection.createStatement();
			String query4 = "INSERT INTO Reservation (`customer_idCustomer`,`flight_idFlight`,`seat_idSeat`,`email`) Values('" + custid + "','" + outboundFlight + "','" + seatSelected + "',,'" + email + "') ";
			statement4.executeUpdate(query4, Statement.RETURN_GENERATED_KEYS);
			ResultSet keys1 = statement4.getGeneratedKeys();
			int reservationid = 0;
			while (keys1.next()) {
				reservationid = keys1.getInt(1);
			    }
			
			
			Statement statement3 = connection.createStatement();
			statement3.executeUpdate("INSERT INTO Passenger (`customer_customerID`,`firstName`,`lastName`,`Month`,`Day`,`Year`,`idReservation`) Values('" + custid + "','" + firstname + "','" + lastname + "', MONTH(STR_TO_DATE('" + dob + "','%m/%d/%Y')), DAY(STR_TO_DATE('" + dob + "','%m/%d/%Y')), YEAR(STR_TO_DATE('" + dob + "','%m/%d/%Y')) , '" + reservationid +"') ");

			
			
		
		for(int i=1; i<=NumberOfPassengers-1; i++)
		{
			
			String fname = request.getParameter("firstname" + i);
			String lname = request.getParameter("lastname" + i);
			String month = request.getParameter("ListMonth" + i);
			String day = request.getParameter("ListDay" + i);
			String year = request.getParameter("ListYear" + i);
			
			Statement statement1 = connection.createStatement();
			statement1.executeUpdate("INSERT INTO Passenger (`customer_customerID`,`firstName`,`lastName`,`Month`,`Day`,`Year`,`idReservation`) Values('" + custid + "','" + fname + "','" + lname + "', '" + month + "','" + day + "','" + year + "','" + reservationid +"') ");

		}
		
		
		Statement statement2 = connection.createStatement();
		statement2.executeUpdate("INSERT INTO PaymentOption (`customer_customerID`,`type`,`cardNum`,`ccv`,`expMonth`,`expYear`,`cardName`) Values('" + custid + "','" + cardtype + "','" + cardnumber + "','" + cvv + "','" + CMonth + "','" + Cyear + "','" + nameoncard + "' ) ");
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/seatconfirmation.jsp");
	 	dispatcher.forward(request,response);
		
		
		
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
}
}

class Passenger
{
	public Passenger(String firstName, String lastName, String ListMonth, String ListDay, String ListYear ) {
		this.lastName = lastName;
	    this.firstName= firstName;
	    this.ListMonth = ListMonth;
	    this.ListDay = ListDay;
	    this.ListYear = ListYear;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getlastName() {
		return lastName;
	}
	public void setlastName(String lastName) {
		this.lastName = lastName;
	}
	public String getListMonth() {
		return ListMonth;
	}
	public void setListMonth(String ListMonth) {
		this.ListMonth = ListMonth;
	}
	public String getListDay() {
		return ListDay;
	}
	public void setListDay(String ListDay) {
		this.ListDay = ListDay;
	}
	public String getListYear() {
		return ListYear;
	}
	public void setListYear(String ListYear) {
		this.ListYear = ListYear;
	}
	private String firstName;
    private String lastName;
    private String ListMonth;
    private String ListDay;
    private String ListYear;

}







