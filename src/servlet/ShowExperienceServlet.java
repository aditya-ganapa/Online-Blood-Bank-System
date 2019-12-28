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

@WebServlet("/ShowExperience")
public class ShowExperienceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LocationDao locationDao = new LocationDao();
		ArrayList<Location> locations = new ArrayList<>();
		ArrayList<String> cities = new ArrayList<>();
		locations = locationDao.getAllLocations();
		cities = locationDao.getAllCities();
		request.setAttribute("locations", locations);
		request.setAttribute("cities", cities);
		
		if (request.getParameter("userId") == null) {
			request.setAttribute("userId", request.getAttribute("userId"));
		}
		else {
			request.setAttribute("userId", request.getParameter("userId"));
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("experience.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}