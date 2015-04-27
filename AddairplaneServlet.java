package com.addairplane;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddairplaneServlet
 */
@WebServlet("/Addairplane")
public class AddairplaneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddairplaneServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String airplaneName = request.getParameter("airplaneName");
		String airportName = request.getParameter("airportName");
		int firstSeat = Integer.parseInt(request.getParameter("firstSeat"));
		int businessSeat = Integer.parseInt(request
				.getParameter("businessSeat"));
		int economySeat = Integer.parseInt(request.getParameter("economySeat"));
		int personalEn = Integer.parseInt(request.getParameter("personalEn"));
		int wifi = Integer.parseInt(request.getParameter("wifi"));
		int ac = Integer.parseInt(request.getParameter("ac"));
		int usb = Integer.parseInt(request.getParameter("usb"));

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager
					.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");

			CallableStatement myStmt = con
					.prepareCall("{call pr_NewAirplane(?,?,?,?,?,?,?,?,?)}");
			myStmt.setString(1, airportName);
			myStmt.setString(2, airplaneName);
			myStmt.setInt(3, firstSeat);
			myStmt.setInt(4, businessSeat);
			myStmt.setInt(5, economySeat);
			myStmt.setInt(6, personalEn);
			myStmt.setInt(7, wifi);
			myStmt.setInt(8, ac);
			myStmt.setInt(9, usb);
			myStmt.execute();

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/flightlist.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
