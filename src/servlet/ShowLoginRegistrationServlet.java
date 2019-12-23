package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LocationDao;
import model.Location;

@WebServlet("/ShowLoginRegistration")
public class ShowLoginRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocationDao locationDao = new LocationDao();
		ArrayList<Location> locations = new ArrayList<>();
		ArrayList<String> states = new ArrayList<>();
		locations = locationDao.getAllLocations();
		states = locationDao.getAllStates();
		request.setAttribute("locations", locations);
		request.setAttribute("states", states);
		request.setAttribute("userExistsStatus", request.getAttribute("userExistsStatus"));
		request.setAttribute("userExistsMessage", request.getAttribute("userExistsMessage"));
		request.setAttribute("errorStatus", request.getAttribute("errorStatus"));
		request.setAttribute("errorMessage", request.getAttribute("errorMessage"));
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("login-register.jsp");
		requestDispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}