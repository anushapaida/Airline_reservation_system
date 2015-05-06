package com.seatret;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SeatselectretServlet
 */
@WebServlet("/Seatselectret")
public class SeatselectretServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeatselectretServlet() {
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
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		String seatSelectedret = request.getParameter("seatSelectedret");
		seatSelectedret = seatSelectedret.substring(0, seatSelectedret.length() - 1);
		//System.out.println(seatSelectedret);
		HttpSession session=request.getSession(false);
		session.setAttribute("SesseatSelectedret",seatSelectedret);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/reviewpage.jsp");
	 	dispatcher.forward(request,response);
	}

}
