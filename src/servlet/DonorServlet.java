package servlet;

import java.io.IOException;
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
		boolean emptyRequirements = false;
		boolean emptyBloodBanks = false;
		LocationDao locationDao = new LocationDao();
		ArrayList<Location> locations = new ArrayList<>();
		ArrayList<String> states = new ArrayList<>();
		locations = locationDao.getAllStatesAndCities();
		states = locationDao.getAllStates();
		request.setAttribute("locations", locations);
		request.setAttribute("states", states);
		
		request.setAttribute("userId", request.getParameter("userId"));
		
		ArrayList<Requirement> bloodBanks = new ArrayList<>();
		
		try {
			requirements = requirementDao.getRequirements(state, city, pinCode, bloodGroup);
		} catch (EmptyRequirementsException e) {
			emptyRequirements = true;
			try {
				bloodBanks = requirementDao.getAllBloodBanks(city);
			} catch (EmptyRequirementsException e1) {
				emptyBloodBanks = true;
				request.setAttribute("noBloodBanksStatus", true);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("donor.jsp");
				requestDispatcher.forward(request, response);
			}
			if(!emptyBloodBanks) {
				request.setAttribute("noRequirementsStatus", true);
				request.setAttribute("bloodBanks", bloodBanks);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("donor.jsp");
				requestDispatcher.forward(request, response);
				emptyRequirements = true;
			}
		}
		if(!emptyRequirements) {
			request.setAttribute("requirementsStatus", true);
			request.setAttribute("requirements", requirements);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("donor.jsp");
			requestDispatcher.forward(request, response);
		}
	}
}