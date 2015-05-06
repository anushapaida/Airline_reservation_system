package com.changepassword;

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
 * Servlet implementation class ChangepasswordServlet
 */
@WebServlet("/Changepassword")
public class ChangepasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangepasswordServlet() {
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
		int custid = Integer.parseInt(request.getParameter("custid"));
		String oldpassword = request.getParameter("oldpassword");
		String newpassword = request.getParameter("newpassword");
		String conpassword = request.getParameter("conpassword");
		if(!newpassword.equals(conpassword)){
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/changepassword.jsp?message=error1&id="+custid);
			dispatcher.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM Account WHERE Account.customer_idCustomer = '" + custid + "' ");
			while (resultSet.next()){
				String pw = resultSet.getString(5);
				if(oldpassword.equals(pw)){
					Statement statement1 = connection.createStatement();
					statement1.executeUpdate("Update Account SET Account.Password = '" + newpassword + "' WHERE  Account.customer_idCustomer = '" + custid + "' ");
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/changepassword.jsp?message=success&id="+custid);
					dispatcher.forward(request, response);
				}
				else{
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/changepassword.jsp?message=error2&id="+custid);
					dispatcher.forward(request, response);
				}
			}
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
