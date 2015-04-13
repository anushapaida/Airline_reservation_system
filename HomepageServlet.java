package com.homepage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HomepageServlet
 */
@WebServlet("/Homepage")
public class HomepageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomepageServlet() {
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
	    //response.setContentType("text/html");
		
		int FromAirport = Integer.parseInt(request.getParameter("fromairportList"));
		int ToAirport = Integer.parseInt(request.getParameter("toairportList"));
		String DepDate = request.getParameter("DepCal");
		String ArrDate = request.getParameter("RetCal");
		int AdultList = Integer.parseInt(request.getParameter("ListAdul"));
		int ChildList = Integer.parseInt(request.getParameter("ListCh"));
		int TripType = Integer.parseInt(request.getParameter("FlightTy"));
		int SeatType = Integer.parseInt(request.getParameter("CabinType"));
		
		int NumberOfPassengers = AdultList + ChildList;
		
				
		if (FromAirport == ToAirport)
        {
        	request.setAttribute("errorMessage", "Arrival and depature airports cannot be same.");
        }
        else
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("SesFromAirport",FromAirport);
   		 	session.setAttribute("SesToAirport",ToAirport);
   		 	session.setAttribute("SesDepDate",DepDate);
   		 	session.setAttribute("SesArrDate",ArrDate);
   		 	session.setAttribute("SesNumberOfPassengers",NumberOfPassengers);
   		 	session.setAttribute("SesTripType",TripType);
   		 	session.setAttribute("SesSeatType",SeatType);
        	request.getRequestDispatcher("/searchresults.jsp").forward(request, response);
   		    //response.sendRedirect("/WebContent/searchresults.jsp");
        }
		

		
	}
	}


