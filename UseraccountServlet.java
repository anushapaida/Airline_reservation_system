package com.user;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class UseraccountServlet
 */
@WebServlet("/UseraccountServlet")
public class UseraccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UseraccountServlet() {
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
		int CustId = Integer.parseInt(request.getParameter("CustId"));
		String FirName = request.getParameter("FirName");
		String LasName = request.getParameter("LasName");
		String dob = request.getParameter("dob");
		String Coun = request.getParameter("Coun");
		String StreAddr = request.getParameter("StreAddr");
		String City = request.getParameter("City");
		String Sta = request.getParameter("Sta");
		String Zip = request.getParameter("Zip");
		String Email = request.getParameter("Email");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager
					.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");

			CallableStatement myStmt = con
					.prepareCall("{call pr_user(?,?,?,?,?,?,?,?,?,?)}");
			myStmt.setInt(1, CustId);
			myStmt.setString(2, FirName);
			myStmt.setString(3, LasName);
			myStmt.setString(4, dob);
			myStmt.setString(5, Coun);
			myStmt.setString(6, StreAddr);
			myStmt.setString(7, City);
			myStmt.setString(8, Sta);
			myStmt.setString(9, Zip);
			myStmt.setString(10, Email);
			myStmt.execute();

			RequestDispatcher dispatcher = getServletContext()
					.getRequestDispatcher("/useraccount.jsp");
			dispatcher.forward(request, response);

		} catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
