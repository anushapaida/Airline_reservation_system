package com.addcard;

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
 * Servlet implementation class AddcardServlet
 */
@WebServlet("/Addcard")
public class AddcardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddcardServlet() {
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
		
		String cardType = request.getParameter("cardType");
		String cardnumber = request.getParameter("cardnumber");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		String cvv = request.getParameter("cvv");
		String nameoncard = request.getParameter("nameoncard");	
		int custid = Integer.parseInt(request.getParameter("custid"));
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = connection.createStatement();
			statement.executeUpdate("INSERT INTO PaymentOption (`customer_customerID`,`type`,`cardNum`,`ccv`,`expMonth`,`expYear`,`cardName`) Values('" + custid + "','" + cardType + "','" + cardnumber + "','" + cvv + "','" + month + "','" + year + "','" + nameoncard + "' ) ");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addcard.jsp?message=success&id="+custid);
			dispatcher.forward(request, response);
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
