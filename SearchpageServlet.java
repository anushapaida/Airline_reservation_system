package com.searchpage;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SearchpageServlet
 */
@WebServlet("/Searchpage")
public class SearchpageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchpageServlet() {
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
		HttpSession session = request.getSession(true);
		int outboundFlight = Integer.parseInt(request.getParameter("outboundselect"));

		int TripType = (Integer)session.getAttribute("SesTripType");
		
		session = request.getSession();
    	session.setAttribute("SesoutboundFlight",outboundFlight);
    	if(TripType == 2){
    		int returnFlight = Integer.parseInt(request.getParameter("returnselect"));
    		session.setAttribute("SesreturnFlight",returnFlight);	
    	}
		
		
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/seatselect.jsp?out=outboundFlight");
   		 	dispatcher.forward(request,response);
		
	}

}
