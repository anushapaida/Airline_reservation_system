package com.editflight;

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
 * Servlet implementation class EditflightServlet
 */
@WebServlet("/Editflight")
public class EditflightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditflightServlet() {
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
		String airplaneName = request.getParameter("airplaneName");
		int firstSeat = Integer.parseInt(request.getParameter("firstSeat"));
		int businessSeat = Integer.parseInt(request.getParameter("businessSeat"));
		int economySeat = Integer.parseInt(request.getParameter("economySeat"));
		int idairplane = Integer.parseInt(request.getParameter("idairplane"));
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager
					.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");

			CallableStatement myStmt = con
					.prepareCall("{call pr_EditFlight(?,?,?,?,?)}");
			myStmt.setInt(1, idairplane);
			myStmt.setInt(2, firstSeat);
			myStmt.setInt(3, businessSeat);
			myStmt.setInt(4, economySeat);
			myStmt.setString(5, airplaneName);
			myStmt.execute();

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/flightlist.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
