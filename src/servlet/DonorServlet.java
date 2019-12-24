package servlet;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmptyRequirementsException;
import dao.LocationDao;
import dao.RequirementDao;
import model.Location;
import model.Requirement;

@WebServlet("/Donor")
public class DonorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequirementDao requirementDao = new RequirementDao();
		ArrayList<Requirement> requirements = new ArrayList<>();
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		int pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String bloodGroup = request.getParameter("bloodGroup");
		boolean empty = false;
		try {
			requirements = requirementDao.getAllRequirements(state, city, pinCode, bloodGroup);
		} catch (EmptyRequirementsException | ParseException e) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("no-requirements.jsp");
			requestDispatcher.forward(request, response);
			empty = true;
		}
		if(!empty) {
			request.setAttribute("requirementsStatus", true);
			request.setAttribute("requirements", requirements);
			
			LocationDao locationDao = new LocationDao();
			ArrayList<Location> locations = new ArrayList<>();
			ArrayList<String> states = new ArrayList<>();
			locations = locationDao.getAllStatesAndCities();
			states = locationDao.getAllStates();
			request.setAttribute("locations", locations);
			request.setAttribute("states", states);		
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("donor.jsp");
			requestDispatcher.forward(request, response);
		}
	}
}