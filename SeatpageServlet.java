package com.seatpage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SeatpageServlet
 */
@WebServlet("/Seatpage")
public class SeatpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SeatpageServlet() {
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
		HttpSession session=request.getSession(false);
		String seatSelected = request.getParameter("seatSelected");
		int TripType = (Integer)session.getAttribute("SesTripType");
		seatSelected = seatSelected.substring(0, seatSelected.length() - 1);
		session.setAttribute("SesseatSelected",seatSelected);
		if(TripType == 2){
			response.sendRedirect("seatselectret.jsp");
			
		}else{
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/reviewpage.jsp");
		 	dispatcher.forward(request,response);}
	}

}
