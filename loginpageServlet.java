package com.loginpage;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class LoginpageServlet
 */
@WebServlet("/loginpage")
public class LoginpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginpageServlet() {
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
		PrintWriter pr = response.getWriter();
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		//pr.println(email);
		//pr.println(password);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://airlinedbinstance.cpvbq348bwqb.us-west-2.rds.amazonaws.com:3306/AirlineDB?user=anushapaida&password=makmliners");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM Account WHERE Account.email = '" + email + "' ");
			
			while (resultSet.next()){
				String pw = resultSet.getString(5);
				//pr.println(pw);
				//pr.println("here");
				if(password.equals(pw)){
					//pr.println("here");
					if(resultSet.getInt(3) == 1){
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminpage.jsp");
						dispatcher.forward(request, response);
					}
					else{
						RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/user.jsp?id=" + resultSet.getString(2));
						dispatcher.forward(request, response);
					}
				}
				else
				{
					RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/login.jsp?id=error");
					dispatcher.forward(request, response);
				}
			}
		}
		catch (Exception e) { // TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
