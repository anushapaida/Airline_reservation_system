package com.register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String country = request.getParameter("country");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String DateofBirth = request.getParameter("DateofBirth");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String State = request.getParameter("State");
		String postalcode = request.getParameter("postalcode");
		String primaryemail = request.getParameter("primaryemail");
		String password = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = connection.createStatement();
			String query = "INSERT INTO Customer (`firstName`,`lastName`,`dob`,`country`,`streetAddress`,`city`,`state`,`zipcode`,`email`) Values('" + firstname + "','" + lastname + "', STR_TO_DATE('" + DateofBirth + "','%m/%d/%Y'),'" + country + "','" + address + "','" + city + "','" + State + "','" + postalcode + "','" + primaryemail + "' ) ";
			statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
			ResultSet keys = statement.getGeneratedKeys();
			int lastKey = 0;
			while (keys.next()) {
			      lastKey = keys.getInt(1);
			    }
			
			//System.out.println("Last Key: " + lastKey);
			Statement statement1 = connection.createStatement();
			statement1.executeUpdate("INSERT INTO Account (`customer_idCustomer`,`email`,`password`,`admin`) Values('" + lastKey + "','" + primaryemail + "','" + password + "', 0) ");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
