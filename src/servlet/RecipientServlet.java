package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AvailableDao;
import dao.EmptyAvailableException;
import dao.LocationDao;
import model.Available;
import model.Location;

@WebServlet("/RecipientServlet")
public class RecipientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AvailableDao availableDao = new AvailableDao();
		ArrayList<Available> availables = new ArrayList<>();
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		int pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String bloodGroup = request.getParameter("bloodGroup");
		boolean empty = false;
		
		LocationDao locationDao = new LocationDao();
		ArrayList<Location> locations = new ArrayList<>();
		ArrayList<String> states = new ArrayList<>();
		locations = locationDao.getAllStatesAndCities();
		states = locationDao.getAllStates();
		request.setAttribute("locations", locations);
		request.setAttribute("states", states);
		
		request.setAttribute("userId", request.getParameter("userId"));
		
		try {
			availables = availableDao.getAllAvailable(state, city, pinCode, bloodGroup);
		} catch (EmptyAvailableException e) {
			request.setAttribute("emptyAvailablesStatus", true);
			request.setAttribute("available", new Available(state, city, pinCode, null, bloodGroup));
			request.setAttribute("contactNumber", request.getParameter("contactNumber"));
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("recipient.jsp");
			requestDispatcher.forward(request, response);
			empty = true;
		}
		if(!empty) {
			request.setAttribute("availablesStatus", true);
			request.setAttribute("availables", availables);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("recipient.jsp");
			requestDispatcher.forward(request, response);
		}
	}
}